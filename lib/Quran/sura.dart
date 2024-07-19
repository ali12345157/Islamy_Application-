import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Sura extends StatefulWidget {
  static const String routeName = 'Sura';

  @override
  State<Sura> createState() => _SuraState();
}

class _SuraState extends State<Sura> {
  List<String> verses = [];

  @override
  Widget build(BuildContext context) {
    final SuraArguments args = ModalRoute.of(context)?.settings.arguments as SuraArguments;
    if (verses.isEmpty) {
      loadfile(args.index);
    }
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text(
          args.name,
          style: TextStyle(fontSize: 30),
        ),
        centerTitle: true,
      ),
      body: verses.isEmpty
          ? Center(child: CircularProgressIndicator())
          : Stack(
        children: [
          Image.asset(
            'assets/photos/background.png',
            width: double.infinity,
            height: double.infinity,
            fit: BoxFit.fill,
          ),
          Container(color:Color(0xffB7935F),margin: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width*0.06,vertical: MediaQuery.of(context).size.height*0.05),
            child: ListView.separated(separatorBuilder: (context, index) {
            return  Divider(thickness: 1.5,);
            },
              itemBuilder: (context, index) {
                return Text(
                  verses[index],
                  style: TextStyle(fontSize: 25),
                );
              },
              itemCount: verses.length,
            ),
          ),
        ],
      ),
    );
  }

  void loadfile(int index) async {
    String content = await rootBundle.loadString('assets/files/${index + 1}.txt');
    List<String> lines = content.split('\n');
    for (int i = 0; i < lines.length; i++) {
      lines[i] = '${lines[i]} (${i + 1})';
    }
    verses = lines;
    setState(() {});
  }
}

class SuraArguments {
  final String name;
  final int index;

  SuraArguments({required this.name, required this.index});
}
