import 'package:flutter/material.dart';

class Recover extends StatefulWidget {
  const Recover({super.key, String? cache});

  @override
  State<Recover> createState() => _RecoverState();
}

class _RecoverState extends State<Recover> {
  bool control = true;
  @override
  Widget build(BuildContext context) {
    var screenInfo = MediaQuery.of(context);
    final screenHeight = screenInfo.size.height;
    final screenWidth = screenInfo.size.width;
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: screenWidth / 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              (() {
                if (control) {
                  return const TextField(
                    decoration: InputDecoration(
                        hintText: 'ID', icon: Icon(Icons.person_outlined)),
                  );
                } else {
                  return const TextField(
                    decoration: InputDecoration(
                        hintText: 'Mail', icon: Icon(Icons.person_outlined)),
                  );
                }
              }()),
              Align(
                alignment: Alignment.centerRight,
                child: IconButton(
                  iconSize: screenWidth / 6,
                  color: Theme.of(context).colorScheme.primary,
                  onPressed: () {},
                  icon: const Icon(Icons.arrow_circle_right_rounded),
                ),
              ),
              ElevatedButton(
                child: Text('Mail ilə axtar'),
                onPressed: () {
                  setState(() {
                    control = false;
                  });
                  print("$control");
                },
              ),
              ElevatedButton(
                child: Text('ID ilə axtar'),
                onPressed: () {
                  setState(() {
                    control = true;
                  });
                  print("$control");
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
