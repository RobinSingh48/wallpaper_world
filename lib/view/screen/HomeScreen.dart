import 'package:flutter/material.dart';
import 'package:wallpaper_world/view/widgets/Custom_SearchBar.dart';
import 'package:wallpaper_world/view/widgets/category_block.dart';

import '../widgets/custom_appbar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
        title: CustomAppBar(text1: "Wallpaper",text2: "World"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width/25),
                child: CustomSearchBar()),
            SizedBox(
              height: 100,
              width: MediaQuery.of(context).size.width,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 10,
                itemBuilder: (context, index) => CategoryBlock(),),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width/35),
              height: MediaQuery.of(context).size.height,

              child: GridView.builder(
               physics: BouncingScrollPhysics(),
                itemCount: 12,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                crossAxisSpacing: 13,
                mainAxisSpacing: 20,
                mainAxisExtent: 300,

              ), itemBuilder: (context, index) => Container(
                decoration: BoxDecoration(
                  color: Colors.orangeAccent,
                  borderRadius: BorderRadius.circular(20)
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                    child: Image.network("https://images.pexels.com/photos/2607554/pexels-photo-2607554.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",fit: BoxFit.cover,)),
              ),),
            )
          ],
        ),
      ),
    );
  }
}
