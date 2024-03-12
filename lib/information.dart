import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Information extends StatelessWidget {
  const Information({super.key});

  @override
  Widget build(BuildContext context) {
    var screenInfo = MediaQuery.of(context);
    final screenSize = screenInfo.size.height;
    final screenWidth = screenInfo.size.width;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Haqqında'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(
              left: screenWidth / 50,
              right: screenWidth / 50,
              top: screenWidth / 50),
          child: Column(
            children: [
              Image.asset("pictures/street.jpg"),
              SizedBox(
                height: screenSize / 60,
              ),
              Text(
                "Bakı Mühəndislik Universiteti",
                style: TextStyle(
                    fontSize: screenWidth / 10, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: screenSize / 30,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Haqqında',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                      fontSize: screenWidth / 20, fontWeight: FontWeight.w900),
                ),
              ),
              SizedBox(
                height: screenSize / 70,
              ),
              Text(
                '8 noyabr 2016-cı il tarixində, ləğv olunmuş Qafqaz Universitetinin bazasında yaradılmışdır.[1] Bakı Mühəndislik Universiteti publik hüquqi şəxsin Nizamnaməsi Azərbaycan Respublikası Prezidentinin 2017-ci il 21 fevral tarixli fərmanı ilə təsdiq edilmişdir.',
                style: TextStyle(fontSize: screenWidth / 25),
              ),
              SizedBox(
                height: screenSize / 40,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Fakültələr',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                      fontSize: screenWidth / 20, fontWeight: FontWeight.w900),
                ),
              ),
              SizedBox(
                height: screenSize / 70,
              ),
              Text(
                ' Bakı Mühəndislik Uniiversitetində bakalvr, magistratura və doktrantura təhsil səviyyələrində tədris olunan ixtisaslar Azərbaycan, ingilis və rus dillərində həyata keçirilir. Hal-hazırda universitetə qəbul dörd ixtisas qrupu (fakültə) üzrə aparılır: Mühəndislik İqtisadiyyat və İdarəetmə Pedaqoji Memarlıq və İnşaat ',
                style: TextStyle(fontSize: screenWidth / 25),
              ),
              SizedBox(
                height: screenSize / 50,
              ),
              Container(
                decoration: const BoxDecoration(
                    border: Border.symmetric(horizontal: BorderSide(width: 1))),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
