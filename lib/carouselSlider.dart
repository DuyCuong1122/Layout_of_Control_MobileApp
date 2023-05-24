import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class crsSlider extends StatelessWidget {
  final List<Widget> carouselItems = [
    Container(
      decoration: BoxDecoration(
        color: const Color.fromARGB(255,135, 206, 250,),
        border: Border.all(
          color: Color.fromARGB(255,255,160,122),
          width: 2,          
        ),
        borderRadius: BorderRadius.circular(8)
      ),
      child: const Center(child: Text('Ưu đãi 1', style: TextStyle(fontSize: 20),)),
    ),
    Container(
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 255, 160, 122,),
        border: Border.all(
          color: Color.fromARGB(255,255,160,122),
          width: 2,          
        ),
        borderRadius: BorderRadius.circular(8)
      ),
      
      child: const Center(child: Text('Ưu đãi 2', style: TextStyle(fontSize: 20),)),
    ),
    Container(
       decoration: BoxDecoration(
        color: const Color.fromARGB(255,  176, 196, 222,),
        border: Border.all(
          color: Color.fromARGB(255,255,160,122),
          width: 2,          
        ),
        borderRadius: BorderRadius.circular(8)
      ),
      
      child: const Center(child: Text('Ưu đãi 3', style: TextStyle(fontSize: 20),)),
    ),
    Container(
       decoration: BoxDecoration(
        color: const Color.fromARGB(255,  221, 160, 221,),
        border: Border.all(
          color: Color.fromARGB(255,255,160,122),
          width: 2,          
        ),
        borderRadius: BorderRadius.circular(8)
      ),
      
      child: const Center(child: Text('Ưu đãi 4', style: TextStyle(fontSize: 20),)),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return CarouselSlider(
      items: carouselItems,
      options: CarouselOptions(
        height: 132,
        autoPlay: true,
        enlargeCenterPage: true,
        aspectRatio: 16 / 9,
        autoPlayCurve: Curves.fastOutSlowIn,
        enableInfiniteScroll: true,
        autoPlayAnimationDuration: const Duration(milliseconds: 800),
        viewportFraction: 0.8,
      ),
    );
  }
}
