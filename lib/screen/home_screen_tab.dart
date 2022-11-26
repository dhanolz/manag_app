// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:manag_app/data/user.dart';
import 'package:manag_app/utils/constants.dart';
import 'package:manag_app/widget/income_expense_card.dart';
import 'package:manag_app/widget/transaction_item_tile.dart';

// class ExpenseData {
//   final String label;
//   final String amount;
//   final IconData icon;

//   const ExpenseData(this.label, this.amount, this.icon);
// }

class HomeScreenTab extends StatefulWidget {
  const HomeScreenTab({super.key});

  @override
  State<HomeScreenTab> createState() => _HomeScreenTabState();
}

class _HomeScreenTabState extends State<HomeScreenTab> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(defaultSpacing),
        child: Column(
            // mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            // children: [
            //   SingleChildScrollView(
            // children: [
            //   child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [appYellowSoft, appPrimary.withOpacity(0.2)])),
              ),
              const SizedBox(
                height: defaultSpacing * 4,
              ),

              // ListTile(
              //   title: Text("Hey Ramadhani"),
              //   leading: ClipRRect(
              //       borderRadius:
              //           const BorderRadius.all(Radius.circular(defaultRadius)),
              //       child: Image.network(
              //           "https://cdn-icons-png.flaticon.com/512/4333/4333609.png")),
              //   // ignore: prefer_const_constructors
              //   trailing: Icon(Icons.notifications),
              //   // ignore: prefer_const_constructors
              //   // child: Icon(Icons.notifications)),
              // ),
              const SizedBox(
                height: defaultSpacing,
              ),
              ListTile(
                title: Text("Hey! ${userdate.name}"),
                leading: ClipRRect(
                    borderRadius:
                        const BorderRadius.all(Radius.circular(defaultRadius)),
                    child: Image.network(
                        "https://cdn-icons-png.flaticon.com/512/4333/4333609.png")),
                // ignore: prefer_const_constructors
                trailing: Icon(Icons.notifications),
                // ignore: prefer_const_constructors
                // child: Icon(Icons.notifications)),
              ),
              Center(
                child: Column(
                  children: [
                    Text(
                      "${userdate.totalBalance}",
                      style: Theme.of(context).textTheme.titleLarge?.copyWith(
                          fontSize: fontSizeHeading,
                          fontWeight: FontWeight.w800),
                    ),
                    const SizedBox(
                      height: defaultSpacing / 2,
                    ),
                    Text(
                      'Total Balance',
                      style: Theme.of(context)
                          .textTheme
                          .bodyText1
                          ?.copyWith(color: fontSubHeading),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: defaultSpacing * 2,
              ),

              //IncomeExpenseCard()
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                      child: IncomeExpenseCard(
                    expenseData: ExpenseData("Income", "${userdate.inflow}",
                        Icons.arrow_upward_rounded),
                  )),
                  const SizedBox(
                    width: defaultSpacing,
                  ),
                  Expanded(
                      child: IncomeExpenseCard(
                          expenseData: ExpenseData(
                              "Expenditure",
                              "${userdate.outflow}",
                              Icons.arrow_downward_rounded)))
                ],
              ),
              const SizedBox(
                height: defaultSpacing * 2,
              ),
              Text(
                'Recent Transactions',
                style: Theme.of(context)
                    .textTheme
                    .headline6
                    ?.copyWith(fontWeight: FontWeight.w700),
              ),
              const SizedBox(
                height: defaultSpacing * 2,
              ),
              const Text(
                'Today',
                style: TextStyle(color: fontSubHeading, fontSize: 20),
              ),
              ...userdate.transactions.map((transaction) =>
                  TransactionItemTile(transaction: transaction)),
              const SizedBox(
                height: defaultSpacing,
              ),
              const Text(
                'Yesterday',
                style: TextStyle(color: fontSubHeading, fontSize: 20),
              ),
              ...transactions2.map((transaction) =>
                  TransactionItemTile(transaction: transaction))

              // Padding(
              //   padding: EdgeInsets.only(top: 30),
              // ),
              //  ...userdate.transactions.map((Transaction) => TransactionItemTile(transaction:transactions))
            ]),
      ),
    );
  }
}
