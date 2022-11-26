import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:manag_app/utils/constants.dart';

class WalletScreenTab extends StatefulWidget {
  const WalletScreenTab({super.key});

  @override
  State<WalletScreenTab> createState() => _WalletScreenTabState();
}

class _WalletScreenTabState extends State<WalletScreenTab> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    // return const Center(
    //   child: Text("Wallet"),
    // );
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 25, left: 20),
            child: SizedBox(
              height: 45,
              width: double.infinity,
              child: ListView(
                physics: BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                children: [
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        print('vegan');
                      });
                    },
                    child: Container(
                      width: 105,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          FaIcon(FontAwesomeIcons.leaf, color: Colors.green),
                          SizedBox(width: 10),
                          Text(
                            'Vegan',
                            style: GoogleFonts.poppins(
                                fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        print('Beef');
                      });
                    },
                    child: Container(
                      width: 105,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(FontAwesomeIcons.bowlFood,
                              color: Colors.deepOrange),
                          SizedBox(width: 10),
                          Text(
                            'Beef',
                            style: GoogleFonts.poppins(
                                fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        print('coffe');
                      });
                    },
                    child: Container(
                      width: 105,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.local_drink_sharp, color: Colors.brown),
                          SizedBox(width: 10),
                          Text(
                            'Coffe',
                            style: GoogleFonts.poppins(
                                fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        print('Donuts');
                      });
                    },
                    child: Container(
                      width: 105,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.donut_small, color: Colors.pink),
                          SizedBox(width: 10),
                          Text(
                            'Donuts',
                            style: GoogleFonts.poppins(
                                fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        print('Ice Cream');
                      });
                    },
                    child: Container(
                      width: 105,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.icecream, color: Colors.orange),
                          SizedBox(width: 5),
                          Text(
                            'Cream',
                            style: GoogleFonts.poppins(
                                fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                ],
              ),
            ),
          ),
        ],
      ),
    ));
  }
}
