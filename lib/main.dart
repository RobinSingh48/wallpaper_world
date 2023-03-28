import 'package:flutter/material.dart';
import 'package:wallpaper_world/view/screen/HomeScreen.dart';
import 'package:wallpaper_world/view/screen/category_screen.dart';
import 'package:wallpaper_world/view/screen/search_screen.dart';


void main(){
  runApp(const Home());
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Wallpaper World',
      theme: ThemeData(
        primarySwatch: Colors.red
      ),
      home: CategoryScreen(),
    );
  }
}
