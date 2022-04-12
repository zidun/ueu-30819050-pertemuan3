import 'package:flutter/material.dart';
import 'package:tugas_pertemuan3_ramdan/model/model.dart';
import 'package:tugas_pertemuan3_ramdan/pages/EducationItem.dart';
import 'package:tugas_pertemuan3_ramdan/pages/ExperienceItem.dart';
import 'package:tugas_pertemuan3_ramdan/utils/constants.dart';
import 'package:tugas_pertemuan3_ramdan/utils/data.dart';
import 'package:tugas_pertemuan3_ramdan/utils/helpers.dart';

class ProfilePages extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final ThemeData themeData = Theme.of(context);
    double padding = 24;
    final sizePadding = EdgeInsets.symmetric(horizontal: padding);

    List<Experience> experienceData = getExperience();
    List<Education> educationdata = getEducation();

    return Scaffold(
      body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          physics: const BouncingScrollPhysics(),
          child: Container(
            width: size.width,
            color: COLOR_GREY,
            padding: EdgeInsets.only(top: 60),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                    padding: sizePadding,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        ClipRRect(
                            borderRadius: BorderRadius.circular(24),
                            child: Container(
                                width: size.width,
                                height: 240,
                                decoration : const BoxDecoration(
                                  image: DecorationImage(
                                    fit: BoxFit.fitWidth,
                                    image: AssetImage(DATA_DIRI_PHOTOS),
                                  ),
                                )
                            )
                        ),
                        spacingV(16),
                        Text(DATA_DIRI_NAME, style: themeData.textTheme.headline1),
                        spacingV(8),
                        Text(DATA_DIRI_POSITION, style: themeData.textTheme.headline3),
                        spacingV(6),
                        Text(DATA_DIRI_LOCATION, style: themeData.textTheme.headline6),
                      ],
                    )
                ),
                spacingV(padding),
                borderSection(size.width, 12.0, COLOR_GREY_DARK),
                spacingV(16),
                Padding(
                    padding: sizePadding,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("About Me", style: themeData.textTheme.headline3),
                        spacingV(12),
                        Text(DATA_DIRI_DESC, style: themeData.textTheme.subtitle1),
                        spacingV(padding),
                      ],
                    ),
                  ),
                borderSection(size.width, 12.0, COLOR_GREY_DARK),
                spacingV(padding),
                Padding(
                    padding: sizePadding,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Experiences", style: themeData.textTheme.headline3),
                      ],
                    ),
                  ),
                Container(
                  child: ListView.builder(
                      padding: EdgeInsets.all(24),
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      itemCount: experienceData.length,
                      itemBuilder: (context, item) {
                        return ExperienceItem(
                            bgColor: experienceData[item].bgColor,
                            position: experienceData[item].position,
                            company: experienceData[item].company,
                            type: experienceData[item].type,
                            location: experienceData[item].location,
                            period: experienceData[item].period,
                            image: experienceData[item].image
                        );
                      }),
                ),
                borderSection(size.width, 12.0, COLOR_GREY_DARK),
                spacingV(padding),
                Padding(
                  padding: sizePadding,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Educations", style: themeData.textTheme.headline3),
                    ],
                  ),
                ),
                Container(
                  child: ListView.builder(
                      padding: EdgeInsets.all(24),
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      itemCount: educationdata.length,
                      itemBuilder: (context, item) {
                        return EducationItem(
                            bgColor: educationdata[item].bgColor,
                            education: educationdata[item].education,
                            major: educationdata[item].major,
                            period: educationdata[item].period,
                            image: educationdata[item].image
                        );
                      }),
                ),
              ],
            ),
          )
        )
    );
  }
}
