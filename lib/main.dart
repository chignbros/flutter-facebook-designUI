import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(primaryColor: Colors.blueAccent),
      home: Facebook(),
    );
  }
}

class Facebook extends StatefulWidget {
  @override
  _FacebookState createState() => _FacebookState();
}

class _FacebookState extends State<Facebook> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            icon: Icon(
          Icons.camera_alt,
          color: Colors.white,
          size: 24.0,
        )),
        title: TextField(
          cursorColor: Colors.white,
          decoration: InputDecoration(
              icon: Icon(
                Icons.search,
                color: Colors.white,
              ),
              hintText: "Search",
              hintStyle: TextStyle(color: Colors.white54, fontSize: 18)),
        ),
        actions: <Widget>[
          IconButton(
              icon: Icon(
            const IconData(0xe900, fontFamily: 'Raleway'),
            color: Colors.white,
          ))
        ],
      ),
      body: _buildBody(),
    );
  }

  _buildBody() {
    List<Datas> images = [];
    images.add(Datas(
        img: 'images/mypic.jpg',
        imgPf: 'images/mypic.jpg',
        story: 'ching bros'));
    images.add(Datas(
        img: 'images/mypic.jpg',
        imgPf: 'images/mypic.jpg',
        story: 'ching bros'));
    images.add(Datas(
        img: 'images/mypic.jpg',
        imgPf: 'images/mypic.jpg',
        story: 'ching bros'));
    images.add(Datas(
        img: 'images/mypic.jpg',
        imgPf: 'images/mypic.jpg',
        story: 'ching bros'));
    images.add(Datas(
        img: 'images/mypic.jpg',
        imgPf: 'images/mypic.jpg',
        story: 'ching bros'));
    images.add(Datas(
        img: 'images/mypic.jpg',
        imgPf: 'images/mypic.jpg',
        story: 'ching bros'));
    images.add(Datas(
        img: 'images/mypic.jpg',
        imgPf: 'images/mypic.jpg',
        story: 'ching bros'));
    images.add(Datas(
        img: 'images/mypic.jpg',
        imgPf: 'images/mypic.jpg',
        story: 'ching bros'));
    images.add(Datas(
        img: 'images/mypic.jpg',
        imgPf: 'images/mypic.jpg',
        story: 'ching bros'));

    return ListView(
      children: <Widget>[
        Container(
          child: Stack(
            children: <Widget>[
              Container(
                decoration: BoxDecoration(
                    border: Border.all(width: 0.5, color: Colors.grey)),
                // padding: EdgeInsets.only(top: 10, bottom: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    IconButton(
                      icon: Icon(Icons.collections),
                      onPressed: () {},
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.group),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.supervised_user_circle),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.play_arrow),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.notifications),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.menu),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
        Container(
          child: Container(
            padding: EdgeInsets.only(top: 10, bottom: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      image: DecorationImage(
                          image: AssetImage('images/mypic.jpg'))),
                ),
                Container(
                  width: 280,
                  height: 40,
                  decoration: BoxDecoration(
                    border: Border.all(width: 1, color: Colors.grey),
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: InkWell(
                    onTap: () {},
                    child: Container(
                        margin: EdgeInsets.only(left: 20),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                'What on your mind?',
                                style: TextStyle(fontSize: 18),
                              )
                            ])),
                  ),
                ),
                InkWell(
                  onTap: (){},
                  child: Container(
                    child: Column(
                      children: <Widget>[
                        Icon(
                          Icons.photo_album,
                          size: 28,
                        ),
                        Text("Photo")
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
        Container(
          padding: EdgeInsets.only(top: 10, bottom: 10),
          color: Colors.grey,
          child: Container(
            padding: EdgeInsets.only(top: 10, bottom: 10),
            color: Colors.white,
            height: 200,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: images.length,
              itemBuilder: (context, index) {
                return InkWell(
                  onTap: () {},
                  child: Container(
                    margin: EdgeInsets.only(right: 10),
                    child: Stack(
                      children: <Widget>[
                        Container(
                          width: 120,
                          height: 300,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              image: DecorationImage(
                                  image: AssetImage(images[index].img),
                                  fit: BoxFit.cover)),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 5, top: 5),
                          width: 40,
                          height: 40,
                          child: FittedBox(
                            child: FloatingActionButton(
                              child: Icon(
                                Icons.add,
                                color: Colors.blue,
                              ),
                              backgroundColor: Colors.white,
                              onPressed: () {},
                            ),
                          ),
                        ),
                        Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: <Widget>[
                              Container(
                                margin: EdgeInsets.only(left: 10, bottom: 3),
                                child: Text(
                                  'Add to story',
                                  style: TextStyle(
                                      fontSize: 15, color: Colors.white),
                                ),
                              ),
                            ])
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        )
      ],
    );
  }
}

class Datas {
  String imgPf, story, img;
  Datas({this.img, this.imgPf, this.story});
}
