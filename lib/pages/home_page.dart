import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:friday/core/colors.dart';
import 'package:friday/widgets/video_content.dart';
import 'package:friday/widgets/video_player.dart';
import 'package:friday/widgets/y_app_bar.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: ListView(
        children: [
          const YAppBar(),
          Stack(
            alignment: Alignment.topCenter,
            children: [
              const VideoContent(),
              const VideoPlayer(),
            ],
          ),
          const SizedBox(
            height: 23,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 17,
                  width: 128,
                  decoration: BoxDecoration(
                      color: kDarkGreyColor,
                      borderRadius: BorderRadius.circular(17)),
                ),
                Container(
                  height: 14,
                  width: 52,
                  decoration: BoxDecoration(
                      color: kDarkGreyColor,
                      borderRadius: BorderRadius.circular(17)),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 18,
          ),
          LimitedBox(
            maxHeight: 130,
            child: CarouselSlider.builder(
              options: CarouselOptions(
                  enlargeCenterPage: true,
                  viewportFraction: 0.55,
                  enableInfiniteScroll: true,
                  pageSnapping: false,
                  autoPlay: true),
              itemCount: 1,
              itemBuilder: (context, index) {
                return Container(
                  width: 225,
                  height: 125,
                  alignment: Alignment.bottomCenter,
                  decoration: BoxDecoration(
                      color: kBlackColor,
                      borderRadius: BorderRadius.circular(14),
                      boxShadow: [
                        BoxShadow(color: kDarkGreyColor, blurRadius: 34),
                      ]),
                  child: ListTile(
                      dense: true,
                      contentPadding:
                          const EdgeInsets.symmetric(horizontal: 20),
                      title: Container(
                        height: 7,
                        margin: const EdgeInsets.symmetric(horizontal: 20),
                        decoration: BoxDecoration(
                            color: kWhiteColor.withOpacity(0.1),
                            borderRadius: BorderRadius.circular(5)),
                      ),
                      subtitle: Container(
                        height: 7,
                        width: 84,
                        margin: const EdgeInsets.symmetric(horizontal: 20),
                        decoration: BoxDecoration(
                            color: kWhiteColor.withOpacity(0.1),
                            borderRadius: BorderRadius.circular(5)),
                      ),
                      trailing: Stack(
                        alignment: Alignment.center,
                        children: [
                          CircleAvatar(
                            radius: 12,
                            backgroundColor: kRedColor,
                          ),
                          CircleAvatar(
                            radius: 9,
                            backgroundColor: kBlackColor,
                          ),
                        ],
                      )),
                );
              },
            ),
          ),
          const SizedBox(
            height: 18,
          ),
        ],
      )),
    );
  }
}
