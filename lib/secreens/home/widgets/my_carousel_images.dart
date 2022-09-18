import 'package:carousel_images/carousel_images.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';

import '../../../data/my_data.dart';
import '../../../data/my_data.dart';

class MyCarouselImagesWidget extends StatelessWidget {
  const MyCarouselImagesWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.8,
      height: MediaQuery.of(context).size.width * 0.4,
      child: CarouselSlider.builder(
        itemCount: listImages.length,
        itemBuilder: (BuildContext context, int itemIndex, int pageViewIndex) =>
            Container(
          child: Image.network(listImages[itemIndex]),
        ),
        options: CarouselOptions(
          autoPlay: false,
          enlargeCenterPage: true,
          viewportFraction: 0.9,
          aspectRatio: 2.0,
          initialPage: 2,
        ),
      ),
    );
  }
}
