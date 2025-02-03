import 'package:book_app/core/error/failure.dart';
import 'package:book_app/feature/home/data/model/book_model/item.dart';
import 'package:dartz/dartz.dart';
abstract class HomeRepo{
Future<Either<Failure,List<Item>>>  fetchSellerBooks();
Future<Either<Failure,List<Item>>>  fetchFeatureBooks( {required String endPoint});

}