import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
class RadioTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(flex: 2,child: Image.asset('assets/photos/radio_image.png')),
        Expanded(
          child: Column(
            children: [
              Text(  AppLocalizations.of(context)!.holy_quran_radio, style: Theme.of(context).textTheme.bodyMedium,),

              SizedBox(height: 20,),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image.asset('assets/photos/Group 5.png'),
                  // Image.asset('assets/images/icon_play.png'),
                  // Image.asset('assets/images/icon_next.png'),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
