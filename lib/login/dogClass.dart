import 'package:flutter/material.dart';
class InfoDog{
  String id_dog,image_dog,title_dog;
  List<String> bio_dog;
  List<String> component_dog;
  List<String> infoPet_dog;
  List<String> needknowPet_dog;
  List<String> trickPet_dog;

  InfoDog({required this.id_dog,required this.image_dog,required this.title_dog,required this.bio_dog,required this.component_dog,required this.infoPet_dog
    ,required this.needknowPet_dog,required this.trickPet_dog});
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
