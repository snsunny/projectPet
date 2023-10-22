import 'package:flutter/material.dart';
class InfoOwl{
  String id_owl,image_owl,title_owl;
  List<String> bio_owl;
  List<String> component_owl;
  List<String> infoPet_owl;
  List<String> needknowPet_owl;
  List<String> trickPet_owl;

  InfoOwl({required this.id_owl,required this.image_owl,required this.title_owl,required this.bio_owl,required this.component_owl,required this.infoPet_owl
    ,required this.needknowPet_owl,required this.trickPet_owl});
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
