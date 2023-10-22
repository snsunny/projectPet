import 'package:flutter/material.dart';
import 'package:projectPet/login/dogClass.dart';
class Review extends StatefulWidget {
  const Review({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  State<Review> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<Review> {
  List<Post> PostInfo = [
    Post('Kai-Kow', 'assets/images/catkaikow.png', ['บ้านแมวไข่ขาว'], ['หลงรักทุกตัว']),
    Post('JubJub', 'assets/images/catorange.png', ['บ้านแก๊งจั๊บ'], ['น่ารักฉุดๆ']),
    Post('Sweet', 'assets/images/agns.png', ['Jeda'], ['so cute']),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          '🐾 PET WORLD 🐾',
          style: TextStyle(
            fontFamily: 'PawWow', // แทน 'YourFontFamily' ด้วยชื่อฟอนต์ที่คุณต้องการใช้
            fontSize: 75.0, // ปรับขนาดตามที่ต้องการ
            fontWeight: FontWeight.bold, // ปรับความหนาตามที่ต้องการ
            color: Colors.black, // ปรับสีตัวอักษรตามที่ต้องการ
          ),
        ),
        centerTitle: true, toolbarHeight: 100.0,
        // Center the title
      ),

      body: SingleChildScrollView(
        child: Column(
          children: [
            for (int i = 0; i < PostInfo.length; i++) buildPost(position: i),
          ],
        ),
      ),
    );

  }

  Widget buildPost({int? position}) {
    var post = PostInfo[position!];
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Container(

        color: Colors.grey.shade200,
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: CircleAvatar(
                        radius: 30.0,
                        backgroundImage: AssetImage(post.userImages),
                      ),
                    ),
                    Text(
                      post.user,
                      style: TextStyle(fontSize: 35.0),
                    ),
                  ],
                ),
                Padding(
                    padding: const EdgeInsets.all(50.0),
                    child: IconButton(
                      onPressed: () {},
                      icon: Image.asset('assets/images/paw.png'),
                    )
                )

              ],
            ),
            SizedBox(
              height: 20.0,
            ),
            for (int i = 0; i < post.commmentUser.length; i++)
              Row(
                children: [
                  SizedBox(
                    width: 20.0,
                  ),
                  Text(
                    post.commmentUser[i] + ' : ',
                    style: TextStyle(fontSize: 20.0, color: Colors.teal),
                  ),
                  Text(
                    post.commentUserMessage[i],
                    style: TextStyle(fontSize: 20.0, color: Colors.black),
                  ),

                ],
              ),
            Row(
              children: [
                buildThumpUp(position: position),
                buildField(position: position),
                SizedBox(
                  width: 40.0,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
  Widget buildThumpUp({int? position}) {
    var postlike = PostInfo[position!];
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: IconButton(
        onPressed: () {
          setState(() {
            postlike.like = !postlike.like;
          });
        },

        icon: Icon((postlike.like)? Icons.thumb_up : Icons.thumb_up_alt_outlined, size: 25.0,),
      ),
    );
  }
  Widget buildField({int? position}){
    var post = PostInfo[position!];
    var controller = post.controller;
    return Flexible(
      child: Container(
        height: 25.0,
        child: TextField(
            decoration: InputDecoration(hintText: 'Add message'),
            controller: controller,
            onSubmitted: (String comment){
              setState(() {
                post.commmentUser.add("sunny");
                post.commentUserMessage.add(comment);
                controller.clear();
              });
            }
        ),
      ),
    );
  }

}