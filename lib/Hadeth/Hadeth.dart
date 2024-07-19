import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class Hadeth extends StatefulWidget {
  static const String routeName = 'hadeth';

  @override
  State<Hadeth> createState() => _HadethState();
}

class _HadethState extends State<Hadeth> {
  List<data> hadeth = [];

  @override
  Widget build(BuildContext context) {
    loadhadeth();

    return Column(
      children: [
        Image.asset('assets/photos/ahadeth_image.png'),
        Divider(
          color: Color(0xffB7935F),
          height: 0.5,
          thickness: 3,
        ),
        Container(
          child: Text(
    AppLocalizations.of(context)!.hadeth_name,
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
            itemBuilder: (BuildContext context, int index) {
              return ListTile(
                title: Text(hadeth[index].title),
                subtitle: Text(hadeth[index].content.join('\n')),
              );
            },
            itemCount: hadeth.length,
          ),
        ),
      ],
    );
  }

  void loadhadeth() async {
    String hadethContent = await rootBundle.loadString('assets/files/ahadeth.txt');
    List<String> hadethList = hadethContent.split('#\r\n');
    for (int i = 0; i < hadethList.length; i++) {
      List<String> hadethLines = hadethList[i].split('\n');
      String title = hadethLines[0];
      hadethLines.removeAt(0);
      data hadethItem = data(title: title, content: hadethLines);
      hadeth.add(hadethItem);
      setState(() {

      });
    }
  }
}

class data {
  String title;
  List<String> content;

  data({required this.title, required this.content});
}
