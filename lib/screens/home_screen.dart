import 'package:flutter/material.dart';
import 'package:management_app_ui/widgets/custom_app_bar.dart';
import 'package:management_app_ui/widgets/custom_tab_bar.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: SafeArea(
        bottom: false,
        child: Scaffold(
          backgroundColor: Colors.lightBlue[50],
          body: CustomScrollView(
            slivers: [
              SliverAppBar(
                floating: false,
                expandedHeight: 250,
                pinned: true,
                backgroundColor: Colors.white,
                shape: ContinuousRectangleBorder(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(90),
                    bottomRight: Radius.circular(90),
                  ),
                ),
                title: CustomAppBar(),
                flexibleSpace: FlexibleSpaceBar(
                  background: Padding(
                    padding: const EdgeInsets.only(
                      left: 22.0,
                      right: 22.0,
                      top: 80,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 2.0),
                          child: Text(
                            'Hi Rahman!',
                            style: TextStyle(
                              color: Colors.grey[600],
                              fontSize: 15,
                            ),
                          ),
                        ),
                        SizedBox(height: 2),
                        Text(
                          'Good afternoon',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 25,
                          ),
                        ),
                        SizedBox(height: 4),
                        Padding(
                          padding: EdgeInsets.only(left: 2),
                          child: Text(
                            '03 September 2019',
                            style: TextStyle(
                              color: Colors.grey[600],
                              fontSize: 13,
                            ),
                          ),
                        ),
                        SizedBox(height: 54),
                        CustomTabBar(),
                      ],
                    ),
                  ),
                ),
              ),
              SliverList(
                delegate: SliverChildBuilderDelegate(
                  (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 40,
                        color: Colors.lightBlue[50],
                      ),
                    );
                  },
                  childCount: 49,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
