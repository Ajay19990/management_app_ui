import 'package:flutter/material.dart';

class ChartDataView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          height: 14,
          width: 14,
          decoration: BoxDecoration(
            color: Colors.indigoAccent,
            borderRadius: BorderRadius.circular(7),
          ),
        ),
        Text(
          'Done',
          style: Theme.of(context).textTheme.bodyText1,
        ),
        Text(
          '45%',
          style: Theme.of(context).textTheme.bodyText1,
        ),
      ],
    );
  }
}
