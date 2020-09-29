import 'package:flutter/material.dart';
import 'package:management_app_ui/screens/detail_screen.dart';
import 'package:management_app_ui/utilities/constants.dart';

class HomeListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        (context, index) {
          var project = projects[index];
          return Container(
            margin: const EdgeInsets.fromLTRB(30, 20, 30, 0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: Colors.white,
            ),
            height: 100,
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => DetailScreen()),
                );
              },
              child: Container(
                child: Column(
                  children: [
                    Row(
                      children: [
                        Container(
                          margin: EdgeInsets.symmetric(horizontal: 16),
                          padding: EdgeInsets.all(8),
                          height: 65,
                          width: 65,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: Theme.of(context).accentColor,
                          ),
                          child: Image(
                            image: AssetImage('${project.imageName}'),
                            color: null,
                            fit: BoxFit.scaleDown,
                            alignment: Alignment.center,
                          ),
                        ),
                        Padding(
                          padding:
                              const EdgeInsets.symmetric(vertical: 22, horizontal: 2),
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
                    LinearProgressIndicator(
                      backgroundColor: Colors.lightBlue[100],
                      valueColor: AlwaysStoppedAnimation<Color>(Colors.blue),
                      value: project.progressValue,
                    )
                  ],
                ),
              ),
            ),
          );
        },
        childCount: projects.length,
      ),
    );
  }
}
