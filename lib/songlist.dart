import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:music/favt.dart';
import 'package:music/music.dart';

class songtitle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return songti_STF();
  }
}

class songti_STF extends StatefulWidget {
  @override
  _songti_STFState createState() => _songti_STFState();
}

class _songti_STFState extends State<songti_STF> {
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
                    height: height * 0.25,
                    width: width * 0.5,
                    margin:
                    EdgeInsets.only(top: height * 0.05, left: width * 0.3),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(300.0),
                      border: Border.all(color: Colors.blue),
                    ),
                    child: Center(
                      child: Container(
                        height: height * 0.2,
                        width: width * 0.4,
                        margin: EdgeInsets.only(
                            top: height * 0.001, left: width * 0.002),
                        decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(300.0),
                        ),
                        child: Center(
                          child: Text(
                            'MU \nSIC',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 30.0,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: height*0.32),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.blur_on_outlined,
                          color:Colors.blue,
                          size: 100.0,
                        ),
                        Icon(
                          Icons.blur_on_outlined,
                          color:Colors.blue,
                          size: 100.0,
                        ),
                        Icon(
                          Icons.blur_on_outlined,
                          color:Colors.blue,
                          size: 100.0,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin:
                    EdgeInsets.only(top: height * 0.53, left: width * 0.3),
                    child: Text(
                      "SONG TITLE",
                      style: TextStyle(
                        color: Colors.blue,
                        fontSize: 25.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Container(
                    margin:
                    EdgeInsets.only(top: height * 0.58, left: width * 0.34),
                    child: Text(
                      "LOREM IPSUM",
                    ),
                  ),
                  Container(
                    height: height * 0.2,
                    width: width * 0.8,
                    color: Colors.transparent,
                    margin:
                    EdgeInsets.only(top: height * 0.6, left: width * 0.1),
                    child: Image.asset(
                      "assets/images/song.png",
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
