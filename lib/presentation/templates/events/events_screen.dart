import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_boilerplate/config/app_config.dart';
import 'package:flutter_boilerplate/core/widgets/app_bar/app_bar.dart';
import 'package:flutter_boilerplate/core/widgets/button/button.dart';
import 'package:flutter_boilerplate/core/widgets/button/icon_button.dart';
import 'package:flutter_boilerplate/core/widgets/content/card.dart';
import 'package:flutter_boilerplate/core/widgets/content/list_title.dart';
import 'package:flutter_boilerplate/core/widgets/content/tag.dart';
import 'package:flutter_boilerplate/core/widgets/toast/toast.dart';
import 'package:flutter_boilerplate/gen/assets.gen.dart';
import 'package:flutter_boilerplate/theme/theme.dart';
import 'package:flutter_boilerplate/utils/date/date_format_utils.dart';

@RoutePage()
class EventsScreen extends StatelessWidget {
  const EventsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return EventsBody();
  }
}

class EventsBody extends StatefulWidget {
  const EventsBody({super.key});

  @override
  State<EventsBody> createState() => _EventsBodyState();
}

class _EventsBodyState extends State<EventsBody> {
  final List<String> _categories = [
    "All Events",
    "Concerts",
    "Technology",
    "Sports",
    "Tours",
    "Plays",
  ];

