


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'RegisterRealNamePassword.dart';

class RegisterEmail extends StatefulWidget {
  const RegisterEmail({Key? key}) : super(key: key);

  @override
  _RegisterEmailState createState() => _RegisterEmailState();
}

class _RegisterEmailState extends State<RegisterEmail> {
  @override
  Widget build(BuildContext context) {

    var width = MediaQuery.of(context).size.width;
     var height = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Center(
        child: Container(
          child: Column(
            children: [

              Padding(
                padding: EdgeInsets.fromLTRB(0, height / 3.5 , 0 , 0),
                  child: SizedBox(
                    width: 150,
                    height: 150,
                    child: Image.asset("img/user.png"),
                  )),


              
              ///Text Row
              Padding(
                padding: EdgeInsets.fromLTRB(0, height / 30, 0, 0),
                child: Container(
                  alignment: Alignment.center,

                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [

                     Padding(padding: EdgeInsets.fromLTRB(0, 0, width * 0.3, 0),
                       child: Text("TELEFON", style:  TextStyle(fontSize: 14,fontWeight: FontWeight.w500),),
                     ),

                      Padding(padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                        child: Text("E-POSTA", style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500),),

                      ),




                    ],
                  ),
                ),
              ),


              /// Divider
              Stack(
                children: [
                  Padding(padding: EdgeInsets.fromLTRB(width / 14, height / 65, width/14, 0),
                    child: Divider(
                      height: 2.0,
                      color: Colors.black,
                    ),
                  ),
                  Padding(padding: EdgeInsets.fromLTRB(200, height / 65, width/14, 0),
                    child: Divider(
                      height: 2.0,
                      thickness: 1.1,
                      color: Colors.black,
                    ),
                  ),
                 
                ],
              ),



              /// Text Form Field
              Padding(
                padding: EdgeInsets.fromLTRB(28, 20, 29, 10),
                child: TextFormField(
                  style: TextStyle(color: Colors.black,fontSize: 13),
                  obscureText: false,
                  decoration: InputDecoration(
                      hintText: 'E-posta',
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


              ElevatedButton(onPressed: (){
                Navigator.of(context).push(CupertinoPageRoute(builder: (context) => RegisterRealNamePassword()));

              }, child:
                  Padding(
                    padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                    child: SizedBox(
                      width: width/ 1.3,
                      height: 46
                        ,
                      child: Center(child: Text("İleri"))
                    ),
                  )

              ),


              /// Bottom Divider
              Padding(
                padding: EdgeInsets.fromLTRB(0, height / 4, 0, 0),
                child: Divider(
                  color: Colors.black,
                  height: 2.0,
                ),
              ),




              
              Padding(
                padding: EdgeInsets.fromLTRB(0, height /60, 0, 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Hesabın zaten var mı? ",style: TextStyle(fontSize: 11),),
                    Text("Giriş yap",style: TextStyle(fontSize: 11,fontWeight: FontWeight.bold,color: Colors.blue.shade800),)
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
