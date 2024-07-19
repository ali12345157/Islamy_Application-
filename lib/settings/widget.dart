import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';

import '../pro/condig.dart';

class MyWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<Config>(context);

    return Container(
      margin: const EdgeInsets.all(15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          InkWell(
            onTap: () {
              provider.changeLanguage('en');
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  AppLocalizations.of(context)!.english,
                  style: const TextStyle(fontSize: 25),
                ),
                if (provider.appLanguage == 'en') const Icon(Icons.check),
              ],
            ),
          ),
          const SizedBox(height: 20),
          InkWell(
            onTap: () {
              provider.changeLanguage('ar');
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  AppLocalizations.of(context)!.arabic,
                  style: const TextStyle(fontSize: 25),
                ),
                if (provider.appLanguage == 'ar') const Icon(Icons.check),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
