import 'package:flutter/material.dart';
import 'package:projectPet/data/data_dog.dart';
import 'package:projectPet/login/page/detail_dog.dart';

class HomePage extends StatelessWidget {
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
            itemCount: DataDog.Dog.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
            itemBuilder: (BuildContext context,int index) {
              return Padding(
                padding: const EdgeInsets.all(8.0),

                child: InkWell(
                  onTap: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Detailsdog(infop: DataDog.Dog[index],)
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
                                  tag: DataDog.Dog[index].id_dog,
                                  child: FadeInImage(
                                    image:
                                    AssetImage(DataDog.Dog[index].image_dog),
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
                              DataDog.Dog[index].title_dog,
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
//🦊 DOG WORLD 🦊
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        toolbarHeight: 100.0,
        title: Text(
          '🦊 DOG WORLD 🦊',
          style: appBarTextStyle,
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/gangpet.jpg'), // ตั้งค่ารูปภาพพื้นหลัง
            fit: BoxFit.cover, // กำหนดให้รูปภาพปรับขนาดเพื่อครอบคลุมทั้งหมด
          ),
        ),
        child: body, // ใส่ Widget ที่คุณมีอยู่แล้วที่นี่
      ),
    );

  }
}