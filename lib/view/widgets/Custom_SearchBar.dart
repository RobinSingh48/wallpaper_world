import 'package:flutter/material.dart';

class CustomSearchBar extends StatelessWidget {
  const CustomSearchBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black38),
        color: Colors.grey.shade100,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        children: [
          Expanded(
            child: Padding(
              padding:  EdgeInsets.symmetric(horizontal: 20),
              child: TextField(
                decoration: InputDecoration(
                  hintText: "Search Wallpapers",
                   hintStyle: TextStyle(
                     fontWeight: FontWeight.bold
                   ),
                   errorBorder : InputBorder.none,
                  focusedBorder : InputBorder.none,
                  focusedErrorBorder :InputBorder.none,
                   disabledBorder  :InputBorder.none,
                  enabledBorder :InputBorder.none,
                  border :InputBorder.none,
                ),
              ),
            ),
          ),
          InkWell(
            onTap: (){},
              child: Padding(
                padding:  EdgeInsets.symmetric(horizontal: 15),
                child: Icon(Icons.search),
              ))
        ],
      ),
    );
  }
}
