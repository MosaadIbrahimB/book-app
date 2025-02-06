import 'package:book_app/core/utils/api_service.dart';
import 'package:book_app/feature/home/data/home_repo_impl/home_repo_impl.dart';
import 'package:book_app/feature/home/domain/home_repo/home_repo.dart';
import 'package:book_app/feature/home/domain/use_case/fetch_feature_book_use_case.dart';
import 'package:book_app/feature/home/domain/use_case/fetch_seller_books_use_case.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

var getIt = GetIt.instance;

void setUp(){
  getIt.registerLazySingleton<Dio>(() => Dio(),);
  getIt.registerLazySingleton<ApiService>(() => ApiService(getIt<Dio>()));
  getIt.registerLazySingleton<HomeRepo>(() => HomeRepoImpl(getIt<ApiService>()));
  getIt.registerLazySingleton<FetchFeatureBookUseCase>(() =>FetchFeatureBookUseCase(getIt<HomeRepo>()) );
  getIt.registerLazySingleton<FetchSellerBooksUseCase>(() =>FetchSellerBooksUseCase(getIt<HomeRepo>()) );
}