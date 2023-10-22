import 'package:flutter/material.dart';
class InfoRabbit{ //Rabbit
  String id_Rabbit,image_Rabbit,title_Rabbit;
  List<String> bio_Rabbit;
  List<String> component_Rabbit;
  List<String> infoPet_Rabbit;
  List<String> needknowPet_Rabbit;
  List<String> trickPet_Rabbit;

  InfoRabbit({required this.id_Rabbit,required this.image_Rabbit,required this.title_Rabbit,required this.bio_Rabbit,required this.component_Rabbit,required this.infoPet_Rabbit
    ,required this.needknowPet_Rabbit,required this.trickPet_Rabbit});
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
