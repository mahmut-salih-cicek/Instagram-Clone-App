import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart' as http;
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class CreatePost extends StatefulWidget {
  const CreatePost({Key? key}) : super(key: key);

  @override
  _CreatePostState createState() => _CreatePostState();
}

class _CreatePostState extends State<CreatePost> {

  File? selectedImage;
  String? messages;

  /// Galeriye git ve resim secme işlemi
  Future getImage() async{
    final pickedImage = await ImagePicker().getImage(source: ImageSource.gallery,imageQuality: 15);
    selectedImage = File(pickedImage!.path);
    setState(() {

    });
  }

  uploadImage() async{
    final request = http.MultipartRequest("POST",Uri.parse("http://34.79.95.243/upload"));
    final headers = {"Content-type" : "multipart/form-data"};
    request.files.add(
      http.MultipartFile('image', selectedImage!.readAsBytes().asStream(), selectedImage!.lengthSync() , filename: selectedImage!.path.split("/").last)
    );
    request.headers.addAll(headers);
    final response = await request.send();
    http.Response res = await http.Response.fromStream(response);
    final resJson = jsonDecode(res.body);
    messages = resJson['uploadMesaj'];
    setState(() {

    });

  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            /// Secilen REsim Burda Gozukcek
            selectedImage == null
                ? Text("Please Slect Image")
                : Image.file(
              selectedImage!,
              width: 300,
              height: 400,
            ),

            TextButton(
                onPressed: (){
                  uploadImage();
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Upload Image"),
                    Icon(Icons.upload_file)
                  ],
                ),

            ),

            ElevatedButton(
                onPressed: (){
                  getImage();
                },
                child: Text("Select Image")
            )

          ],
        )
      ),
    );
  }
}


