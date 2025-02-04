import 'package:bloc/bloc.dart';
import 'package:book_app/core/error/failure.dart';
import 'package:book_app/feature/home/domain/use_case/fetch_feature_book_use_case.dart';
import 'package:book_app/feature/home/presentation/control/fetch_feature_book_cubit/fetch_feature_book_use_state.dart';
import 'package:dartz/dartz.dart';

import '../../../data/model/book_model/item.dart';


class FetchFeatureBookUseCubit extends Cubit<FetchFeatureBookState> {
  FetchFeatureBookUseCase featureBookUseCase;

  FetchFeatureBookUseCubit(this.featureBookUseCase) : super(FetchFeatureBookInitial());

 Future<void> fetchFeatureBook()async{
   Either<Failure,List<Item>> response=await featureBookUseCase();
  response.fold((failure) {
    emit(FetchFeatureBookFailure(msg: failure.msg));
  },(books) {
    emit(FetchFeatureBookSucceed(bookList: books));
  },);
  }

}
