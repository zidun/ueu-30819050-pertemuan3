import 'package:flutter/material.dart';
import 'package:tugas_pertemuan3_ramdan/utils/constants.dart';
import 'package:tugas_pertemuan3_ramdan/utils/helpers.dart';

class EducationItem extends StatelessWidget {
  final Color bgColor;
  final String education, major, period, image;

  const EducationItem({
    Key? key,
    required this.bgColor,
    required this.education,
    required this.major,
    required this.period,
    required this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ThemeData themeData = Theme.of(context);
    return Container(
      padding: EdgeInsets.all(12),
      margin: EdgeInsets.only(bottom: 16),
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: COLOR_BLACK.withAlpha(100),
            blurRadius: 12,
            offset: const Offset(0, 10),
            spreadRadius: 10,
          ),
        ],
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: 48,
            height: 48,
            margin: EdgeInsets.only(right: 12),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                image: NetworkImage(image),
              )
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              spacingV(4),
              Text(education, style: themeData.textTheme.headline4),
              spacingV(2),
              Text(major, style: themeData.textTheme.bodyText2),
              spacingV(2),
              Text(period, style: themeData.textTheme.bodyText2),
            ],
          )
        ],
      ),
    );
  }
}
