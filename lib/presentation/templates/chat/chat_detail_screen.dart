import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_boilerplate/config/app_config.dart';
import 'package:flutter_boilerplate/core/widgets/app_bar/app_bar.dart';
import 'package:flutter_boilerplate/core/widgets/avatar/avatar.dart';
import 'package:flutter_boilerplate/core/widgets/button/button.dart';
import 'package:flutter_boilerplate/core/widgets/chat/message_bubble.dart';
import 'package:flutter_boilerplate/core/widgets/chat/message_input.dart';
import 'package:flutter_boilerplate/core/widgets/dialog/dialog.dart';
import 'package:flutter_boilerplate/gen/assets.gen.dart';
import 'package:flutter_boilerplate/presentation/templates/chat/chat_list_screen.dart';
import 'package:flutter_boilerplate/theme/theme.dart';

@RoutePage()
class ChatDetailScreen extends StatelessWidget {
  final ChatListModel detail;

  const ChatDetailScreen({super.key, required this.detail});

  @override
  Widget build(BuildContext context) {
    return ChatDetailBody(detail: detail);
  }
}

class ChatDetailBody extends StatefulWidget {
  final ChatListModel detail;

  const ChatDetailBody({super.key, required this.detail});

  @override
  State<ChatDetailBody> createState() => _ChatDetailBodyState();
}

class _ChatDetailBodyState extends State<ChatDetailBody> {
  final String user = "Lucas";
  final TextEditingController _controller = TextEditingController();
  final ScrollController _scrollController = ScrollController();

  late List<ChatMessageModel> messages;
  final FocusNode _focusNode = FocusNode();

  @override
  void initState() {
    super.initState();

    messages = [
      ChatMessageModel(name: widget.detail.name, message: "Hey $user!"),
      ChatMessageModel(
        name: widget.detail.name,
        message: "How's your project going?",
      ),
      ChatMessageModel(name: user, message: "Hi ${widget.detail.name}!"),
      ChatMessageModel(
        name: user,
        message: "It's going well. Thanks for asking!",
      ),
      ChatMessageModel(
        name: widget.detail.name,
        message: "No worries. Let me know if you need any help 😉",
      ),
    ];
  }

  void _onSend() {
    if (_controller.text.isEmpty) return;

    setState(() {
      messages.add(ChatMessageModel(name: user, message: _controller.text));
    });
    _controller.clear();

    Future.delayed(Duration(milliseconds: 100), () {
      _focusNode.requestFocus();
      _scrollController.animateTo(
        _scrollController.position.maxScrollExtent,
        curve: Curves.easeOut,
        duration: const Duration(milliseconds: 300),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UIKitAppBar(title: widget.detail.name, actions: [UIKitAvatar()]),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: .stretch,
          children: [
            Expanded(
              child: ListView.separated(
                controller: _scrollController,
                separatorBuilder: (context, index) => Space.h(10),
                padding: EdgeInsets.symmetric(
                  horizontal: AppSetting.setWidth(8),
                  vertical: AppSetting.setHeight(16),
                ),
                itemCount: messages.length,
                itemBuilder: (context, index) {
                  final item = messages.elementAt(index);

                  bool tip = true;
                  String name = item.name;

                  if (index > 0) {
                    tip = item.name == messages.elementAt(index - 1).name;
                    name = !tip ? item.name : "";
                  }

                  if (item.name != user) {
                    return Align(
                      alignment: .centerLeft,
                      child: Padding(
                        padding: .only(
                          right: AppSetting.setWidth(
                            AppSetting.deviceWidth * 0.2,
                          ),
                        ),
                        child: UIKitMessageBubble.received(
                          message: item.message,
                          name: name,
                          tip: tip,
                        ),
                      ),
                    );
                  }

                  return Align(
                    alignment: .centerRight,
                    child: Padding(
                      padding: .only(
                        left: AppSetting.setWidth(AppSetting.deviceWidth * 0.2),
                      ),
                      child: UIKitMessageBubble(
                        message: item.message,
                        name: name,
                        tip: tip,
                      ),
                    ),
                  );
                },
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(
                horizontal: AppSetting.setWidth(MyTheme.defaultPadding),
                vertical: AppSetting.setHeight(MyTheme.defaultPadding),
              ),
              decoration: BoxDecoration(color: MyTheme.color.white),
              child: UIKitMessageInput(
                controller: _controller,
                onSend: _onSend,
                autofocus: true,
                focusNode: _focusNode,
                onShowMore: () {
                  UIKitDialog.show(
                    title: "Show More",
                    description: "More action from message input",
                    actions: [
                      UIKitButton(
                        title: "Camera",
                        leftIcon: Assets.icons.camera,
                        onTap: () {},
                      ),
                      UIKitButton.secondary(
                        title: "Gallery",
                        leftIcon: Assets.icons.image,
                        onTap: () {},
                      ),
                      UIKitButton.secondary(
                        title: "Document",
                        leftIcon: Assets.icons.inbox,
                        onTap: () {},
                      ),
                    ],
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ChatMessageModel {
  final String name;
  final String message;

  ChatMessageModel({required this.name, required this.message});
}
