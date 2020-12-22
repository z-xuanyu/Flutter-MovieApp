import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class SwiperBanner extends StatefulWidget {
  @override
  _SwiperBannerState createState() => _SwiperBannerState();
}

class _SwiperBannerState extends State<SwiperBanner> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 13),
      height: 160,
      child: Swiper(
        autoplay: true,
        itemBuilder: (BuildContext context, int index) {
          return ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.network(
                'https://1img.hanjutv2020.com/202012/8a266207c3.png',
                fit: BoxFit.cover),
          );
        },
        itemCount: 3,
      ),
    );
  }
}
