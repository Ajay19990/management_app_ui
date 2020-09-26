import 'package:flutter/material.dart';
import 'package:management_app_ui/utilities/constants.dart';
import 'package:management_app_ui/widgets/custom_app_bar.dart';
import 'package:management_app_ui/widgets/custom_tab.dart';
import 'package:management_app_ui/widgets/home_list_view.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;

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
                            style: Theme.of(context).textTheme.bodyText1,
                          ),
                        ),
                        SizedBox(height: 2),
                        Text(
                          'Good afternoon',
                          style: Theme.of(context).textTheme.headline4,
                        ),
                        SizedBox(height: 4),
                        Padding(
                          padding: EdgeInsets.only(left: 2),
                          child: Text(
                            '03 September 2019',
                            style: Theme.of(context).textTheme.bodyText2,
                          ),
                        ),
                        SizedBox(height: 46),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: tabs.asMap().entries.map((MapEntry map) {
                            return CustomTab(
                              index: map.key,
                              selectedIndex: _selectedIndex,
                              onTap: () {
                                setState(() {
                                  _selectedIndex = map.key;
                                });
                              },
                            );
                          }).toList(),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              HomeListView(),
            ],
          ),
        ),
      ),
    );
  }
}
