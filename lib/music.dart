import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:music/favt.dart';
import 'package:music/songlist.dart';

class login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: login_STF(),
      ),
    );
  }
}

class login_STF extends StatefulWidget {
  @override
  _login_STFState createState() => _login_STFState();
}

class _login_STFState extends State<login_STF> {
  late double height;
  late double width;

  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;

    return Column(
      children: [
        Container(
          height: height * 0.5,
          width: width * 0.9,
          margin: EdgeInsets.only(top: 10, left: 5),
          decoration: BoxDecoration(
            color: Colors.blue,
            borderRadius: BorderRadius.circular(10.0),
          ),
          child: Stack(
            children: [
              Container(
                height: height * 0.1,
                width: width * 0.1,
                child: Image.asset(
                  "assets/images/line.png",
                  color: Colors.white,
                ),
              ),
              Container(
                height:height*0.1,
                width: width*0.1,
                margin: EdgeInsets.only(left: width*0.7,top:height*0.04),
                child: Text(
                  "USER",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
              Container(
                height: height * 0.1,
                width: width * 0.1,
                margin: EdgeInsets.only(left: width*0.8),
                child: SvgPicture.asset(
                  "assets/svg/dot.svg",
                  color: Colors.white,
                ),
              ),
              Container(
                margin: EdgeInsets.only(top:height*0.35,left: width*0.04),
                child:Row(
                  children:const [
                    Text(
                      ".",
                      style: TextStyle(
                        color: Colors.lightBlueAccent,
                        fontWeight: FontWeight.bold,
                        fontSize: 50.0,
                      ),
                    ),
                    Text(
                      ".",
                      style: TextStyle(
                        color: Colors.lightBlueAccent,
                        fontWeight: FontWeight.bold,
                        fontSize: 50.0,
                      ),
                    ),
                    Text(
                      ".",
                      style: TextStyle(
                        color: Colors.lightBlueAccent,
                        fontWeight: FontWeight.bold,
                        fontSize: 50.0,
                      ),
                    ),
                    Text(
                      ".",
                      style: TextStyle(
                        color: Colors.lightBlueAccent,
                        fontWeight: FontWeight.bold,
                        fontSize: 50.0,
                      ),
                    ),
                    Text(
                      ".",
                      style: TextStyle(
                        color: Colors.lightBlueAccent,
                        fontWeight: FontWeight.bold,
                        fontSize: 50.0,
                      ),
                    ),
                    Text(
                      ".",
                      style: TextStyle(
                        color: Colors.lightBlueAccent,
                        fontWeight: FontWeight.bold,
                        fontSize: 50.0,
                      ),
                    ),
                    Text(
                      ".",
                      style: TextStyle(
                        color: Colors.lightBlueAccent,
                        fontWeight: FontWeight.bold,
                        fontSize: 50.0,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top:height*0.4,left: width*0.04),
                child:Row(
                  children:const [
                    Text(
                      ".",
                      style: TextStyle(
                        color: Colors.lightBlueAccent,
                        fontWeight: FontWeight.bold,
                        fontSize: 50.0,
                      ),
                    ),
                    Text(
                      ".",
                      style: TextStyle(
                        color: Colors.lightBlueAccent,
                        fontWeight: FontWeight.bold,
                        fontSize: 50.0,
                      ),
                    ),
                    Text(
                      ".",
                      style: TextStyle(
                        color: Colors.lightBlueAccent,
                        fontWeight: FontWeight.bold,
                        fontSize: 50.0,
                      ),
                    ),
                    Text(
                      ".",
                      style: TextStyle(
                        color: Colors.lightBlueAccent,
                        fontWeight: FontWeight.bold,
                        fontSize: 50.0,
                      ),
                    ),
                    Text(
                      ".",
                      style: TextStyle(
                        color: Colors.lightBlueAccent,
                        fontWeight: FontWeight.bold,
                        fontSize: 50.0,
                      ),
                    ),
                    Text(
                      ".",
                      style: TextStyle(
                        color: Colors.lightBlueAccent,
                        fontWeight: FontWeight.bold,
                        fontSize: 50.0,
                      ),
                    ),
                    Text(
                      ".",
                      style: TextStyle(
                        color: Colors.lightBlueAccent,
                        fontWeight: FontWeight.bold,
                        fontSize: 50.0,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: height*0.08,left: width*0.02),
                child: Text(
                  'MU \nSIC',
                  style: TextStyle(
                    color: Colors.indigo,
                    fontSize: 100.0,
                  ),
                ),
              ),
              Container(
                height: height*0.7,
                width: width*0.7,
                margin: EdgeInsets.only(left:width*0.38,top: height*0.1),
                child: SvgPicture.asset(
                  "assets/svg/M.svg",
                  color: Colors.indigo,
                ),
              ),
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: 10),
          height: 80,
          width: 280,
          child: TextField(
            decoration: InputDecoration(
              labelText: "Username",
              labelStyle: const TextStyle(
                color: Colors.grey,
                backgroundColor: Colors.white54,
              ),
              enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.black26),
                  borderRadius: BorderRadius.circular(width * 0.25)),
            ),
          ),
        ),
        Container(
          height: 80,
          width: 280,
          child: TextField(
            decoration: InputDecoration(
              labelText: "Password",
              labelStyle: const TextStyle(
                color: Colors.grey,
                backgroundColor: Colors.white54,
              ),
              enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.black26),
                  borderRadius: BorderRadius.circular(width * 0.25)),
            ),
          ),
        ),
        Row(
          children: [
            Container(
              margin: EdgeInsets.only(left: 30),
              height: 20,
              width: 20,
              color: Colors.white,
              child: Card(
                elevation: 2.0,
                child: InkWell(
                  onTap: () {
                    print("Tick");
                  },
                  child: Container(
                    height: 20,
                    width: 20,
                  ),
                ),
              ),
            ),
            Container(
              child: Text(
                'Remember me',
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 50),
              height: 20,
              width: 20,
              color: Colors.white,
              child: Card(
                elevation: 2.0,
                child: InkWell(
                  onTap: () {
                    print("Tick");
                  },
                  child: Container(
                    height: 20,
                    width: 20,
                  ),
                ),
              ),
            ),
            Container(
              child: Text(
                'Forget Password ',
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ],
        ),
        Container(
          height: 50,
          width: 150,
          margin: EdgeInsets.only(
            top: height * 0.02,
          ),
          decoration: BoxDecoration(
            color: Colors.blue,
            borderRadius: BorderRadius.circular(20.0),
          ),
          child: InkWell(
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => favts()));
            },
            child: Container(
              child: const Center(
                child: Text(
                  "LOGIN",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w900,
                    fontSize: 20.0,
                  ),
                ),
              ),
            ),
          ),
        ),
        Container(
          height: 50,
          width: 150,
          margin: EdgeInsets.only(
            top: height * 0.01,
          ),
          child: InkWell(
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => login()));
            },
            child: Container(
              child: const Center(
                child: Text(
                  "New Account",
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                    fontSize: 20.0,
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
