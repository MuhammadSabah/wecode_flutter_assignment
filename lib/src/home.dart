import 'package:flutter/material.dart';
import 'package:wecode_assignment_1/mock_data.dart';
import 'package:wecode_assignment_1/src/city_card.dart';
import 'package:wecode_assignment_1/src/details.screen.dart';

class Home extends StatefulWidget {
  Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int listIndex = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        // backgroundColor: const Color(0xff0E0E0E),
        body: SafeArea(
          child: ListView.builder(
            itemCount: cityData.length,
            itemBuilder: (context, index) {
              return CityCard(
                title: cityData[index]["name"].toString(),
                img: cityData[index]["image"].toString(),
                callBack: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => DetailsScreen(
                        img: cityData[index]["image"].toString(),
                      ),
                    ),
                  );
                },
              );
            },
          ),
        ),
      ),
    );
  }
}
