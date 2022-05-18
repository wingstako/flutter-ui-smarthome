import 'package:flutter/material.dart';
import 'package:flutter_ui_smarthome/dashboard_screen.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).pushAndRemoveUntil(
              MaterialPageRoute(builder: (_) => const DashboardScreen()),
              (route) => false);
        },
        backgroundColor:
            Theme.of(context).colorScheme.tertiary.withOpacity(0.9),
        elevation: 0.0,
        child: Icon(
          Icons.arrow_forward_ios,
          color: Theme.of(context).colorScheme.primary,
        ),
      ),
      body: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
          alignment: Alignment.bottomCenter,
          fit: BoxFit.fitWidth,
          // scale: 5.0,
          image: AssetImage('assets/house_3.png'),
        )),
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: const EdgeInsets.fromLTRB(30, 15, 30, 0),
                child: const Text(
                  "The Perfect \nDream House \nfor you",
                  style: TextStyle(
                      fontSize: 35, fontWeight: FontWeight.bold, height: 0.0),
                ),
              ),
              Container(
                padding: const EdgeInsets.fromLTRB(30, 10, 30, 0),
                child: const Text(
                  "A smart house with advanced features that You can control by mobile app",
                  style: TextStyle(fontSize: 14),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
