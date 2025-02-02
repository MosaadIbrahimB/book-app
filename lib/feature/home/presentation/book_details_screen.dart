import 'package:book_app/feature/home/presentation/widget/body_book_details_widget.dart';
import 'package:flutter/material.dart';

class BookDetailsScreen extends StatelessWidget {
  const BookDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: const Scaffold(
        body: Padding(
          padding: EdgeInsets.all(8.0),
          child: BodyBookDetailsWidget(),
        ),
      ),
    );
  }
}



