import 'package:flutter/material.dart';

class HomeAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 5),
      height: 30,
      color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Icon(Icons.dehaze, color: Colors.black),
          Container(
            decoration: BoxDecoration(
              color: Colors.orange,
              borderRadius: BorderRadius.all(Radius.circular(8)),
            ),
            child: Image(
              image: AssetImage("assets/man.png"),
              color: null,
              fit: BoxFit.scaleDown,
              alignment: Alignment.center,
            ),
          ),
        ],
      ),
    );
  }
}
