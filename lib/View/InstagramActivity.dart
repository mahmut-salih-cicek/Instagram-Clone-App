import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:instagram_clone1/Model/ImgMainModel.dart';
import 'package:instagram_clone1/View/CreatePost.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:instagram_clone1/ViewModel/story_item.dart';
import 'package:instagram_clone1/data/story_data.dart';
import 'package:instagram_clone1/theme/colors.dart';


class InstagramActivity extends StatefulWidget {
  const InstagramActivity({Key? key}) : super(key: key);

  @override
  _InstagramActivityState createState() => _InstagramActivityState();
}

class _InstagramActivityState extends State<InstagramActivity> {

  int currentTabIndex = 0;
  var globalImgList = <dynamic>[];


  Future<List<dynamic>> imgJson() async {
    var baseURL = Uri.parse("http://34.79.95.243/showImg");
    var parse = await http.get(baseURL);
    return getResponse(parse.body);
  }

  List<dynamic> getResponse(String response) {
    return ImgMainModel.fromJson(json.decode(response)).img;
  }

  Future<List<dynamic>> showList() async {
    var list = await imgJson();
    globalImgList.clear();
    for (var k in list) {
      globalImgList.add(k);
      print("----->>> $k");
    }
    return globalImgList;
  }

  fetchImage() async{
    var url;
    url = await http.get(Uri.parse("http://34.79.95.243/showImg"));
    return json.decode(url.body)['img'];
  }

  @override
  void initState() {
    print("-----------Working --------------");
    showList();
    super.initState();
  }

  @override
  void setState(VoidCallback fn) {
    // TODO: implement setState
   
    super.setState(fn);
  }

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var widht = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(

        shadowColor: Colors.white,
        elevation: 0,
        automaticallyImplyLeading: false,
      backgroundColor: Colors.white,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[


          Padding(
            padding: EdgeInsets.fromLTRB(0, 4, 0, 0),
            child: SvgPicture.asset(
              "img/logo.svg",
              width: 130,
            ),
          ),

          Expanded(
            child: Container(),
          ),
          Image.asset(
            "img/iAdd.jpg",
            width: 26,

          ),
          SizedBox(
            width: 20,
          ),
          Image.asset(
            "img/iHeart.jpg",
            width: 26,
          ),
          SizedBox(
            width: 20,
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(0, 0, 0, 6),
            child: Image.asset(
              "img/iMessages.jpg",
              width: 30,
            ),
          ),
        ],
      ),
    ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        elevation: 10,
        selectedItemColor: Colors.black,
        type: BottomNavigationBarType.fixed,
        selectedFontSize: 0,
        unselectedFontSize: 0,
        iconSize: 30,
        onTap: (index) {
          if (index == 4) {
            Navigator.of(context)
                .push(CupertinoPageRoute(builder: (context) => CreatePost()));
          }
        },
        items: [
          BottomNavigationBarItem(
            icon: Image.asset(
              "img/ihome.jpg",
              width: 23,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              "img/iSearch.jpg",
              width: 23,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              "img/iReals.jpg",
              width: 23,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              "img/iStore.jpg",
              width: 23,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              "img/iPerson.jpg",
              width: 23,
            ),
            label: '',
          ),
        ],
      ),
      body: SingleChildScrollView(
        
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [


            /// Story Row
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding:
                    const EdgeInsets.only(right: 20, left: 15, bottom: 10),
                    child: Column(
                      children: <Widget>[
                        Container(
                          width: 65,
                          height: 65,
                          child: Stack(
                            children: <Widget>[
                              Container(
                                width: 65,
                                height: 65,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  image: DecorationImage(
                                      image: NetworkImage("http://0.tcp.ngrok.io:13544/scaled_image_picker6418940492731917669.jpg"),
                                      fit: BoxFit.cover),
                                ),
                              ),
                              Positioned(
                                  bottom: 0,
                                  right: 0,
                                  child: Container(
                                    width: 19,
                                    height: 19,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: white,
                                    ),
                                    child: Icon(
                                      Icons.add_circle,
                                      color: buttonFollowColor,
                                      size: 19,
                                    ),
                                  ))
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Container(
                          alignment: Alignment.center,
                          width: 70,
                          child: Text(
                            "xmod",
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(color: Colors.black),
                          ),
                        )
                      ],
                    ),
                  ),
                  // Storyler'i story_json dosyasıdan çek ve yan yana göster.
                  Row(
                    children: List.generate(storyName.length, (index) {
                      return StoryItem(
                          img: storyImg[index],
                          name: storyName[index]

                      );
                    }),
                  ),
                ],
              ),
            ),



            Column(
              children: List.generate(globalImgList.length, (index) {
                return Column(
                  children: [

                    ///Header Post
                    Row(
                      children: [

                        /// Avatar
                        Padding(
                          padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
                          child: CircleAvatar(
                            radius: 20.0,
                            backgroundImage:
                            NetworkImage('https://github.com/mahmut-salih-cicek/Play_Store_Picture/blob/main/270106461_316146410420269_948348319232121571_n.jpg?raw=true'),
                            backgroundColor: Colors.transparent,
                          ),
                        ),

                        /// Avatar Name
                        Padding(
                            padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
                            child: Text("developer.sout")),

                      ],
                    ),

                  /// Image Post
                Padding(
                    padding: EdgeInsets.fromLTRB(0, 5, 0, 0),
                    child: Image.network(globalImgList[index]))
                    
                  ],
                );
              }),
            )

            ///Image.network(globalImgList[index])

          ],
        ),
      ),
    );
  }






}
