import 'package:flutter/material.dart';
class BookTestScreen extends StatelessWidget {
  const BookTestScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Book a test"),),
    );
  }
}