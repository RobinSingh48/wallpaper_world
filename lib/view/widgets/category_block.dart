import 'package:flutter/material.dart';

class CategoryBlock extends StatelessWidget {
  const CategoryBlock({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.network(
                width: MediaQuery.of(context).size.width/4,
                height: MediaQuery.of(context).size.height/10,
                  fit: BoxFit.cover,
                  "https://images.pexels.com/photos/596750/pexels-photo-596750.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: MediaQuery.of(context).size.width/4,
              height: MediaQuery.of(context).size.height/10,
              decoration: BoxDecoration(
                color: Colors.black26,
                borderRadius: BorderRadius.circular(12)
              ),
            ),
          ),
          Positioned(
            left: 30,
              top: 35,
              child: Text("Gaming",style: TextStyle(color: Colors.yellowAccent,fontWeight: FontWeight.bold,fontSize: 18),))
          
        ],
      ),
    );
  }
}
