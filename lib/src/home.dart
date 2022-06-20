import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<String> listOfImages = [
    'asset/ace.jpg',
    'asset/sabo.jpg',
    'asset/luffy.webp',
  ];

  int listIndex = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        // backgroundColor: const Color(0xff0E0E0E),
        body: SafeArea(
          child: Column(
            children: [
              const SizedBox(
                height: 50,
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: SizedBox(
                  width: 280,
                  child: Image.asset(
                    listOfImages[listIndex],
                  ),
                ),
              ),
              const SizedBox(
                height: 55,
              ),
              Expanded(
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: listOfImages.length,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        setState(() {
                          listIndex = index;
                        });
                      },
                      child: SizedBox(
                        height: 40,
                        width: MediaQuery.of(context).size.width / 3,
                        child: Card(
                          elevation: 7,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15)),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(15),
                            child: Image.asset(
                              listOfImages[index],
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
              const Spacer(),
              const Spacer(),
            ],
          ),
        ),
        bottomNavigationBar: Container(
          height: 70,
          color: const Color(0xffF94701),
        ),
      ),
    );
  }
}
