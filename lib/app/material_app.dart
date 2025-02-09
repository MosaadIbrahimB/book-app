import 'package:book_app/config/route/app_go_router.dart';
import 'package:book_app/core/depend_ingect/get_it.dart';
import 'package:book_app/core/utils/app_theme.dart';
import 'package:book_app/feature/home/domain/use_case/fetch_feature_book_use_case.dart';
import 'package:book_app/feature/home/domain/use_case/fetch_seller_books_use_case.dart';
import 'package:book_app/feature/home/presentation/control/fetch_feature_book_cubit/fetch_feature_book_use_cubit.dart';
import 'package:book_app/feature/home/presentation/control/fetch_seller_books_cubit/fetch_seller_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../config/route/app_route.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      child: MultiBlocProvider(
        providers: [
          BlocProvider(
              create: (context) =>
                  FetchFeatureBookCubit(getIt<FetchFeatureBookUseCase>())
                    ..getFeatureBook()),
          BlocProvider(
              create: (context) =>
                  FetchSellerBooksCubit(getIt<FetchSellerBooksUseCase>())
                    ..getSellerBook()),
        ],
        // child: MaterialApp(
        //   darkTheme: AppTheme.darkTheme,
        //   themeMode: ThemeMode.dark,
        //   debugShowCheckedModeBanner: false,
        //   // initialRoute: AppRoute.homeScreen,
        //   onGenerateRoute: AppRoute.onGenerateRoute,
        // // home: BookDetailsScreen(),
        // ),
        child: MaterialApp.router(
          darkTheme: AppTheme.darkTheme,
          themeMode: ThemeMode.dark,
          debugShowCheckedModeBanner: false,
          routerConfig: AppGoRouter.router,
        ),
      ),
    );
  }
}
