


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:instagram_clone1/View/InstagramActivity.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  _SignInPageState createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  @override
  Widget build(BuildContext context) {

    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Center(
        child: Container(
          child: Column(
            children: [

              /// instagram logo
              Padding(
                padding: EdgeInsets.fromLTRB(0, height /3.45, 0, 0),
                child: SvgPicture.asset("img/logo.svg", width: 170),
              ),

              SizedBox(
                height: 30,
              ),

              Padding(
                padding: EdgeInsets.fromLTRB(20, 5, 30, 5),
                child: TextFormField(
                  style: TextStyle(color: Colors.black,fontSize: 13),
                  obscureText: false,
                  decoration: InputDecoration(

                      hintText: 'Telefon numarası,e-posta adresi veya kullanıcı adı',
                      hintStyle: TextStyle(color: Colors.black54),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Color.fromARGB(255, 208, 208, 208),
                          width: 1,
                        ),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Color.fromARGB(255, 208, 208, 208),
                          width: 1,
                        ),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      filled: true,
                      fillColor: Color.fromARGB(255, 250, 250, 250),
                      contentPadding: EdgeInsetsDirectional.all(13)
                  ),

                ),
              ),

              Padding(
                padding: EdgeInsets.fromLTRB(20, 5, 30, 5),
                child: TextFormField(
                  style: TextStyle(color: Colors.black,fontSize: 13),
                  obscureText: false,
                  decoration: InputDecoration(
                      hintText: 'Şifre',
                      hintStyle: TextStyle(color: Colors.black54),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Color.fromARGB(255, 208, 208, 208),
                          width: 1,
                        ),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Color.fromARGB(255, 208, 208, 208),
                          width: 1,
                        ),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      filled: true,
                      fillColor: Color.fromARGB(255, 250, 250, 250),
                      contentPadding: EdgeInsetsDirectional.all(13)
                  ),

                ),
              ),
              /// giriş yap button
              Padding(
                padding: EdgeInsets.fromLTRB(0, height * 0.015, 5, 0),
                child: SizedBox(
                  height: height/18,
                  width: width / 1.14,
                  child: ElevatedButton(onPressed: (){
                    Navigator.of(context).push(CupertinoPageRoute(builder: (context) => InstagramActivity()));

                  },
                      child: Text("Giriş Yap")
                  ),
                ),
              ),
              /// Giriş Yardim Text
              Padding(
                padding: EdgeInsets.fromLTRB(0, height  * 0.02, 0, 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Giriş Detaylarini mı unuttun? ",
                      style: TextStyle(fontSize: 11),
                    ),
                    Text("Giriş yapmak için yardım al",
                    textAlign: TextAlign.left,
                    style: TextStyle(fontSize: 11,fontWeight: FontWeight.bold,color: Colors.black),
                    ),
                  ],
                ),
              ),
              /// Divider
              Padding(
                padding: EdgeInsets.fromLTRB(0, height * 0.003, 0, 0),
                child: Row(children: <Widget>[
                  Expanded(
                    child: new Container(
                        margin: const EdgeInsets.only(left: 25.0, right: 5.0),
                        child: Divider(
                          color: Colors.black,
                          height: 36,
                        )),
                  ),
                  Text("YA DA"),
                  Expanded(
                    child: new Container(
                        margin: const EdgeInsets.only(left: 5.0, right: 25.0),
                        child: Divider(
                          color: Colors.black,
                          height: 36,
                        )),
                  ),
                ]),
              ),

              Padding(
                padding: EdgeInsets.fromLTRB(0, height * 0.003, 0, 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset("img/face_logo.png",width: 25,),
                    Text("  Facebook ile Giriş Yap",style: TextStyle(color: Colors.blue,fontWeight: FontWeight.bold),)
                  ],
                ),
              ),



              Padding(
                padding: EdgeInsets.fromLTRB(0, height  / 4.3, 0, 0),
                child: Column(
                  children: [
                    Divider(
                      color: Colors.black,
                      height: 0,
                    ),

                    Padding(
                        padding: EdgeInsets.fromLTRB(0, height * 0.015, 0 , 0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Hesabın yok mu?",
                              style: TextStyle(fontSize: 12),
                            ),

                            Text(" Kaydol",
                              style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),
                            )

                          ],
                        )
                    ),

                  ],
                ),
              )


            ],
          ),
        ),
      ),
    );
  }
}
