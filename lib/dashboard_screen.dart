import 'package:flutter/material.dart';
import 'package:flutter_ui_smarthome/widgets/bar_chart.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Theme.of(context).colorScheme.background,
        leading: Padding(
          padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
          child: GestureDetector(
            onTap: () {},
            child: Icon(
              Icons.menu,
              color: Theme.of(context).colorScheme.primary,
            ),
          ),
        ),
        actions: [
          Container(
              padding: const EdgeInsets.fromLTRB(0, 0, 20, 0),
              width: 75,
              height: 75,
              child: const Image(image: AssetImage('assets/avatar.png'))),
        ],
      ),
      bottomNavigationBar: SizedBox(
        height: 65,
        child: BottomNavigationBar(
            selectedFontSize: 0.0,
            unselectedFontSize: 0.0,
            currentIndex: 1,
            selectedIconTheme:
                IconThemeData(color: Theme.of(context).colorScheme.secondary),
            elevation: 0,
            iconSize: 30,
            showSelectedLabels: false,
            showUnselectedLabels: false,
            type: BottomNavigationBarType.fixed,
            items: const [
              BottomNavigationBarItem(icon: Icon(Icons.home), label: ""),
              BottomNavigationBarItem(
                  icon: Icon(Icons.electric_bolt), label: ""),
              BottomNavigationBarItem(icon: Icon(Icons.person), label: ""),
              BottomNavigationBarItem(icon: Icon(Icons.flag), label: ""),
            ]),
      ),
      body: Container(
        padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 15,
            ),
            Container(
                padding: const EdgeInsets.fromLTRB(5, 0, 0, 0),
                child: const Text(
                  "Bedrooms",
                  style: const TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                )),
            Container(
              padding: const EdgeInsets.fromLTRB(5, 0, 5, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Usage today",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    width: 70,
                    height: 40,
                    child: Container(
                        decoration: BoxDecoration(
                          color: Theme.of(context).colorScheme.primary,
                          shape: BoxShape.rectangle,
                          borderRadius: const BorderRadius.all(const Radius.circular(25)),
                        ),
                        child: Center(
                            child: Text(
                          "64kw",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Theme.of(context).colorScheme.tertiary),
                        ))),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            SizedBox(child: BarChartWidget()),
            const SizedBox(
              height: 15,
            ),
            Flexible(
              child: GridView.count(
                crossAxisCount: 2,
                mainAxisSpacing: 20,
                crossAxisSpacing: 20,
                physics: const NeverScrollableScrollPhysics(),
                children: [
                  controlBoard(Icons.light_mode_outlined, 'Light', context,
                      isSelect: true),
                  controlBoard(
                    Icons.volume_up_rounded,
                    'Sound',
                    context,
                  ),
                  controlBoard(
                    Icons.wind_power,
                    'Fans',
                    context,
                  ),
                  controlBoard(
                    Icons.heat_pump_outlined,
                    'Heater',
                    context,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Widget controlBoard(IconData icon, String text, BuildContext context,
    {bool isSelect = false}) {
  final colorScheme = Theme.of(context).colorScheme;
  return SizedBox(
    height: 165,
    width: 165,
    child: Container(
      alignment: Alignment.center,
      decoration: BoxDecoration(
          shape: BoxShape.rectangle,
          borderRadius: const BorderRadius.all(Radius.circular(25)),
          color: colorScheme.primary),
      child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(
              icon,
              size: 53,
              color: isSelect ? colorScheme.secondary : colorScheme.tertiary,
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              text,
              style: TextStyle(fontSize: 17, color: colorScheme.tertiary),
            )
          ]),
    ),
  );
}
