import 'package:bmu_app/information.dart';
import 'package:bmu_app/login_page.dart';
import 'package:bmu_app/register_page.dart';
import 'package:flutter/material.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  @override
  Widget build(BuildContext context) {
    var screenInfo = MediaQuery.of(context);
    final screenSize = screenInfo.size.height;
    final screenWidth = screenInfo.size.width;
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: screenWidth / 10),
              child: Image.asset(
                "pictures/logo2.png",
              ),
            ),
            const SizedBox(
              height: 80,
            ),
            ElevatedButton.icon(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Login()));
                },
                label: Text('Daxil ol')),
            ElevatedButton.icon(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Register()));
                },
                label: Text('Qeydiyyatdan keç')),
            ElevatedButton.icon(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Information()));
                },
                label: Text('Haqqında')),
          ],
        ),
      ),
    );
  }
}
