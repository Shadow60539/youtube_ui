import 'package:flutter/material.dart';
import 'package:friday/core/colors.dart';

class VideoPlayer extends StatelessWidget {
  const VideoPlayer({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 190,
      margin: const EdgeInsets.symmetric(
        horizontal: 18,
      ),
      decoration: BoxDecoration(
          color: kBlackColor,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(color: kDarkGreyColor, blurRadius: 34),
          ]),
      child: Column(
        children: [
          Spacer(),
          CircleAvatar(
            backgroundColor: kWhiteColor.withOpacity(0.1),
            radius: 47 * 0.5,
          ),
          Spacer(),
          Padding(
            padding: const EdgeInsets.only(bottom: 20),
            child: Stack(
              children: [
                Container(
                  height: 6,
                  margin: const EdgeInsets.symmetric(horizontal: 21),
                  decoration: BoxDecoration(
                      color: kWhiteColor.withOpacity(0.1),
                      borderRadius: BorderRadius.circular(5)),
                ),
                Container(
                  height: 6,
                  width: MediaQuery.of(context).size.width * 0.5 - 42,
                  margin: const EdgeInsets.symmetric(horizontal: 21),
                  decoration: BoxDecoration(
                    color: kRedColor,
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
