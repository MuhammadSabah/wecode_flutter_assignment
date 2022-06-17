import 'package:flutter/material.dart';

class HelloKurdistan extends StatelessWidget {
  const HelloKurdistan({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.red,
          centerTitle: true,
          title: const Text(""),
        ),
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const SizedBox(height: 35),
              Image.network(
                'https://upload.wikimedia.org/wikipedia/commons/thumb/a/a0/Roj_emblem.svg/1200px-Roj_emblem.svg.png',
                height: 325,
              ),
              const SizedBox(height: 55),
              const Align(
                alignment: Alignment.center,
                child: Text(
                  "Hello Kurdistan",
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: Container(
          height: 50,
          color: Colors.green,
        ),
      ),
    );
  }
}
