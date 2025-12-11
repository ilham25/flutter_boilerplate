import 'package:flutter_boilerplate/domain/cubit/safe_cubit.dart';
import 'package:flutter_boilerplate/domain/models/templates/search_filter/search_filter_product_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'search_filter_bloc_state.dart';
part 'search_filter_bloc.freezed.dart';

class SearchFilterBloc extends SafeCubit<SearchFilterBlocState> {
  SearchFilterBloc() : super(SearchFilterBlocState.initial());

  final List<SearchFilterProductModel> _items = [
    SearchFilterProductModel(id: 1, title: "Amazing Shoes", price: 12),
    SearchFilterProductModel(id: 2, title: "Faboulous Shoes", price: 15),
    SearchFilterProductModel(id: 3, title: "Fantastic Shoes", price: 15),
    SearchFilterProductModel(id: 4, title: "Spectacular Shoes", price: 12),
    SearchFilterProductModel(id: 5, title: "Stunning Shoes", price: 12),
    SearchFilterProductModel(id: 6, title: "Wonderful Shoes", price: 15),
  ];

  Future getList({String query = ''}) async {
    emit(const SearchFilterBlocState.loading());
    await Future.delayed(const Duration(milliseconds: 500));
    late List<SearchFilterProductModel> items;
    if (query.isEmpty) {
      items = _items;
    } else {
      items = _items
          .where(
            (element) =>
                element.title.toLowerCase().contains(query.toLowerCase()),
          )
          .toList();
    }

    emit(SearchFilterBlocState.loaded(items: items, query: query));
  }

  void search(String query) {
    getList(query: query);
  }

  void clearQuery() {
    search('');
  }
}
