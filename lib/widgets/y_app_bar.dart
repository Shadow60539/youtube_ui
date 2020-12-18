import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:friday/core/colors.dart';

class YAppBar extends StatelessWidget {
  const YAppBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 52,
      margin: const EdgeInsets.symmetric(horizontal: 18, vertical: 16),
      decoration: BoxDecoration(
          color: kWhiteColor, borderRadius: BorderRadius.circular(10)),
      child: Row(
        children: [
          const SizedBox(
            width: 21,
          ),
          SvgPicture.asset(
            'assets/logo.svg',
            height: 17,
          ),
          const Spacer(),
          const VerticalDivider(
            color: kLightGreyColor,
            indent: 13,
            endIndent: 13,
          ),
          const SizedBox(
            width: 8,
          ),
          const CircleAvatar(
            backgroundColor: kLightGreyColor,
            radius: 17 * 0.5,
          ),
          const SizedBox(
            width: 16,
          ),
        ],
      ),
    );
  }
}
