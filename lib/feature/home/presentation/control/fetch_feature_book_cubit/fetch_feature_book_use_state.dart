
import 'package:book_app/feature/home/data/model/book_model/item.dart';

sealed class FetchFeatureBookState {}

final class FetchFeatureBookInitial extends FetchFeatureBookState {}
final class FetchFeatureBookLoading extends FetchFeatureBookState {}
final class FetchFeatureBookFailure extends FetchFeatureBookState {
  String msg;

  FetchFeatureBookFailure({required this.msg});
}
final class FetchFeatureBookSucceed extends FetchFeatureBookState {
  List<Item>bookList;
  FetchFeatureBookSucceed({required this.bookList});
}

final class FetchLikeBookSucceed extends FetchFeatureBookState {
  List<Item>bookList;
  FetchLikeBookSucceed({required this.bookList});
}
