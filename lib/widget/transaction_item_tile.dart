import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:manag_app/data/user.dart';
import 'package:manag_app/utils/constants.dart';

class TransactionItemTile extends StatelessWidget {
  final Transaction transaction;

  const TransactionItemTile({Key? key, required this.transaction})
      : super(key: key);
  //super.key});

  String getSign(TransactionType type) {
    switch (type) {
      case TransactionType.inflow:
        return "+";
      case TransactionType.outflow:
        return "+";
    }
  }

  Color getRandomBgColor() {
    return Color(Random().nextInt(0XFF000000));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: defaultSpacing / 2),
      decoration: const BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.black12,
              offset: Offset.zero,
              blurRadius: 10,
              spreadRadius: 4,
            )
          ],
          color: background,
          borderRadius: BorderRadius.all(Radius.circular(defaultRadius))),
      child: ListTile(
        leading: Container(
            padding: const EdgeInsets.all(defaultSpacing / 2),
            decoration: BoxDecoration(
                color: getRandomBgColor(),
                borderRadius: BorderRadius.all(
                  Radius.circular(defaultRadius / 2),
                )),
            child: transaction.cateregoryType == ItemCateregoryType.fashion
                ? const Icon(Icons.supervised_user_circle_sharp)
                : Icon(Icons.house)),
        title: Text(transaction.itemCategoryName,
            style: Theme.of(context)
                .textTheme
                .bodySmall
                ?.copyWith(color: fontHeading, fontSize: fontSizeTitle)),
        subtitle: Text(
          transaction.itemName,
          style: Theme.of(context).textTheme.bodyText1?.copyWith(
              color: fontSubHeading,
              fontSize: fontSizeBody,
              fontWeight: FontWeight.w700),
        ),
        trailing: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(
              "${getSign(transaction.transactionType)} ${transaction.amount}",
              style: Theme.of(context).textTheme.bodyText1?.copyWith(
                  color: transaction.transactionType == TransactionType.outflow
                      ? Colors.red
                      : fontHeading,
                  fontSize: fontSizeBody),
            ),
            Text(
              transaction.date,
              style: Theme.of(context).textTheme.bodyText1?.copyWith(
                    color: fontSubHeading,
                    fontSize: fontSizeBody,
                    fontWeight: FontWeight.w700,
                  ),
            ),
          ],
        ),
      ),
    );
  }
}
