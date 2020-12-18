import 'package:flutter/material.dart';
import 'package:friday/core/colors.dart';

class VideoContent extends StatelessWidget {
  const VideoContent({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 460,
      padding: const EdgeInsets.only(top: 220),
      margin: const EdgeInsets.symmetric(
        horizontal: 18,
      ),
      decoration: BoxDecoration(
          color: kWhiteColor,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(color: kWhiteColor, blurRadius: 34),
          ]),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 7,
            margin: const EdgeInsets.symmetric(horizontal: 20),
            decoration: BoxDecoration(
                color: kDarkGreyColor, borderRadius: BorderRadius.circular(5)),
          ),
          const SizedBox(
            height: 7,
          ),
          Container(
            height: 7,
            width: MediaQuery.of(context).size.width * 0.5 - 40,
            margin: const EdgeInsets.symmetric(horizontal: 20),
            decoration: BoxDecoration(
                color: kDarkGreyColor, borderRadius: BorderRadius.circular(5)),
          ),
          const SizedBox(
            height: 15,
          ),
          Divider(
            color: kLightGreyColor.withOpacity(0.3),
            indent: 20,
            thickness: 2,
            endIndent: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 9),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: List.generate(
                4,
                (index) => CircleAvatar(
                  backgroundColor: kLightGreyColor,
                  radius: 24 * 0.5,
                ),
              ),
            ),
          ),
          Divider(
            color: kLightGreyColor.withOpacity(0.3),
            indent: 20,
            thickness: 2,
            endIndent: 20,
          ),
          const SizedBox(
            height: 15,
          ),
          ListTile(
            leading: CircleAvatar(
              backgroundColor: kDarkGreyColor,
              radius: 20,
            ),
            title: Container(
              height: 10,
              width: 75,
              decoration: BoxDecoration(
                  color: kDarkGreyColor,
                  borderRadius: BorderRadius.circular(5)),
            ),
            subtitle: Container(
              height: 10,
              width: 50,
              decoration: BoxDecoration(
                  color: kLightGreyColor,
                  borderRadius: BorderRadius.circular(5)),
            ),
            trailing: Container(
              height: 30,
              width: 95,
              decoration: BoxDecoration(boxShadow: [
                BoxShadow(
                  color: kRedColor.withOpacity(0.3),
                  offset: Offset(0, 5),
                  blurRadius: 16,
                )
              ]),
              child: FlatButton(
                onPressed: () {},
                color: kRedColor,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(43)),
                child: Material(),
              ),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Center(
            child: Container(
              height: 7,
              width: 50,
              decoration: BoxDecoration(
                  color: kLightGreyColor,
                  borderRadius: BorderRadius.circular(5)),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}
