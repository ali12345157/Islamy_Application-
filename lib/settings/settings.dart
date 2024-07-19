import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import 'package:islamy/settings/widget.dart';

class SettingsTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.transparent,
      child: Stack(
        children: [
          Image.asset(
            'assets/photos/background.png',
            width: double.infinity,
            height: double.infinity,
            fit: BoxFit.fill,
          ),
          Scaffold(
            backgroundColor: Colors.transparent,
            body: Container(
              alignment: Alignment.topCenter,
              child: Text(
                AppLocalizations.of(context)!.language,
                style: TextStyle(fontSize: 25),
              ),
            ),
          ),
          InkWell(
            onTap: () {
              showLanguages(context);
            },
            child: Container(
              margin: EdgeInsets.all(40),
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: Color(0xffB7935F),
                borderRadius: BorderRadius.circular(15),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(AppLocalizations.of(context)!.english),
                  Icon(Icons.arrow_drop_down, size: 35),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  void showLanguages(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (context) => MyWidget(),
    );
  }
}