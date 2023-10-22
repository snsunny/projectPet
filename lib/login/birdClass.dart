import 'package:flutter/material.dart';
class InfoRabbit{
  String id_Rabbit,image_Bird,title_Bird;
  List<String> bio_Bird;
  List<String> component_Bird;
  List<String> infoPet_Bird;
  List<String> needknowPet_Bird;
  List<String> trickPet_Bird;

  InfoRabbit({required this.id_Rabbit,required this.image_Bird,required this.title_Bird,required this.bio_Bird,required this.component_Bird,required this.infoPet_Bird
    ,required this.needknowPet_Bird,required this.trickPet_Bird});
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
