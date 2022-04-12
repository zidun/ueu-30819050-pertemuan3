import 'package:flutter/material.dart';
import 'package:tugas_pertemuan3_ramdan/utils/constants.dart';

List<Experience> getExperience() {
  List<Experience> listExperience = [
    Experience(
        COLOR_GREY_DARK,
        "Frontend Developer (React Native)",
        "Aleph Labs Indonesia",
        "Full-Time",
        "Jakarta, Indonesia",
        "May 2021 - Present",
        "https://media-exp1.licdn.com/dms/image/C560BAQFFogV2WMOUVQ/company-logo_100_100/0/1625892867680?e=2147483647&v=beta&t=TNq0Q9KG3fnl03yx2ptqPUfHALU8T450yueSmP-38vw"
    ),
    Experience(
        COLOR_GREY_DARK,
        "React Native Developer",
        "Indonusa Telemedia | TRANSVISION",
        "Part-Time",
        "Jakarta, Indonesia",
        "Nov 2020 - Aug 2021 • 10 months",
        "https://media-exp1.licdn.com/dms/image/C560BAQGmdm3GWZ5WIA/company-logo_100_100/0/1633601694100?e=2147483647&v=beta&t=VuRuwaEEha7nZ6bkg1lsw_XjDRoOJLGod2SvfNX6QtQ"
    ),
    Experience(
        COLOR_GREY_DARK,
        "React Native Developer",
        "PT. NST",
        "Full-Time",
        "Pasar Minggu, Jakarta Selatan",
        "Nov 2019 - May 2021 • 1 year 7 months",
        "https://media-exp1.licdn.com/dms/image/C560BAQFCmpxVq9KtDw/company-logo_100_100/0/1642148720534?e=2147483647&v=beta&t=laXiGrzfV7iHK4qtb1Zbxca06pakoCdwHVx2g3mkmqI"
    ),
    Experience(
        COLOR_GREY_DARK,
        "React Native Developer",
        "Soundfren",
        "Part-Time",
        "Jakarta, Indonesia",
        "Dec 2019 - Feb 2021 • 1 year 3 months",
        "https://media-exp1.licdn.com/dms/image/C510BAQFIfWId8-laIA/company-logo_100_100/0/1547105619756?e=2147483647&v=beta&t=tjiu6hKT7r8VWBK6tUZW0QsOad05rL18x5479RsTdQA"
    ),
    Experience(
        COLOR_GREY_DARK,
        "React Native Developer",
        "Ericsson",
        "Part-Time",
        "Jakarta, Indonesia",
        "Mar 2020 - Aug 2020 • 6 months",
        "https://media-exp1.licdn.com/dms/image/C4E0BAQGm9tH6lKJ-Gg/company-logo_100_100/0/1632729373424?e=2147483647&v=beta&t=_c3d69VHlBaAzJiHcF0NBuZ8X52xe6AO6MhZcEGoArk"
    ),
  ];
  return listExperience;
}

class Experience {
  final Color bgColor;
  final String position, company, type, location, period, image;

  Experience(
      this.bgColor,
      this.position,
      this.company,
      this.type,
      this.location,
      this.period,
      this.image);
}

List<Education> getEducation() {
  List<Education> listEducation = [
    Education(COLOR_WHITE, "INABA Jakarta", "Information System", "2019 - 2023", "https://media-exp1.licdn.com/dms/image/C560BAQEI20Me3pBLMQ/company-logo_200_200/0/1623500116092?e=2147483647&v=beta&t=74Za-zmpUqyIUi3NuJQNvWBK1sPSQlMNNgFcDVH2B-8"),
    Education(COLOR_WHITE, "SMK Wikrama Bogor", "Software Enginering", "2015 - 2018", "https://media-exp1.licdn.com/dms/image/C510BAQG1Nyx-6PqmhQ/company-logo_200_200/0/1558518784151?e=2147483647&v=beta&t=3-w5PmDq9kcHRq80fNw6YUmVOkzaJapaCtQEZWrdMlU"),
  ];
  return listEducation;
}

class Education {
  final Color bgColor;
  final String education, major, period, image;

  Education(this.bgColor, this.education, this.major, this.period, this.image);
}