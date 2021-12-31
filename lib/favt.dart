import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:music/music.dart';
import 'package:music/songlist.dart';

class favts extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return fsvt_STF();
  }
}

class fsvt_STF extends StatefulWidget {
  @override
  _fsvt_STFState createState() => _fsvt_STFState();
}

class _fsvt_STFState extends State<fsvt_STF> {

  late double height;
  late double width;

  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.blue,
      body: SafeArea(
        child: Stack(
          children: [
            Container(
              height: height * 0.1,
              width: width,
              color: Colors.blue,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => login()));
                    },
                    child: Container(
                      height: height * 0.1,
                      width: width * 0.1,
                      child: Image.asset(
                        "assets/images/line.png",
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Container(
                    height: height * 0.1,
                    width: width * 0.15,
                    margin:
                    EdgeInsets.only(left: width * 0.65, top: height * 0.04),
                    child: Text(
                      "USER",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,
                      ),
                    ),
                  ),
                  Container(
                    height: height * 0.1,
                    width: width * 0.1,
                    child: SvgPicture.asset(
                      "assets/svg/dot.svg",
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: height * 0.95,
              width: width * 1,
              margin: EdgeInsets.only(top: height * 0.1),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(20.0),
                  topLeft: Radius.circular(20.0),
                ),
              ),
              child: Stack(
                children: [
                  Container(
                    height: height * 0.05,
                    width: width * 0.9,
                    margin: EdgeInsets.only(
                        top: height * 0.05, left: width * 0.05),
                    child: TextField(
                      decoration: InputDecoration(
                        labelText: "Search for music",
                        labelStyle: TextStyle(
                          color: Colors.grey,
                          backgroundColor: Colors.white54,
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey),
                          borderRadius: BorderRadius.circular(25.0),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(
                        top: height * 0.13, left: width * 0.05),
                    child: Text(
                      'FAVORITES',
                      style: TextStyle(
                        color: Colors.blue,
                        fontSize: 20.0,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                  ),
                  Container(
                    height: height * 0.2,
                    width: width * 0.8,
                    margin: EdgeInsets.only(
                        top: height * 0.2, left: width * 0.05),
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    child: Stack(
                      children: [
                        Container(
                          margin: EdgeInsets.only(top: height*0.03),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.blur_on_sharp,
                                color:Colors.cyanAccent,
                                size: 50.0,
                              ),
                              Icon(
                                Icons.blur_on_sharp,
                                color:Colors.cyanAccent,
                                size: 50.0,
                              ),
                              Icon(
                                Icons.blur_on_sharp,
                                color:Colors.cyanAccent,
                                size: 50.0,
                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: height * 0.1, left: width * 0.2),
                          child: Text(
                            "SONG TITLE",
                            style: TextStyle(
                              color: Colors.cyanAccent,
                              fontSize: 25.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: height * 0.43, left: width * 0.03),
                    child: Text(
                      "MUSIC LIST",
                      style: TextStyle(
                        color: Colors.blue,
                        fontSize: 20.0,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator .push(context,
                      MaterialPageRoute(builder: (context)=>songtitle()));
                    },
                    child: Container(
                      height: height*0.3,
                      margin: EdgeInsets.only(top:height*0.48,left: width*0.15 ),
                      child: Image.asset("assets/images/list.png"),
                    ),
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