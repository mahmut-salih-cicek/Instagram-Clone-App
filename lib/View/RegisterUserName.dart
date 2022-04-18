
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'RegisterSend.dart';

class RegisterUserName extends StatefulWidget {
  const RegisterUserName({Key? key}) : super(key: key);

  @override
  _RegisterUserNameState createState() => _RegisterUserNameState();
}

class _RegisterUserNameState extends State<RegisterUserName> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Center(
        child: Container(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.fromLTRB(0, height / 4.8, 0, 0),
                  child: Text("KULLANICI ADI OLUŞTUR",style: TextStyle(fontWeight: FontWeight.bold),)),
              Padding(
                  padding: EdgeInsets.fromLTRB(30, height / 45, 30, 0),
                  child: Text("Bir kullanici adı ekle veya önerimizi kullan. Bunu istediğin zaman değiştirebilirsin",style: TextStyle(),textAlign:TextAlign.center ,)),
              /// Ad ve soyad textFromfield
              Padding(
                padding: EdgeInsets.fromLTRB(28, 25, 29, 10),
                child: TextFormField(
                  style: TextStyle(color: Colors.black,fontSize: 13),
                  obscureText: false,
                  decoration: InputDecoration(
                      hintText: 'Kullanıcı Adı',
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
                padding: EdgeInsets.fromLTRB(0, height * 0.01, 0, 0),
                child: SizedBox(
                    height: height / 20,
                    width: width/1.15,
                    child: ElevatedButton(onPressed: (){
                      Navigator.of(context).push(CupertinoPageRoute(builder: (context) => RegisterSend() ));
                    }, child: Text("İleri"))),
              )

            ],
          )
        ),
      ),
    );
  }
}
