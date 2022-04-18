
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'InstagramActivity.dart';

class RegisterSend extends StatefulWidget {
  const RegisterSend({Key? key}) : super(key: key);

  @override
  _RegisterSendState createState() => _RegisterSendState();
}

class _RegisterSendState extends State<RegisterSend> {
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
                  padding: EdgeInsets.fromLTRB(0, height / 2.5, 0, 0),
                  child: Text("Kullanıcı Adı",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 20),)),
              Padding(
                  padding: EdgeInsets.fromLTRB(0, 1, 0, 0),
                  child: Text("olarak kaydol?",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 20),)),
              Padding(
                  padding: EdgeInsets.fromLTRB(20, height * 0.02, 20, 0),
                  child: Text("Daha sonra kullanıcı adını istediğin zaman değiştirebilirsin.",style: TextStyle(),textAlign: TextAlign.center,)),

              Padding(
                padding: EdgeInsets.fromLTRB(0, height * 0.03, 0, 0),
                child: SizedBox(
                    height: height / 20,
                    width: width / 1.15,
                    child: ElevatedButton(onPressed: (){
                      Navigator.of(context).push(CupertinoPageRoute(builder: (context) => InstagramActivity()));
                    }, child: Text("Kaydol"))),
              )

            ],
          ),
        ),
      ),
    );
  }
}
