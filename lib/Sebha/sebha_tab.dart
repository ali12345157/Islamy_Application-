import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class SebhaTab extends StatefulWidget {
  static const String routeName = 'sebha';

  @override
  State<SebhaTab> createState() => _SebhaTabState();
}

class _SebhaTabState extends State<SebhaTab> {
  double _rotationAngle = 0.0;
  int counter = 0;

  void _rotateImage() {
    setState(() {
      _rotationAngle += 0.5;  // Rotate the image by 0.5 radians
      print('Image rotated. Current angle: $_rotationAngle');
    });
  }

  void increase() {
    setState(() {
      counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: GestureDetector(
            onTap: () {
              _rotateImage();
              increase();
            },
            child: Transform.rotate(
              angle: _rotationAngle,
              child: Image.asset('assets/photos/body_of_seb7a.png'),
            ),
          ),
        ),
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
            '$counter',
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
            counter <= 33
                ? AppLocalizations.of(context)!.subhan_allah
                : counter <= 66
                ? AppLocalizations.of(context)!.alhamd_lilah
                : counter <= 99
                ? AppLocalizations.of(context)!.there_is_no_god_but_god
                : counter <= 132
                ? AppLocalizations.of(context)!.allah_akbar
                : '',
            // Fallback text if counter exceeds 132
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
