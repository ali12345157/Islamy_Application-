import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';

import '../app_colors.dart';
import '../pro/app_config_provider.dart';

class SebhaTab extends StatefulWidget {
  @override
  _SebhaTabState createState() => _SebhaTabState();
}

class _SebhaTabState extends State<SebhaTab> {
  int counter = 0;
  double rotationAngle = 0.0;

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<AppConfigProvider>(context);
    List<String> phrases = [
      AppLocalizations.of(context)!.subhan_allah,
      AppLocalizations.of(context)!.alhamdulillah,
      AppLocalizations.of(context)!.la_ilaha_illallah,
      AppLocalizations.of(context)!.allahu_Akbar,
    ];

    return Column(
      children: [
        GestureDetector(
          onTap: incrementCounter,
          child: Transform.rotate(
            angle: rotationAngle,
            child: provider.isDarkMode()
                ? Image.asset('assets/image/sebha_dark.png')
                : Image.asset('assets/image/sebha_logo.png'),
          ),
        ),
        Text(
          AppLocalizations.of(context)!.number_of_praises,
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.bodyMedium,
        ),
        Container(
          alignment: Alignment.center,
          padding: EdgeInsets.all(10.0),
          margin: EdgeInsets.symmetric(horizontal: 160.0, vertical: 10),
          decoration: BoxDecoration(
            color: provider.isDarkMode()
                ? AppColors.yellowColor
                : AppColors.primaryLightColor,
            borderRadius: BorderRadius.circular(15.0),
          ),
          child: Text(
            '$counter',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 24.0,
              color: AppColors.blackColor,
            ),
          ),
        ),
        Container(
          alignment: Alignment.center,
          padding: EdgeInsets.all(10.0),
          margin: EdgeInsets.symmetric(horizontal: 110.0, vertical: 60),
          decoration: BoxDecoration(
            color: provider.isDarkMode()
                ? AppColors.yellowColor
                : AppColors.primaryLightColor,
            borderRadius: BorderRadius.circular(15.0),
          ),
          child: Text(
            getCurrentPhrase(phrases),
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 24.0,
              color: AppColors.blackColor,
            ),
          ),
        ),
        ElevatedButton(
          onPressed: resetTasbeeh,
          child: Text(AppLocalizations.of(context)!.reset),
          style: ElevatedButton.styleFrom(
            foregroundColor: AppColors.blackColor,
            backgroundColor: provider.isDarkMode()
                ? AppColors.yellowColor
                : AppColors.primaryLightColor,
            textStyle: Theme.of(context).textTheme.titleLarge,
          ),
        ),
      ],
    );
  }

  void incrementCounter() {
    setState(() {
      counter++;
      rotationAngle += 15.0;
    });
  }

  String getCurrentPhrase(List<String> phrases) {
    int phraseIndex = (counter ~/ 33) % phrases.length;
    return phrases[phraseIndex];
  }

  void resetTasbeeh() {
    setState(() {
      counter = 0;
      rotationAngle = 0.0;
    });
  }
}
