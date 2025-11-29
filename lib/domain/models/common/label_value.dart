import 'package:freezed_annotation/freezed_annotation.dart';

part 'label_value.freezed.dart';

@freezed
abstract class LabelValue<T> with _$LabelValue<T> {
  const factory LabelValue({required String label, required T value}) =
      _LabelValue<T>;
}
