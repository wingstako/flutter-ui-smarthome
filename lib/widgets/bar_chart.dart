import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class BarChartWidget extends StatelessWidget {
  BarChartWidget({Key? key}) : super(key: key);

  final times = ["10pm", "11pm", "12am", "1am", "2am", "3am", "4am"];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 10, right: 10),
          child: SizedBox(
            width: double.infinity,
            height: 140,
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  barItem(context, 60),
                  barItem(context, 89, isImportant: true),
                  barItem(context, 45),
                  barItem(context, 100, isImportant: true),
                  barItem(context, 90),
                  barItem(context, 140, isImportant: true),
                  barItem(context, 80),
                  barItem(context, 120, isImportant: true),
                  barItem(context, 80),
                  barItem(context, 100),
                ]),
          ),
        ),

        SizedBox(height: 5,),

        SizedBox(
          width: double.infinity,
          height: 30,
          child: ListView.builder(
            physics: const NeverScrollableScrollPhysics(),
            itemExtent: 49.5,
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            itemCount: times.length,
            itemBuilder: (context, index) {
              return Card(
                elevation: 0,
                color: Theme.of(context).colorScheme.background,
                child: Center(
                  child: Text(
                    times[index],
                    style: TextStyle(
                        fontSize: 10,
                        color: Theme.of(context).colorScheme.primary,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              );
            },
          ),
        )
      ],
    );
  }
}

Widget barItem(BuildContext context, double value,
    {double width = 22, bool isImportant = false}) {
  final colorScheme = Theme.of(context).colorScheme;

  return Container(
    decoration: BoxDecoration(
        shape: BoxShape.rectangle,
        borderRadius: BorderRadius.all(Radius.circular(25)),
        color: isImportant ? colorScheme.secondary : colorScheme.primary),
    width: width,
    height: value,
  );
}
