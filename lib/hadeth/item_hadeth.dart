import 'package:flutter/material.dart';
import 'package:islamy/hadeth/hadeth_detail.dart';
import 'package:islamy/hadeth/hadeth_tab.dart';

class ItemHadeth extends StatelessWidget {
  Hadeth hadeth;

  ItemHadeth({
    required this.hadeth,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context)
            .pushNamed(HadethDetail.routName, arguments: hadeth);
      },
      child: Text(
        hadeth.title,
        style: Theme.of(context).textTheme.bodySmall,
        textAlign: TextAlign.center,
      ),
    );
  }
}
