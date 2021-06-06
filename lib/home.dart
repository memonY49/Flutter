import 'package:flutter/material.dart';
import 'package:flutter_assi3/search.dart';
import 'package:flutter_assi3/profile.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xff6ff7b8),
          titleSpacing: 2,
          title: Text("Gamming Mobiles"),
          leading: GestureDetector(
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Profile()));
            },
            child: Icon(
              Icons.account_circle_rounded,
              size: 30,
            ),
          ),
          actions: [
            Padding(
              padding: EdgeInsets.only(right: 10),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => search()));
                },
                child: Icon(
                  Icons.search,
                  size: 30,
                ),
              ),
            )
          ],
        ),
        body: Scrollbar(
          child: ListView.builder(
              itemCount: 10,
              itemBuilder: (context, index) {
                return Column(children: [
                  cardTiles(
                      context,
                      'iphone12.jpg', //image
                      'Iphone 12', //Title
                      5.0, //Rating
                      23, //Review
                      20, //Pieces
                      1000, //Price
                      1 //Quantity
                      ),
                  cardTiles(context, 'redmagic5g.jpg', 'Red Magic 5g', 5.0, 23,
                      20, 1000, 1),
                  cardTiles(context, 'asusrog5.jpg', 'Asus Rog 5', 5.0, 23, 20,
                      1000, 1),
                  cardTiles(context, 'blackshark4.jpg', 'Black Shark 4', 5.0,
                      23, 20, 1000, 1),
                  cardTiles(context, 'mi10.jpg', 'Mi 10', 5.0, 23, 20, 1000, 1),
                  cardTiles(context, 'mi11.jpg', 'Mi 11', 5.0, 23, 20, 1000, 1),
                  cardTiles(context, 'note20.jpeg', 'Note 20 Ultra', 5.0, 23,
                      20, 1000, 1),
                  cardTiles(context, 'oneplus7pro.jpg', 'Oneplus 7pro', 5.0, 23,
                      20, 1000, 1),
                  cardTiles(context, 'oneplusnord.jpg', 'Oneplus Nord', 5.0, 23,
                      20, 1000, 1),
                  cardTiles(context, 'realmex3.jpg', 'Realme X3', 5.0, 23, 20,
                      1000, 1),
                  cardTiles(context, 'realme85g.jpg', 'Realme 8 5g', 5.0, 23,
                      20, 1000, 1),
                ]);
              }),
        ),
      ),
    );
  }
}

Widget cardTiles(context, img, title, rating, review, pieces, price, quantity) {
  return Card(
    margin: EdgeInsets.only(top: 10, left: 5, right: 5),
    color: Colors.white10,
    elevation: 2,
    child: ListTile(
      contentPadding: EdgeInsets.all(0),
      leading: Container(
        height: MediaQuery.of(context).size.height,
        width: 100,
        // child: Image(
        //   image: AssetImage('iphone12.jpg'),
        // ),
        decoration: BoxDecoration(
          image: DecorationImage(fit: BoxFit.cover, image: AssetImage(img)),
          borderRadius: BorderRadius.all(Radius.circular(5)),
        ),
      ),
      title: Text(title),
      dense: true,
      subtitle: Column(
        children: [
          Row(
            children: [
              Icon(
                Icons.star,
                color: Colors.yellow,
              ),
              Text("$rating ($review Review)")
            ],
          ),
          Row(
            children: [
              Text("$pieces Pieces "),
              Text(
                " \$$price",
                style: TextStyle(color: Colors.pink),
              )
            ],
          ),
          Row(
            children: [
              Text("Quantity $quantity"),
            ],
          )
        ],
      ),
    ),
  );
}
