import 'package:flutter/material.dart';
class FailureWidget extends StatelessWidget {
  final String msg;
  const FailureWidget({
    super.key, required this.msg,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Text(msg,
            style: Theme.of(context).textTheme.titleMedium));
  }
}
