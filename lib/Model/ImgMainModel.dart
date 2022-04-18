


class ImgMainModel{
  late List<dynamic> img;

  ImgMainModel(this.img);

  factory ImgMainModel.fromJson(Map<String,dynamic> json){
    var jsonImgList = json["img"] as List<dynamic>;
    return ImgMainModel(jsonImgList);
  }
}