import 'package:flutter/material.dart';

class ProjectTaskSliverList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        (context, index) {
          return Container(
            color: Color(0xFFE1E7F6),
            child: Container(
              height: 240,
              width: 30,
              margin: EdgeInsets.all(30),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.grey[50],
                boxShadow: [
                  BoxShadow(
                    offset: Offset(5, 5),
                    color: Colors.grey[200],
                    blurRadius: 2,
                  ),
                ],
              ),
            ),
          );
        },
        childCount: 10,
      ),
    );
  }
}
