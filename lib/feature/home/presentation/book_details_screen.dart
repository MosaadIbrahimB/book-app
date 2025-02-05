import 'package:book_app/feature/home/data/model/book_model/item.dart';
import 'package:book_app/feature/home/presentation/widget/body_book_details_widget.dart';
import 'package:flutter/material.dart';

class BookDetailsScreen extends StatelessWidget {
  final Item?item;

  const BookDetailsScreen({super.key, this.item});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: BodyBookDetailsWidget(),
        ),
      ),
    );
  }
}



