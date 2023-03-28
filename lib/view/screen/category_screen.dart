import 'package:flutter/material.dart';
import 'package:wallpaper_world/view/widgets/Custom_SearchBar.dart';
import 'package:wallpaper_world/view/widgets/category_block.dart';

import '../widgets/custom_appbar.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({Key? key}) : super(key: key);

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

            Stack(
              children: [
                Image.network(
                  height: 150,
                  width: MediaQuery.of(context).size.width,
                  "https://images.pexels.com/photos/1033116/pexels-photo-1033116.jpeg",
                fit: BoxFit.cover,),
                Container(
                  height: 150,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: Colors.black38
                  ),
                ),
                Positioned(
                  left: 150,
                  top: 40,
                  child: Column(
                    children: [
                      Text("Category",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w400,fontSize: 20),),
                      Text("Bikes",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 35),)
                    ],
                  ),
                )
              ],
            ),
            SizedBox(height: 20,),

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
