import 'package:flutter/material.dart';
import 'package:management_app_ui/utilities/constants.dart';

class HomeListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        (context, index) {
          var project = projects[index];
          return Padding(
            padding: const EdgeInsets.fromLTRB(30, 20, 30, 0),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Colors.white,
              ),
              height: 100,
              child: Row(
                children: [
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 16),
                    padding: EdgeInsets.all(8),
                    height: 65,
                    width: 65,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Color(0xFFF2F6FE),
                    ),
                    child: Image(
                      image: AssetImage('${project.imageName}'),
                      color: null,
                      fit: BoxFit.scaleDown,
                      alignment: Alignment.center,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 22, horizontal: 2),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '${project.name}',
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            letterSpacing: 0.2,
                            fontSize: 15,
                            color: Colors.black,
                          ),
                        ),
                        SizedBox(height: 6),
                        Text(
                          '${project.date}',
                          style: Theme.of(context).textTheme.bodyText1,
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          );
        },
        childCount: projects.length,
      ),
    );
  }
}
