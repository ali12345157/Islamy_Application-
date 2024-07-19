import 'package:flutter/material.dart';
import 'package:islamy/Quran/sura.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class Quran extends StatelessWidget {
  final String name;
  Quran({required this.name});

  final List<String> names = [
    "الفاتحه", "البقرة", "آل عمران", "النساء", "المائدة", "الأنعام",
    "الأعراف", "الأنفال", "التوبة", "يونس", "هود", "يوسف", "الرعد",
    "إبراهيم", "الحجر", "النحل", "الإسراء", "الكهف", "مريم", "طه",
    "الأنبياء", "الحج", "المؤمنون", "النّور", "الفرقان", "الشعراء",
    "النّمل", "القصص", "العنكبوت", "الرّوم", "لقمان", "السجدة",
    "الأحزاب", "سبأ", "فاطر", "يس", "الصافات", "ص", "الزمر",
    "غافر", "فصّلت", "الشورى", "الزخرف", "الدّخان", "الجاثية",
    "الأحقاف", "محمد", "الفتح", "الحجرات", "ق", "الذاريات",
    "الطور", "النجم", "القمر", "الرحمن", "الواقعة", "الحديد",
    "المجادلة", "الحشر", "الممتحنة", "الصف", "الجمعة", "المنافقون",
    "التغابن", "الطلاق", "التحريم", "الملك", "القلم", "الحاقة",
    "المعارج", "نوح", "الجن", "المزّمّل", "المدّثر", "القيامة",
    "الإنسان", "المرسلات", "النبأ", "النازعات", "عبس", "التكوير",
    "الإنفطار", "المطفّفين", "الإنشقاق", "البروج", "الطارق",
    "الأعلى", "الغاشية", "الفجر", "البلد", "الشمس", "الليل",
    "الضحى", "الشرح", "التين", "العلق", "القدر", "البينة",
    "الزلزلة", "العاديات", "القارعة", "التكاثر", "العصر",
    "الهمزة", "الفيل", "قريش", "الماعون", "الكوثر", "الكافرون",
    "النصر", "المسد", "الإخلاص", "الفلق", "الناس"
  ];

  static const String routeName = 'Quran';

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          'assets/photos/background.png',
          width: double.infinity,
          height: double.infinity,
          fit: BoxFit.fill,
        ),
        Scaffold(
          backgroundColor: Colors.transparent,
          body: Column(
            children: [
              Image.asset('assets/photos/quran_image.png'),
              Divider(
                color: Color(0xffB7935F),
                height: 0.5,
                thickness: 3,
              ),
              Container(
                child: Text(
                  AppLocalizations.of(context)!.sura_name,
                  style: TextStyle(color: Color(0xffB7935F), fontSize: 30),
                ),
              ),
              Divider(
                color: Color(0xffB7935F),
                height: 0.5,
                thickness: 3,
              ),
              Expanded(
                child: ListView.separated(
                  separatorBuilder: (context, index) {
                    return Divider(
                      color: Color(0xffB7935F),
                      height: 0.5,
                      thickness: 1,
                    );
                  },
                  itemBuilder: (context, index) {
                    return InkWell(
                      onTap: () {
                        Navigator.of(context).pushNamed(
                          Sura.routeName,
                          arguments: SuraArguments(name: names[index], index: index),
                        );
                      },
                      child: Text(
                        names[index],
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 30),
                      ),
                    );
                  },
                  itemCount: names.length,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
