import 'package:book_app/feature/home/presentation/widget/home_body_widget.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Scaffold(
        body: HomeBodyWidget(),
        // bottomNavigationBar: BottomWidget()
        
      ),
    );
  }
}















