import 'package:bmu_app/main_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:bmu_app/recover_page.dart';

class Login extends StatefulWidget {
  Login({
    Key? key,
  });

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    var screenInfo = MediaQuery.of(context);
    final screenHeight = screenInfo.size.height;
    final screenWidth = screenInfo.size.width;
    var takedata = TextEditingController();
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: screenWidth / 20),
          child: Column(
            children: [
              SizedBox(
                height: screenHeight / 10,
              ),
              Text(
                "Hesaba daxil ol",
                style: TextStyle(
                    fontSize: screenWidth / 10, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: screenHeight / 5,
              ),
              const TextField(
                decoration: InputDecoration(
                    hintText: 'ID', icon: Icon(Icons.person_outlined)),
              ),
              TextField(
                controller: takedata,
                decoration: const InputDecoration(
                    hintText: 'Şifrə', icon: Icon(Icons.lock)),
              ),
              Align(
                alignment: Alignment.centerRight,
                child: IconButton(
                  iconSize: screenWidth / 6,
                  color: Theme.of(context).colorScheme.primary,
                  onPressed: () {
                    Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (context) => MainPage()));
                  },
                  icon: const Icon(Icons.arrow_circle_right_rounded),
                ),
              ),
              TextButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Recover()));
                  },
                  child: const Text('Şifrəni unutmusuz?')),
            ],
          ),
        ),
      ),
    );
  }
}
