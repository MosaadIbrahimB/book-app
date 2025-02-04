import 'package:bloc/bloc.dart';
import 'package:book_app/app/material_app.dart';
import 'package:book_app/core/depend_ingect/get_it.dart';
import 'package:book_app/my_bloc_observe.dart';
import 'package:flutter/material.dart';

void main() {
Bloc.observer=MyBlocObserver();
  setUp();
  runApp(const MyApp());
}
