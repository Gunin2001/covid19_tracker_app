import 'package:flutter/material.dart';
class SearchNewsScreen extends StatelessWidget {
  const SearchNewsScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("News Search"),),
    );
  }
}