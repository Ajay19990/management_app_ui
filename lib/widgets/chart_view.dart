import 'package:flutter/material.dart';
import 'package:management_app_ui/utilities/constants.dart';
import 'package:management_app_ui/widgets/chart_status_view.dart';

class ChartView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          width: MediaQuery.of(context).size.width * 0.44 - 30,
          height: MediaQuery.of(context).size.width * 0.44 - 30,
          color: Colors.grey[400],
        ),
        Expanded(
          child: Container(
            height: MediaQuery.of(context).size.width * 0.44 - 50,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: chartData
                  .map((chart) => Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ChartStatusView(chart),
                      ))
                  .toList(),
            ),
          ),
        ),
      ],
    );
  }
}
