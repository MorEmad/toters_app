import 'package:carousel_images/carousel_images.dart';
import 'package:flutter/cupertino.dart';

import '../../../data/my_data.dart';
import '../../../data/my_data.dart';

class MyCarouselImagesWidget extends StatelessWidget {
  const MyCarouselImagesWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CarouselImages(
      scaleFactor: 0.6,
      listImages: listImages,
      height: 200.0,
      borderRadius: 30.0,
      // cachedNetworkImage: true,
      verticalAlignment: Alignment.topCenter,
      onTap: (index) {
        print('Tapped on page $index');
      },
    );
  }
}