import 'package:flutter/material.dart';

class ItemSuraDetail extends StatelessWidget {
  String content;

  int index;

  ItemSuraDetail({required this.content, required this.index});

  @override
  Widget build(BuildContext context) {
    return Text(
      '$content (${index + 1})',
      textAlign: TextAlign.center,
      textDirection: TextDirection.rtl,
      style: Theme.of(context).textTheme.bodySmall,
    );
  }
}
