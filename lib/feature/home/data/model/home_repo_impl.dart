import 'package:book_app/core/error/failure.dart';
import 'package:book_app/core/utils/api_service.dart';
import 'package:book_app/feature/home/data/model/book_model/book_model.dart';
import 'package:book_app/feature/home/data/model/book_model/item.dart';
import 'package:book_app/feature/home/domain/home_repo.dart';
import 'package:dartz/dartz.dart';

class HomeRepoImpl extends HomeRepo {
  ApiService apiService;

  HomeRepoImpl(this.apiService);

  @override
  Future<Either<Failure, List<Item>>> fetchFeatureBooks(
      {required String endPoint}) async {
    try {
      Map<String, dynamic> response = await apiService.get(endPoint: endPoint);
      BookModel bookModel = BookModel.fromJson(response);
      List<Item> listBook = bookModel.items ?? [];

      return Right(listBook);
    } catch (e) {
      return left(ServerFailure(msg: e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<Item>>> fetchSellerBooks() {
    // TODO: implement fetchSellerBooks
    throw UnimplementedError();
  }
}
