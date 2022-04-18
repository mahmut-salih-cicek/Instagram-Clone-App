


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'RegisterEmail.dart';
import 'SignInPage.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  final img_patt = "img/logo.svg";


  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Center(
        child: Container(
          child: Column(
            children: [

          /// İnstagram logo
              Padding(
                  padding: EdgeInsets.fromLTRB(0, height /3, 0, 0),
                child: SvgPicture.asset("img/logo.svg", width: 170),
              ),


              
              

              Padding(
                padding: EdgeInsets.fromLTRB(0, height * 0.09, 0, 0),
                child: SizedBox(
                  height: height/18,
                  width: width * 0.9,
                  child: ElevatedButton(onPressed: (){
                    Navigator.of(context).push(CupertinoPageRoute(builder: (context) => RegisterEmail() ));
                  },
                      child: Text("Yeni Hesap Oluştur")
                  ),
                ),
              ),

              Padding(
                padding: EdgeInsets.fromLTRB(0, height * 0.01, 0, 0),
                child: TextButton(onPressed: (){

                  Navigator.of(context).push(CupertinoPageRoute(builder: (context) => SignInPage()));

                },
                    child: Text("Giriş Yap")
                ),
              )


            ],
          ),
        )
      ),

    );
  }
}
