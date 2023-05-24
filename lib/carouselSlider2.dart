import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class crsSlider2 extends StatelessWidget {
  final List<Widget> carouselItems = [
    Container(
      decoration: BoxDecoration(
          color: const Color.fromARGB(
            255,
            135,
            206,
            250,
          ),
          border: Border.all(
            color: const Color.fromARGB(
              255,
              255,
              99,
              71,
            ),
            width: 2,
          ),
          borderRadius: BorderRadius.circular(8)),
      child: const Center(
          child: Text(
        'Nhân viên 1',
        style: TextStyle(fontSize: 20),
      )),
    ),
    Container(
      decoration: BoxDecoration(
          color: const Color.fromARGB(
            255,
            255,
            160,
            122,
          ),
          border: Border.all(
            color: const Color.fromARGB(
              255,
              255,
              99,
              71,
            ),
            width: 2,
          ),
          borderRadius: BorderRadius.circular(8)),
      child: const Center(
          child: Text(
        'Nhân viên 2',
        style: TextStyle(fontSize: 20),
      )),
    ),
    Container(
      decoration: BoxDecoration(
          color: const Color.fromARGB(
            255,
            152,
            251,
            152,
          ),
          border: Border.all(
            color: const Color.fromARGB(
              255,
              255,
              99,
              71,
            ),
            width: 2,
          ),
          borderRadius: BorderRadius.circular(8)),
      child: const Center(
          child: Text(
        'Nhân viên 3',
        style: TextStyle(fontSize: 20),
      )),
    ),
    Container(
      decoration: BoxDecoration(
          color: const Color.fromARGB(
            255,
            221,
            160,
            221,
          ),
          border: Border.all(
            color: const Color.fromARGB(
              255,
              255,
              99,
              71,
            ),
            width: 2,
          ),
          borderRadius: BorderRadius.circular(8)),
      child: const Center(
          child: Text(
        'Nhân viên 4',
        style: TextStyle(fontSize: 20),
      )),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return CarouselSlider(
      items: carouselItems,
      options: CarouselOptions(
        height: 100.0,
        autoPlay: true,
        enlargeCenterPage: true,
        aspectRatio: 6 / 9,
        autoPlayCurve: Curves.fastOutSlowIn,
        enableInfiniteScroll: true,
        autoPlayAnimationDuration: const Duration(milliseconds: 1000),
        viewportFraction: 0.8,
      ),
    );
  }
}
