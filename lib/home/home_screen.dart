import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:getx_app/widgets/text_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:  const Text("Home"),),
      body: Center(child: TextWidgets(text: "Home Screen Here", size: 25)),
    );

  }
}
