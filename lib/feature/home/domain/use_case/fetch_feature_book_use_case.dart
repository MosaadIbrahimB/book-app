import 'package:book_app/core/error/failure.dart';
import 'package:book_app/feature/home/data/model/book_model/item.dart';
import 'package:book_app/feature/home/domain/home_repo.dart';
import 'package:dartz/dartz.dart';

class FetchFeatureBookUseCase {
  HomeRepo homeRepo;

  FetchFeatureBookUseCase(this.homeRepo);

  Future<Either<Failure, List<Item>>> call() async {
    return await homeRepo.fetchFeatureBooks();
  }
}
