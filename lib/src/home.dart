import 'package:flutter/material.dart';
import 'package:wecode_assignment_1/mock_data.dart';
import 'package:wecode_assignment_1/src/city_card.dart';
import 'package:wecode_assignment_1/src/details.screen.dart';

import '../models/city.dart';

class Home extends StatelessWidget {
  Home({Key? key}) : super(key: key);

  // int listIndex = 0;
  List<City> cities = [];
  @override
  Widget build(BuildContext context) {
    cities = cityData.map((city) => City.fromData(city)).toList();
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        // backgroundColor: const Color(0xff0E0E0E),
        body: SafeArea(
          child: ListView.builder(
            itemCount: cities.length,
            itemBuilder: (context, index) {
              final city = cities[index];
              return CityCard(
                title: city.name.toString(),
                img: city.image.toString(),
                callBack: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => DetailsScreen(
                        img: city.image.toString(),
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
