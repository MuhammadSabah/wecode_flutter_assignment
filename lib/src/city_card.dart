import 'package:flutter/material.dart';

class CityCard extends StatelessWidget {
  const CityCard(
      {Key? key, this.callBack, required this.title, required this.img})
      : super(key: key);
  final String title;
  final Function()? callBack;
  final String img;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.only(top: 25),
          height: 200,
          width: 300,
          decoration: const BoxDecoration(
            color: Colors.amber,
          ),
          child: Image.network(
            img,
            fit: BoxFit.cover,
          ),
        ),
        Transform.translate(
          offset: const Offset(0, -35),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(
                onPressed: callBack,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Container(
                    width: 140,
                    height: 50,
                    color: Colors.red,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          title,
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 22,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
