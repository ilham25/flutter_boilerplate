part of 'search_filter_bloc.dart';

// Created on 09 13:25 by USER

@freezed
class SearchFilterBlocState with _$SearchFilterBlocState {
  const factory SearchFilterBlocState.initial() =
      _SearchFilterBlocStateInitialState;
  const factory SearchFilterBlocState.loading() =
      _GetSearchFilterBlocStateLoadingState;
  const factory SearchFilterBlocState.error(String message) =
      _GetSearchFilterBlocStateErrorState;
  const factory SearchFilterBlocState.loaded({
    required List<SearchFilterProductModel> items,
    String? query,
  }) = _GetSearchFilterBlocStateLoadedState;
}
