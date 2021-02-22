import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:draggable_bottom_sheet/draggable_bottom_sheet.dart';
import 'dart:ui';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Yoga App',
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<IconData> icons = [
    Icons.ac_unit,
    Icons.account_balance,
    Icons.adb,
    Icons.add_photo_alternate,
    Icons.format_line_spacing
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: DraggableBottomSheet(
          backgroundWidget: Scaffold(
            body: Container(
              color: Color(0xFFF4F5FA),
              padding: EdgeInsets.all(36),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Activity date',
                            style: GoogleFonts.poppins(
                              textStyle: TextStyle(
                                color: Color(0xFF4F51E4),
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                          SizedBox(height: 12),
                          Text(
                            '06 june ,2020',
                            style: GoogleFonts.poppins(
                              textStyle: TextStyle(
                                color: Color(0xFF222222),
                                fontWeight: FontWeight.bold,
                                fontSize: 24,
                              ),
                            ),
                          ),
                          SizedBox(height: 6),
                          Text(
                            'Sunday',
                            style: GoogleFonts.poppins(
                              textStyle: TextStyle(
                                color: Color(0xFF4F51E4),
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ],
                      ),
                      GestureDetector(
                        child: Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(50),
                              boxShadow: [
                                BoxShadow(
                                  color: Color.fromRGBO(40, 51, 73, 0.1),
                                  blurRadius: 24,
                                  offset: Offset(-10, 10),
                                )
                              ]),
                          padding: EdgeInsets.all(16),
                          child: Icon(Icons.arrow_back),
                        ),
                        onTap: () {},
                      ),
                    ],
                  ),
                  Image.asset('assets/illustration.png'),
                ],
              ),
            ),
          ),
          previewChild: Container(
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(12),
                  topRight: Radius.circular(12),
                ),
                boxShadow: [
                  BoxShadow(
                    color: Color.fromRGBO(40, 51, 73, 0.1),
                    blurRadius: 24,
                    offset: Offset(0, -9),
                  ),
                ]),
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 36, vertical: 16),
                  child: Column(
                    children: [
                      Container(
                        width: 60,
                        height: 4,
                        decoration: BoxDecoration(
                            color: Color(0xFFE9E8EC),
                            borderRadius: BorderRadius.circular(10)),
                      ),
                      SizedBox(height: 8),
                      Row(
                        children: [
                          Image.asset(
                            'assets/icon-fire.png',
                            width: 32,
                          ),
                          SizedBox(width: 8),
                          RichText(
                            text: TextSpan(
                              style: DefaultTextStyle.of(context).style,
                              children: [
                                TextSpan(
                                  text: '1500',
                                  style: GoogleFonts.openSans(
                                    textStyle: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 24,
                                      color: Color(0xFF222222),
                                    ),
                                  ),
                                ),
                                TextSpan(
                                  text: ' kcal',
                                  style: GoogleFonts.poppins(
                                    textStyle: TextStyle(
                                      fontSize: 18,
                                      color: Color(0xFF777777),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                      Image.asset('assets/statistic.png'),
                    ],
                  ),
                ),
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(12),
                        topRight: Radius.circular(12),
                      ),
                      color: Color(0xFF767EED),
                    ),
                    padding: EdgeInsets.symmetric(horizontal: 36, vertical: 16),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'See your details \nactivity',
                          style: GoogleFonts.poppins(
                            textStyle: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                        GestureDetector(
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(32),
                              color: Color(0xFF4D4DE9),
                            ),
                            padding: EdgeInsets.symmetric(
                              horizontal: 42,
                              vertical: 16,
                            ),
                            child: Text(
                              'View',
                              style: GoogleFonts.poppins(
                                textStyle: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          expandedChild: Container(
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(12),
                  topRight: Radius.circular(12),
                ),
                boxShadow: [
                  BoxShadow(
                    color: Color.fromRGBO(40, 51, 73, 0.1),
                    blurRadius: 24,
                    offset: Offset(0, -9),
                  ),
                ]),
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 36, vertical: 16),
                  child: Column(
                    children: [
                      Container(
                        width: 60,
                        height: 4,
                        decoration: BoxDecoration(
                            color: Color(0xFFE9E8EC),
                            borderRadius: BorderRadius.circular(10)),
                      ),
                      SizedBox(height: 8),
                      Row(
                        children: [
                          Image.asset(
                            'assets/icon-fire.png',
                            width: 32,
                          ),
                          SizedBox(width: 8),
                          RichText(
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text: '1500',
                                  style: GoogleFonts.openSans(
                                    textStyle: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 24,
                                      color: Color(0xFF222222),
                                    ),
                                  ),
                                ),
                                TextSpan(
                                  text: ' kcal',
                                  style: GoogleFonts.poppins(
                                    textStyle: TextStyle(
                                      fontSize: 18,
                                      color: Color(0xFF777777),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                      Image.asset('assets/statistic.png'),
                    ],
                  ),
                ),
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(12),
                        topRight: Radius.circular(12),
                      ),
                      color: Color(0xFF767EED),
                    ),
                    padding: EdgeInsets.symmetric(horizontal: 36, vertical: 24),
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          Text(
                            'Your details activity (Date 02 jun-06 jun)',
                            style: GoogleFonts.poppins(
                              textStyle: TextStyle(
                                fontWeight: FontWeight.w500,
                                color: Colors.white,
                                fontSize: 16,
                              ),
                            ),
                          ),
                          SizedBox(height: 12),
                          Container(
                            padding: EdgeInsets.symmetric(vertical: 16),
                            decoration: BoxDecoration(
                              color: Color(0xFF878EF2),
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: ListView(
                              shrinkWrap: true,
                              physics: NeverScrollableScrollPhysics(),
                              children: [
                                ListTile(
                                  leading: Image.asset('assets/sepatu.png'),
                                  title: RichText(
                                    text: TextSpan(
                                      children: [
                                        TextSpan(
                                          text: '157',
                                          style: GoogleFonts.openSans(
                                            textStyle: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 18,
                                              color: Colors.white,
                                            ),
                                          ),
                                        ),
                                        TextSpan(
                                          text: ' Steps',
                                          style: GoogleFonts.openSans(
                                            textStyle: TextStyle(
                                              fontWeight: FontWeight.w400,
                                              fontSize: 16,
                                              color: Colors.white,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  trailing: Icon(
                                    Icons.chevron_right,
                                    size: 32,
                                    color: Colors.white,
                                  ),
                                ),
                                SizedBox(height: 12),
                                ListTile(
                                  leading: Image.asset('assets/darah.png'),
                                  title: RichText(
                                    text: TextSpan(
                                      children: [
                                        TextSpan(
                                          text: '2.0 liters',
                                          style: GoogleFonts.openSans(
                                            textStyle: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 18,
                                              color: Colors.white,
                                            ),
                                          ),
                                        ),
                                        TextSpan(
                                          text: ' Water',
                                          style: GoogleFonts.openSans(
                                            textStyle: TextStyle(
                                              fontWeight: FontWeight.w400,
                                              fontSize: 16,
                                              color: Colors.white,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  trailing: Icon(
                                    Icons.chevron_right,
                                    size: 32,
                                    color: Colors.white,
                                  ),
                                ),
                                SizedBox(height: 12),
                                ListTile(
                                  leading: Image.asset('assets/hati.png'),
                                  title: RichText(
                                    text: TextSpan(
                                      children: [
                                        TextSpan(
                                          text: '2.0 liters',
                                          style: GoogleFonts.openSans(
                                            textStyle: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 18,
                                              color: Colors.white,
                                            ),
                                          ),
                                        ),
                                        TextSpan(
                                          text: ' Water',
                                          style: GoogleFonts.openSans(
                                            textStyle: TextStyle(
                                              fontWeight: FontWeight.w400,
                                              fontSize: 16,
                                              color: Colors.white,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  trailing: Icon(
                                    Icons.chevron_right,
                                    size: 32,
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 12),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Expert consultation',
                                style: GoogleFonts.poppins(
                                  textStyle: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                              GestureDetector(
                                child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(32),
                                    color: Color(0xFF4D4DE9),
                                  ),
                                  padding: EdgeInsets.symmetric(
                                    horizontal: 42,
                                    vertical: 16,
                                  ),
                                  child: Text(
                                    'View',
                                    style: GoogleFonts.poppins(
                                      textStyle: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          minExtent: MediaQuery.of(context).size.height * 0.41,
          maxExtent: MediaQuery.of(context).size.height * 0.75,
        ),
      ),
    );
  }
}
