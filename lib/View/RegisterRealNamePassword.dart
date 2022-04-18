


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'RegisterUserName.dart';

class RegisterRealNamePassword extends StatefulWidget {
  const RegisterRealNamePassword({Key? key}) : super(key: key);

  @override
  _RegisterRealNamePasswordState createState() => _RegisterRealNamePasswordState();
}

class _RegisterRealNamePasswordState extends State<RegisterRealNamePassword> {
  bool value = false;

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Center(
        child: Container(
          child: Column(
            children: [
              Padding(
                  padding: EdgeInsets.fromLTRB(0, height /3, 0, 0),
                  child: Text("AD VE ŞİFRE",style: TextStyle(fontWeight: FontWeight.bold),)
              ),
              /// Ad ve soyad textFromfield
              Padding(
                padding: EdgeInsets.fromLTRB(28, 20, 29, 10),
                child: TextFormField(
                  style: TextStyle(color: Colors.black,fontSize: 13),
                  obscureText: false,
                  decoration: InputDecoration(
                      hintText: 'Adın ve soyadın',
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
              /// Ad ve soyad textFromfield
              Padding(
                padding: EdgeInsets.fromLTRB(28, 5, 29, 10),
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

              Padding(
                padding: EdgeInsets.fromLTRB(width * 0.05, 0, 0, 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Checkbox(
                      value: value,
                      onChanged: (bool? value) {
                        setState(() {
                          this.value = value!;
                        });
                      },
                    ),
                    Text("Şifreyi hatirla")
                  ],
                ),
              ),

              Padding(
                padding: EdgeInsets.fromLTRB(0, height / 20, 0, 0),
                child: SizedBox(
                    width: width /1.2,
                    height: height * 0.13,
                    child: ElevatedButton(onPressed: (){
                      Navigator.of(context).push(CupertinoPageRoute(builder: (context) => RegisterUserName() ));
                    }, child: Text("Devam Et ve Kişileri Senkronize Et"))),
              ),

              Padding(
                  padding: EdgeInsets.fromLTRB(0, height / 20, 0, 0),
                  child: Text("Kişileri Senkronize Etmeden Devam Et",style: TextStyle(color: Colors.blue,fontSize: 13,fontWeight: FontWeight.bold),)),


                  
                  Column(
                    children: [

                      Padding(
                          padding: EdgeInsets.fromLTRB(30, height * 0.8, 30, 0),
                          child: Text("Senin ve başkalarının arkaşlarının bulmanıza ve size daha iyi\nbir hizmet sunmamiza yardımcı olmasi için rehberindeki kişiler\ndüzenli olarak senkronize edilecek ve Instagram sunucularında\nsaklanacak. Rehberindeki kişileri kaldırmak için Ayarlara'a git ve",
                          style: TextStyle(fontSize: 11),
                          )),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("bağlantıyı kes",
                            style: TextStyle(fontSize: 11),
                          ),
                          Text("Daha Fazla Bilgi Al",
                            style: TextStyle(fontSize: 11,fontWeight: FontWeight.bold),
                          )
                        ],
                      ),



                    ],
                  )






            ],
          ),
        ),
      ),
    );
  }
}
