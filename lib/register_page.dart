import 'package:bmu_app/login_page.dart';
import 'package:flutter/material.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  @override
  Widget build(BuildContext context) {
    var screenInfo = MediaQuery.of(context);
    final screenHeight = screenInfo.size.height;
    final screenWidth = screenInfo.size.width;
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.menu_outlined,
                size: screenHeight / 30,
              ))
        ],
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: screenWidth / 20),
            child: Column(
              children: [
                SizedBox(
                  height: screenHeight / 10,
                ),
                Padding(
                  padding: EdgeInsets.only(
                      top: screenHeight / 30, bottom: screenHeight / 7),
                  child: Text(
                    "Qeydiyyatdan keç",
                    style: TextStyle(
                        fontSize: screenWidth / 10,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                const TextField(
                  decoration: InputDecoration(
                      hintText: 'Ad Soyad', icon: Icon(Icons.person_outlined)),
                ),
                const TextField(
                  decoration:
                      InputDecoration(hintText: 'Mail', icon: Icon(Icons.mail)),
                ),
                const TextField(
                  decoration: InputDecoration(
                      hintText: 'Şifrə', icon: Icon(Icons.lock)),
                ),
                const TextField(
                  decoration: InputDecoration(
                      hintText: 'Şifrəni təkrar et', icon: Icon(Icons.lock)),
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: IconButton(
                    iconSize: screenWidth / 6,
                    color: Theme.of(context).colorScheme.primary,
                    onPressed: () {},
                    icon: const Icon(Icons.arrow_circle_right_rounded),
                  ),
                ),
                TextButton(
                    onPressed: () {
                      Navigator.pushReplacement(context,
                          MaterialPageRoute(builder: (context) => Login()));
                    },
                    child: const Text('Hesabınız var?'))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
