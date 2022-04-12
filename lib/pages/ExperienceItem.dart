import 'package:flutter/material.dart';
import 'package:tugas_pertemuan3_ramdan/utils/constants.dart';
import 'package:tugas_pertemuan3_ramdan/utils/helpers.dart';

class ExperienceItem extends StatelessWidget {
  final Color bgColor;
  final String position, company, type, location, period, image;

  const ExperienceItem({
    Key? key,
    required this.bgColor,
    required this.position,
    required this.company,
    required this.type,
    required this.location,
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
            color: COLOR_GREY_SHADE.withAlpha(100),
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
              Text(position, style: themeData.textTheme.headline3),
              spacingV(2),
              Text("${company} • ${type} ", style: themeData.textTheme.bodyText1),
              spacingV(2),
              Text(period, style: themeData.textTheme.headline5),
              Text(location, style: themeData.textTheme.headline5),
            ],
          )
        ],
      ),
    );
  }
}
