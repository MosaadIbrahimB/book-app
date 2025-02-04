
import 'package:book_app/feature/home/data/model/book_model/item.dart';

 class FetchSellerBooksState {}

 class FetchSellerBooksInitial extends FetchSellerBooksState {}
 class FetchSellerBooksLoading extends FetchSellerBooksState {}
 class FetchSellerBooksFailure extends FetchSellerBooksState {
  String msg;

  FetchSellerBooksFailure({required this.msg});
}
 class FetchSellerBooksSucceed extends FetchSellerBooksState {
  List<Item>bookList;
  FetchSellerBooksSucceed({required this.bookList});
}
