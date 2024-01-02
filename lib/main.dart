import 'package:flutter/material.dart';
import 'package:mymovieapp/colors.dart';
import 'package:mymovieapp/homescreem.dart';

void main(){
  runApp(Myapp());
}
class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "M Y F L I X",
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: Colours.scaffoldBgcolor,
      ),
      home: Homescreen(),
    );
  }
}