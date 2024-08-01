import 'package:flutter/material.dart';
import 'package:islamy/quran/sura_detail.dart';

class ItemSura extends StatelessWidget {
  final String name;
  final int index;
  final String versesCount;

  ItemSura(
      {required this.name, required this.index, required this.versesCount});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).pushNamed(
          SuraDetail.routName,
          arguments: SuraDetailArgs(name: name, index: index),
        );
      },
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            Expanded(
              child: Column(
                children: [
                  Text(
                    versesCount,
                    style: Theme.of(context).textTheme.bodySmall,
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
            Expanded(
              child: Column(
                children: [
                  Text(
                    name,
                    style: Theme.of(context).textTheme.bodySmall,
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
