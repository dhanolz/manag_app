import 'package:flutter/material.dart';
// import 'package:flutter/src/widgets/container.dart';
// import 'package:flutter/src/widgets/framework.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:manag_app/utils/constants.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class StatScreenTab extends StatefulWidget {
  const StatScreenTab({super.key});

  @override
  State<StatScreenTab> createState() => _StatScreenTabState();
}

class _StatScreenTabState extends State<StatScreenTab> {
  @override
  Widget build(BuildContext context) {
    final List<SalesData> chartData = [
      SalesData(DateTime(2010), 35),
      SalesData(DateTime(2011), 28),
      SalesData(DateTime(2012), 34),
      SalesData(DateTime(2013), 32),
      SalesData(DateTime(2014), 40)
    ];
    var size = MediaQuery.of(context).size;
    // return const Center(
    //   child: Text("Wallet"),
    // );
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 60, left: 20),
              child: Center(
                child: Text(
                  "Expense",
                  style: GoogleFonts.poppins(
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                      color: fontDark),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30, left: 20),
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
                            // FaIcon(FontAwesomeIcons.leaf, color: Colors.green),
                            SizedBox(width: 10),
                            Text(
                              'Day',
                              style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 25,
                                  color: fontDarker),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(width: 10),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          print('Month');
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
                            // Icon(FontAwesomeIcons.bowlFood,
                            //     color: Colors.deepOrange),
                            SizedBox(width: 10),
                            Text(
                              'Month',
                              style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 25,
                                  color: fontDarker),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(width: 10),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          print('month');
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
                            // Icon(Icons.local_drink_sharp, color: Colors.brown),
                            SizedBox(width: 10),
                            Text(
                              'Year',
                              style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 25,
                                  color: fontDarker),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(width: 10),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          print('year');
                        });
                      },
                      child: Container(
                        width: 40,
                        decoration: BoxDecoration(
                          color: fontDark,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            // Icon(Icons.donut_small, color: Colors.pink),
                            SizedBox(width: 4),
                            Icon(
                              Icons.calendar_month_outlined,
                              color: Colors.white,
                            )
                            // Text(
                            //   'Donuts',
                            //   style: GoogleFonts.poppins(
                            //       fontWeight: FontWeight.w500, fontSize: 25),
                            // ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(width: 10),
                  ],
                ),
              ),
            ),
            Container(
              child: Container(
                child: SfCartesianChart(
                  primaryXAxis: DateTimeAxis(),
                  series: <ChartSeries>[
                    // Renders line chart
                    LineSeries<SalesData, DateTime>(
                        dataSource: chartData,
                        xValueMapper: (SalesData sales, _) => sales.year,
                        yValueMapper: (SalesData sales, _) => sales.sales)
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Text(
                    "Detail Transaction",
                    style: GoogleFonts.poppins(
                        fontSize: 25, fontWeight: FontWeight.w800),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30, left: 20),
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
                            // FaIcon(FontAwesomeIcons.leaf, color: Colors.green),
                            SizedBox(width: 10),
                            Text(
                              'ALL',
                              style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 20,
                                  color: fontDarker),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(width: 10),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          print('Month');
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
                            // Icon(FontAwesomeIcons.bowlFood,
                            //     color: Colors.deepOrange),
                            SizedBox(width: 10),
                            Text(
                              'Food',
                              style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 20,
                                  color: fontDarker),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(width: 10),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          print('month');
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
                            // Icon(Icons.local_drink_sharp, color: Colors.brown),
                            SizedBox(width: 10),
                            Text(
                              'Shopping',
                              style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 20,
                                  color: fontDarker),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(width: 10),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          print('year');
                        });
                      },
                      child: Container(
                        width: 40,
                        decoration: BoxDecoration(
                          color: fontDark,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            // Icon(Icons.donut_small, color: Colors.pink),
                            SizedBox(width: 4),
                            Icon(
                              Icons.calendar_month_outlined,
                              color: Colors.white,
                            )
                            // Text(
                            //   'Donuts',
                            //   style: GoogleFonts.poppins(
                            //       fontWeight: FontWeight.w500, fontSize: 25),
                            // ),
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
      ),
    );
  }
}

class SalesData {
  SalesData(this.year, this.sales);
  final DateTime year;
  final double sales;
}
