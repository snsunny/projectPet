import 'package:flutter/material.dart';
class InfoBird{
  String id_cat,image_cat,title_cat;
  List<String> bio_cat;
  List<String> component_cat;
  List<String> infoPet_cat;
  List<String> needknowPet_cat;
  List<String> trickPet_cat;

  InfoBird({required this.id_cat,required this.image_cat,required this.title_cat,required this.bio_cat,required this.component_cat,required this.infoPet_cat
    ,required this.needknowPet_cat,required this.trickPet_cat});
}

class Post {
  var user;
  var userImages;

  bool like = false;
  List<String> commmentUser = [];
  List<String> commentUserMessage = [];
  TextEditingController controller = TextEditingController();
  Post(var user, var userImages, List<String> commmentUser, List<String> commentUserMessage) {
    this.user = user;
    this.userImages = userImages;

    this.commmentUser = commmentUser;
    this.commentUserMessage = commentUserMessage;
  }
}
