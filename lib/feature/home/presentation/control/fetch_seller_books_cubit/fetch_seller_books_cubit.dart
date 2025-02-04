import 'package:bloc/bloc.dart';
import 'package:book_app/core/error/failure.dart';
import 'package:book_app/feature/home/data/model/book_model/item.dart';
import 'package:book_app/feature/home/domain/use_case/fetch_seller_books_use_case.dart';
import 'package:book_app/feature/home/presentation/control/fetch_seller_books_cubit/fetch_seller_books_state.dart';
import 'package:dartz/dartz.dart';

class FetchSellerBooksCubit extends Cubit<FetchSellerBooksState> {
  FetchSellerBooksUseCase fetchSellerBooksUseCase;

  FetchSellerBooksCubit(this.fetchSellerBooksUseCase)
      : super(FetchSellerBooksInitial());

  Future<void> getSellerBook() async {
    Either<Failure, List<Item>> response = await fetchSellerBooksUseCase();

    response.fold(
      (failure) => emit(FetchSellerBooksFailure(msg: failure.msg)),
      (books) => emit(FetchSellerBooksSucceed(bookList: books)),
    );
  }
}
