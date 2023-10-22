import 'package:flutter/material.dart';
import 'package:projectPet/login/homeBird.dart';
import 'package:projectPet/login/petHomeClass.dart';
import 'package:projectPet/login/homeDog.dart';
import 'package:projectPet/login/homeCat.dart';
import 'package:projectPet/login/homeRabbit.dart';
import 'package:projectPet/login/homeOwl.dart';
import '../data/dataALLpet.dart';
class pettype extends StatelessWidget {
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
            itemCount: DataALLpet.ALLpet.length, // Use DataDog.Dog instead of DataPet.Pet
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
            itemBuilder: (BuildContext context,int index) {
              InfoALLpet dog = DataALLpet.ALLpet[index]; // Access dog data from DataDog.Dog

              return Padding(
                padding: const EdgeInsets.all(8.0),

                child: InkWell(
                  onTap: () {
                    if (dog.id_ALLpet == '1') {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => HomePage(),
                        ),
                      );
                    }
                    else if (dog.id_ALLpet == '2') {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => CatHomePage(), //CatHomePage
                        ),
                      );
                    }
                    else if (dog.id_ALLpet == '3') {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => BirdHomePage(), //CatHomePage
                        ),
                      );
                    }
                    else if (dog.id_ALLpet == '4') {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => RabbitHomePage(), //CatHomePage
                        ),
                      );
                    }
                    else if (dog.id_ALLpet == '5') {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => OwlHomePage(), //CatHomePage
                        ),
                      );
                    }
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
                                  tag: dog.id_ALLpet, // Use dog's ID as the Hero tag
                                  child: FadeInImage(
                                    image:
                                    AssetImage(dog.image_ALLpet),
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
                              dog.title_ALLpet,
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
          '🐾 PET WORLD 🦁',
          style: appBarTextStyle,
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/pink1.jpg'), // ตั้งค่ารูปภาพพื้นหลัง
            fit: BoxFit.cover, // กำหนดให้รูปภาพปรับขนาดเพื่อครอบคลุมทั้งหมด
          ),
        ),
        child: body, // ใส่ Widget ที่คุณมีอยู่แล้วที่นี่
      ),
    );


  }

}

