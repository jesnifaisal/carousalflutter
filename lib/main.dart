import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: slide(),
    debugShowCheckedModeBanner: false,
  ));
}

class slide extends StatefulWidget {
  const slide({super.key});

  @override
  State<slide> createState() => _slideState();
}

class _slideState extends State<slide> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Carousel Example"),
        backgroundColor: Colors.black,
        elevation: 0,
      ),
      body: Container(
        child: CarouselSlider(
            items: [1, 2, 3, 4, 5, 6].map((i) {
              return Container(
                width: MediaQuery.of(context).size.width,
                margin: EdgeInsets.symmetric(horizontal: 6),
                decoration: BoxDecoration(
                    color: Colors.green[900],
                    borderRadius: BorderRadius.all(Radius.circular(20))),
                child: Center(
                    child: Text(
                  "Slider $i",
                  style: TextStyle(fontSize: 20, color: Colors.black),
                )),
              );
            }).toList(),
            options: CarouselOptions(height: 200)),
      ),
    );
  }
}
