import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:projectPet/login/catClass.dart';
import 'package:projectPet/login/page/Review.dart';

class Detailsbird extends StatelessWidget {
  final InfoBird infoc;
  Detailsbird({required this.infoc});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[
            SliverAppBar(
              expandedHeight: 600.0,
              floating: false,
              pinned: true,
              centerTitle: true, toolbarHeight: 80.0,
              title: Text(
                infoc.title_cat,
                style: TextStyle(
                  fontFamily: 'PakkadThin',
                  fontSize: 21.0,
                  fontWeight: FontWeight.bold,

                  shadows: [
                    Shadow(
                      blurRadius: 23.0,  // Adjust the blur radius as needed
                      color: Colors.white,  // Adjust the shadow color as needed
                      offset: Offset(0, 0),  // Adjust the shadow offset as needed
                    ),
                  ],
                ),
                textAlign: TextAlign.center,
              ),
              flexibleSpace: FlexibleSpaceBar(
                background: Hero(
                  tag: infoc.id_cat,
                  child: FadeInImage(
                    image: AssetImage(infoc.image_cat),
                    fit: BoxFit.cover,
                    placeholder: AssetImage('assets/images/load.gif'),
                  ),
                ),
              ),
            )
          ];
        },
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/threecatsleep.png'),
              fit: BoxFit.cover,
              //fit: BoxFit.contain, //contain
            ),
          ),
          padding: EdgeInsets.only(top: 8.0),
          child: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Column(
              children: <Widget>[
                Text(
                  '🦁 ไปรู้จักเจ้าตัวนี้กัน 🧶',
                  style: TextStyle(
                    color: Colors.brown.shade800,
                    fontFamily: 'PakkadThin',
                    fontWeight: FontWeight.bold,
                    fontSize: 40.0,
                  ),
                ),
                bioPet(
                  bio: infoc.bio_cat,
                ),

                SizedBox(height: 20.0),
                Text(
                  '🐆 ข้อมูลสำคัญ 🐆',
                  style: TextStyle(
                    color: Colors.brown.shade800,
                    fontFamily: 'PakkadThin',
                    fontWeight: FontWeight.bold,
                    fontSize: 40.0,
                  ),
                ),
                componentInfo(
                  component: infoc.component_cat,
                ),

                SizedBox(height: 20.0),
                Text(
                  //🐈๋🧶🐆😻😽🙀🦁
                  '😻 ลักษณะนิสัย 😽',
                  style: TextStyle(
                    color: Colors.brown.shade800,
                    fontFamily: 'PandaThin',
                    fontWeight: FontWeight.bold,
                    fontSize: 40.0,
                  ),
                ),
                abtPet(
                  infoPet: infoc.infoPet_cat,
                ),

                SizedBox(height: 30.0),
                Text(
                  //🐶🦴🐾🐕🦮🐕‍🐕‍🦺🐾🦴🐶
                  ' 🐆 สิ่งที่ควรรู้ 🦁',
                  style: TextStyle(
                    color: Colors.brown.shade800,
                    fontFamily: 'PakkadThin',
                    fontWeight: FontWeight.bold,
                    fontSize: 40.0,
                  ),
                ),
                knowpet(
                  needknowpet: infoc.needknowPet_cat,
                ),

                SizedBox(height: 30.0),
                Text(
                  'รู้หรือไม่?',
                  style: TextStyle(
                    color: Colors.red.shade400,
                    fontFamily: 'PandaThin',
                    fontWeight: FontWeight.bold,
                    fontSize: 40.0,
                  ),
                ),
                tp(
                  trickPet: infoc.trickPet_cat,
                ),

                SizedBox(height: 20.0),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Review(title: 'PET WORLD'),
                      ),
                    );
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.red.shade200, // Background color
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    padding: EdgeInsets.all(13.0),
                    child: Text(
                      'Review จากเจ้าของ',
                      style: TextStyle(
                        fontSize: 25.0,
                        fontFamily: 'PakkadThin',
                        color: Colors.white, // Text color
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
class bioPet extends StatelessWidget {
  final List<String> bio;
  bioPet({this.bio = const []});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: bio.length,
      padding: const EdgeInsets.all(0.0),
      shrinkWrap: true,
      physics: ClampingScrollPhysics(),
      scrollDirection: Axis.vertical,
      itemBuilder: (BuildContext context, int index) {
        return ListTile(
          title: Center(
            child: Container(
              alignment: Alignment.center,
              child: Text(
                bio[index],
                style: TextStyle(
                  color: Colors.brown.shade700,
                  fontWeight: FontWeight.bold,
                  fontSize: 17,
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}


class componentInfo extends StatelessWidget {
  final List<String> component;
  componentInfo({this.component = const []});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: component.length,
      padding: const EdgeInsets.all(0.0),
      shrinkWrap: true,
      physics: ClampingScrollPhysics(),
      scrollDirection: Axis.vertical,
      itemBuilder: (BuildContext context, int index) {
        return ListTile(
          leading: CircleAvatar(
            backgroundColor: Theme.of(context).cardColor,
            child: Text('${index + 1}',
                style: TextStyle(color: Colors.brown, fontWeight: FontWeight.bold)),
          ),
          title: Text(component[index],
              style: TextStyle(
                  color: Colors.black, fontWeight: FontWeight.bold,
                  fontSize: 17)),
        );
      },
    );
  }
}

class abtPet extends StatelessWidget {
  final List<String> infoPet;
  abtPet({this.infoPet = const []});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: infoPet.length,
      padding: const EdgeInsets.all(0.0),
      shrinkWrap: true,
      physics: ClampingScrollPhysics(),
      scrollDirection: Axis.vertical,
      itemBuilder: (BuildContext context, int index) {
        return ListTile(
          title: Text(infoPet[index],
              style: TextStyle(
                  color: Colors.brown.shade700, fontWeight: FontWeight.bold,
                  fontSize: 17)),
        );
      },
    );
  }
}

class knowpet extends StatelessWidget {
  final List<String> needknowpet;
  knowpet({this.needknowpet = const []});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: needknowpet.length,
      padding: const EdgeInsets.all(0.0),
      shrinkWrap: true,
      physics: ClampingScrollPhysics(),
      scrollDirection: Axis.vertical,
      itemBuilder: (BuildContext context, int index) {
        return ListTile(
          title: Row(
            children: [
              Text(needknowpet[index],
                style: TextStyle(
                    color: Colors.black, fontWeight: FontWeight.bold,
                    fontSize: 17),),
            ],
          ),
        );
      },
    );
  }
}

class tp extends StatelessWidget {
  final List<String> trickPet;
  tp({this.trickPet = const []});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: trickPet.length,
      padding: const EdgeInsets.all(0.0),
      shrinkWrap: true,
      physics: ClampingScrollPhysics(),
      scrollDirection: Axis.vertical,
      itemBuilder: (BuildContext context, int index) {
        return ListTile(
          title: Text(trickPet[index],
              style: TextStyle(
                  color: Colors.black, fontWeight: FontWeight.bold,
                  fontSize: 17.0,
                shadows: [
                  Shadow(
                    blurRadius: 5.0,  // Adjust the blur radius as needed
                    color: Colors.white,  // Adjust the shadow color as needed
                    offset: Offset(3, 5),  // Adjust the shadow offset as needed
                  ),
                ],
              )),
        );
      },
    );
  }
}