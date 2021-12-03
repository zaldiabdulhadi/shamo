import 'package:bwa_shamo/theme.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: const BouncingScrollPhysics(),
      children: [
        header(),
        categories(),
      ],
    );
  }
}

Widget categories() {
  return Container(
    margin: const EdgeInsets.only(top: defaultMargin, left: defaultMargin),
    child: SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 12),
            margin: const EdgeInsets.only(right: 16),
            decoration: BoxDecoration(
              color: primaryColor,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Text(
              'All Shoes',
              style: primaryColorTextStyle.copyWith(
                fontSize: 13,
                fontWeight: mediumFontWeight,
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(right: 16),
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 12),
            decoration: BoxDecoration(
              color: Colors.transparent,
              border: Border.all(color: subtitleColor),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Text(
              'Running',
              style: subtitleTextStyle.copyWith(
                fontSize: 13,
                fontWeight: mediumFontWeight,
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(right: 16),
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 12),
            decoration: BoxDecoration(
              color: Colors.transparent,
              border: Border.all(color: subtitleColor),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Text(
              'Training',
              style: subtitleTextStyle.copyWith(
                fontSize: 13,
                fontWeight: mediumFontWeight,
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(right: 16),
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 12),
            decoration: BoxDecoration(
              color: Colors.transparent,
              border: Border.all(color: subtitleColor),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Text(
              'Basket',
              style: subtitleTextStyle.copyWith(
                fontSize: 13,
                fontWeight: mediumFontWeight,
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(right: 16),
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 12),
            decoration: BoxDecoration(
              color: Colors.transparent,
              border: Border.all(color: subtitleColor),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Text(
              'Hiking',
              style: subtitleTextStyle.copyWith(
                fontSize: 13,
                fontWeight: mediumFontWeight,
              ),
            ),
          ),
        ],
      ),
    ),
  );
}

Widget header() {
  return Container(
    margin: const EdgeInsets.only(
      top: defaultMargin,
      right: defaultMargin,
      left: defaultMargin,
    ),
    child: Row(
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Hallo, Zaldi',
                overflow: TextOverflow.visible,
                maxLines: 1,
                style: primaryColorTextStyle.copyWith(
                  fontSize: 24,
                  fontWeight: semiBoldFontWeight,
                ),
              ),
              Text(
                '@zalxzy',
                style: subtitleTextStyle.copyWith(
                  color: subtitleColor,
                  fontWeight: lightFontWeight,
                ),
              )
            ],
          ),
        ),
        Container(
          width: 54,
          height: 54,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            image: DecorationImage(
              image: AssetImage('assets/profile_image.png'),
            ),
          ),
        ),
      ],
    ),
  );
}
