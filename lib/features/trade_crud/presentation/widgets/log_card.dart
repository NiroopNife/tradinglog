import 'package:flutter/material.dart';

class LogCard extends StatelessWidget {
  final String title;

  const LogCard({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(title),
    );
  }
}