  List<String> selectedCategories = ["Concerts"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UIKitAppBar(
        leading: UIKitIconButton.secondary(
          Assets.icons.search,
          decoration: UIKitIconButtonDecoration(
            iconColor: MyTheme.color.palette.dark.darkest,
          ),
          onTap: () {
            //
          },
        ),
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: .stretch,
          children: [
            SizedBox(
              height: AppSetting.setHeight(56),
              child: ListView.separated(
                shrinkWrap: true,
                scrollDirection: .horizontal,
                padding: .symmetric(
                  horizontal: AppSetting.setWidth(MyTheme.defaultPadding),
                  vertical: AppSetting.setHeight(MyTheme.defaultPadding),
                ),
                separatorBuilder: (context, index) => Space.w(8),
                itemCount: _categories.length,
                itemBuilder: (context, index) {
                  final item = _categories.elementAt(index);
                  final focused = selectedCategories.contains(item);

                  return UIKitTag(
                    text: item,
                    leftIcon: Assets.icons.placeholder,
                    focused: focused,
                    onTap: () {
                      setState(() {
                        if (focused) {
                          selectedCategories.remove(item);
                        } else {
                          selectedCategories.add(item);
                        }
                      });
                    },
                  );
                },
              ),
            ),
            Expanded(
              child: ListView(
                padding: .symmetric(vertical: AppSetting.setHeight(24)),
                children: [
                  UIKitListTitle(
                    title: "Near you",
                    action: UIKitButton.tertiary(
                      title: "See more",
                      padding: .symmetric(
                        horizontal: AppSetting.setWidth(16),
                        vertical: AppSetting.setHeight(8),
                      ),
                      onTap: () {},
                    ),
                  ),
                  SizedBox(
                    height: AppSetting.setHeight(250),
                    child: ListView.separated(
                      padding: .symmetric(
                        horizontal: AppSetting.setWidth(MyTheme.defaultPadding),
                      ),
                      separatorBuilder: (context, index) => Space.w(12),
                      itemCount: nearMeEvents.length,
                      shrinkWrap: true,
                      scrollDirection: .horizontal,
                      itemBuilder: (context, index) {
                        final item = nearMeEvents.elementAt(index);
                        return UIKitCard(
                          title: item.title,
                          subtitle: item.location,
                          image:
                              "https://picsum.photos/200/300?random=${item.id}",
                          width: AppSetting.setWidth(250),
                          tag: UIKitTag(
                            text: formatMonthDate.format(item.date),
                            focused: true,
                          ),
                          action: UIKitButton.secondary(
                            title: "Buy tickets",
                            onTap: () {
                              UIKitToast.info(
                                title: "Ticket Bought!",
                                description:
                                    "You have successfully bought a ticket for ${item.title}",
                              );
                            },
                          ),
                        );
                      },
                    ),
                  ),
                  Space.h(40),
                  UIKitListTitle(title: "Your events"),
                  Space.h(8),
                  ListView.separated(
                    padding: .symmetric(
                      horizontal: AppSetting.setWidth(MyTheme.defaultPadding),
                    ),
                    separatorBuilder: (context, index) => Space.h(12),
                    itemCount: myEvents.length,
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemBuilder: (context, index) {
                      final item = myEvents.elementAt(index);
                      return UIKitCard.horizontal(
                        title: item.title,
                        subtitle: item.location,
                        image:
                            "https://picsum.photos/200/300?random=${item.id}",
                        onTap: () {
                          //
                        },
                      );
                    },
                  ),
                  Space.h(40),
                  UIKitListTitle(
                    title: "Selling out",
                    action: UIKitButton.tertiary(
                      title: "See more",
                      padding: .symmetric(
                        horizontal: AppSetting.setWidth(16),
                        vertical: AppSetting.setHeight(8),
                      ),
                      onTap: () {},
                    ),
                  ),
                  SizedBox(
                    height: AppSetting.setHeight(250),
                    child: ListView.separated(
                      padding: .symmetric(
                        horizontal: AppSetting.setWidth(MyTheme.defaultPadding),
                      ),
                      separatorBuilder: (context, index) => Space.w(12),
                      itemCount: sellingOutEvents.length,
                      shrinkWrap: true,
                      scrollDirection: .horizontal,
                      itemBuilder: (context, index) {
                        final item = sellingOutEvents.elementAt(index);
                        return UIKitCard(
                          title: item.title,
                          subtitle: item.location,
                          image:
                              "https://picsum.photos/200/300?random=${item.id}",
                          width: AppSetting.setWidth(250),
                          tag: UIKitTag(
                            text: formatMonthDate.format(item.date),
                            focused: true,
                          ),
                          action: UIKitButton.secondary(
                            title: "Buy tickets",

                            onTap: () {
                              UIKitToast.info(
                                title: "Ticket Bought!",
                                description:
                                    "You have successfully bought a ticket for ${item.title}",
                              );
                            },
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _EventModel {
  final int id;
  final String title;
  final String location;
  final DateTime date;

  _EventModel({
    required this.title,
    required this.location,
    required this.id,
    required this.date,
  });
}

final List<_EventModel> nearMeEvents = [
  _EventModel(
    id: 1,
    title: "Maroon 5",
    location: "Recife, Brazil",
    date: DateTime.now().add(Duration(days: 1)),
  ),
  _EventModel(
    id: 2,
    title: "Alicia Keys",
    location: "Olinda, Brazil",
    date: DateTime.now().add(Duration(days: 2)),
  ),
  _EventModel(
    id: 3,
    title: "One Direction",
    location: "Paris, France",
    date: DateTime.now().add(Duration(days: 3)),
  ),
  _EventModel(
    id: 4,
    title: "Metallica",
    location: "NYC, USA",
    date: DateTime.now().add(Duration(days: 4)),
  ),
];
final List<_EventModel> myEvents = [
  _EventModel(
    id: 4,
    title: "Alicia Keys",
    location: "Olinda, Brazil",
    date: DateTime.now().add(Duration(days: 4)),
  ),
  _EventModel(
    id: 5,
    title: "Michael Jackson",
    location: "Recife, Brazil",
    date: DateTime.now().add(Duration(days: 5)),
  ),
];
final List<_EventModel> sellingOutEvents = [
  _EventModel(
    id: 6,
    title: "Maroon 5",
    location: "Recife, Brazil",
    date: DateTime.now().add(Duration(days: 6)),
  ),
  _EventModel(
    id: 7,
    title: "Alicia Keys",
    location: "Olinda, Brazil",
    date: DateTime.now().add(Duration(days: 7)),
  ),
  _EventModel(
    id: 8,
    title: "One Direction",
    location: "Paris, France",
    date: DateTime.now().add(Duration(days: 8)),
  ),
  _EventModel(
    id: 9,
    title: "Metallica",
    location: "NYC, USA",
    date: DateTime.now().add(Duration(days: 9)),
  ),
];
