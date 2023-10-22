import 'package:flutter/material.dart';
import 'package:projectPet/data/data_cat.dart';
import 'package:projectPet/login/page/detail_cat.dart';

class CatHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    TextStyle appBarTextStyle = TextStyle(
      fontSize: 50,
      fontWeight: FontWeight.bold,
      fontFamily: 'Meow',
      color: Colors.black,
    );

    var body = Container(
        child: GridView.builder(
            shrinkWrap: false,
            itemCount: DataBird.Bird.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
            itemBuilder: (BuildContext context,int index) {
              return Padding(
                padding: const EdgeInsets.all(8.0),

                child: InkWell(
                  onTap: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Detailsbird(infoc: DataBird.Bird[index],)
                      ),
                    );
                  },
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    child: Container(
                      width: MediaQuery.of(context).size.width /2,
                      height: 50,
                      child: Column(
                        children: <Widget>[
                          Expanded(
                            child: ClipRRect(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(8.0),
                                topRight: Radius.circular(8.0),
                              ),
                              child: Hero(
                                  tag: DataBird.Bird[index].id_cat,
                                  child: FadeInImage(
                                    image:
                                    AssetImage(DataBird.Bird[index].image_cat),
                                    fit: BoxFit.cover,
                                    placeholder:
                                    AssetImage('assets/images/load.gif'),
                                  )
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: Text(
                              DataBird.Bird[index].title_cat,
                              style: TextStyle(
                                  fontSize: 17.5,
                                  fontWeight: FontWeight.bold),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              );
            }
        )
    );

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        toolbarHeight: 100.0,
        title: Text(
          '🦊 CAT WORLD 🦊',
          style: appBarTextStyle,
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/threecat.jpg'), // ตั้งค่ารูปภาพพื้นหลัง
            fit: BoxFit.cover, // กำหนดให้รูปภาพปรับขนาดเพื่อครอบคลุมทั้งหมด
          ),
        ),
        child: body, // ใส่ Widget ที่คุณมีอยู่แล้วที่นี่
      ),
    );

  }
}