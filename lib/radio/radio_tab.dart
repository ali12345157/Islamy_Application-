import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';

import '../pro/app_config_provider.dart';

class RadioTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<AppConfigProvider>(context);
    return Column(
      children: [
        Expanded(flex: 2, child: Image.asset('assets/image/radio_logo.png')),
        Expanded(
          child: Column(
            children: [
              Text(
                AppLocalizations.of(context)!.quran_Radio,
                style: Theme.of(context).textTheme.bodyMedium,
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  provider.isDarkMode()
                      ? Image.asset('assets/image/prev_dark.png')
                      : Image.asset('assets/image/icon_prev.png'),
                  provider.isDarkMode()
                      ? Image.asset('assets/image/play_dark.png')
                      : Image.asset('assets/image/icon_play.png'),
                  provider.isDarkMode()
                      ? Image.asset('assets/image/next_dark.png')
                      : Image.asset('assets/image/icon_next.png'),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
