import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class SebhaTab extends StatefulWidget {
  static const String routeName = 'sebha';

  @override
  State<SebhaTab> createState() => _SebhaTabState();
}

class _SebhaTabState extends State<SebhaTab> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(child: Image.asset('assets/image/sebha_logo.png')),
        Text(
          AppLocalizations.of(context)!.tasbih_num,
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.bodyMedium,
        ),
        Container(
          alignment: Alignment.center,
          padding: EdgeInsets.all(10.0),
          margin: EdgeInsets.symmetric(horizontal: 160.0, vertical: 10),
          decoration: BoxDecoration(
            color: Color(0xffB7935F),
            borderRadius: BorderRadius.circular(15.0),
          ),
          child: Text(
            '30',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 24.0,
              color: Colors.black,
            ),
          ),
        ),
        Container(
          alignment: Alignment.center,
          padding: EdgeInsets.all(10.0),
          margin: EdgeInsets.symmetric(horizontal: 110.0, vertical: 60),
          decoration: BoxDecoration(
            color: Color(0xffB7935F),
            borderRadius: BorderRadius.circular(15.0),
          ),
          child: Text(
            AppLocalizations.of(context)!.subhan_allah,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 24.0,
              color: Colors.black,
            ),
          ),
        ),
      ],
    );
  }
}
