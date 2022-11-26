import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:manag_app/utils/constants.dart';

class StatScreenTab extends StatelessWidget {
  const StatScreenTab({super.key});

  @override
  Widget build(BuildContext context) {
    // return const Center(
    //   child: Text("Statistic"),
    // );
    return Scaffold(
      body: Stack(
        children: [
          // background
          Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [appYellowSoft, appPrimary.withOpacity(0.2)])),
          ),
        ],
      ),
      // appBar: AppBar(
      //   title: Text("Expense"),
      //   elevation: 0,
      //   backgroundColor: Color(0xFF3A8891),
      //   automaticallyImplyLeading: false,
      //   leading: const Icon(
      //     Icons.arrow_back_ios,
      //     color: fontSubHeading,
      //   ),
      // ),
      // body: Center(
      //   child: ButtonBar(
      //     alignment: MainAxisAlignment.spaceBetween,
      //     children: <Widget>[],
      //   ),
      // ),

      // body: SafeArea(
      //     child: Column(
      //   children: [
      //     //Expanded(
      //     // child: Center(
      //     //   child: Padding(
      //     //   //   padding: const EdgeInsets.only(
      //     //   //       left: defaultSpacing, right: defaultSpacing),
      //     //   //   child: Column(
      //     //   //     children: [
      //     //   //       Image.network(
      //     //   //           "https://i.pinimg.com/564x/78/9c/23/789c23c6e6713091ed180589656c3bda.jpg")
      //     //   //     ],
      //     //   //   ),
      //     //   // ),
      //     //       // ),
      //     //       )
      //   ],
      // )),
    );
  }
}
