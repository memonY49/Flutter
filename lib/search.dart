import 'package:flutter/material.dart';
import 'package:flutter_assi3/profile.dart';

class search extends StatefulWidget {
  const search({Key? key}) : super(key: key);

  @override
  _searchState createState() => _searchState();
}

class _searchState extends State<search> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleSpacing: 2,
        backgroundColor: Color(0xff6ff7b8),
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
                Navigator.pop(context);
              },
              child: Icon(
                Icons.clear,
                size: 30,
              ),
            ),
          )
        ],
      ),
      body: Scrollbar(
        child: ListView.builder(
          itemCount: 10,
          physics: new ClampingScrollPhysics(),
          itemBuilder: (context, index) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.all(5),
                  width: MediaQuery.of(context).size.width,
                  child: TextField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: 'Username',
                        suffixIcon: IconButton(
                          icon: Icon(Icons.search),
                          onPressed: () {},
                        )),
                  ),
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Text("History",
                          style: TextStyle(
                            color: Colors.grey,
                            fontWeight: FontWeight.bold,
                            fontSize: 14,
                          )),
                    ),
                  ],
                ),
                historyTiles(
                    'iphone12.jpg', //Image
                    'Iphone 12', //Title
                    5, //Rating
                    23, //Review
                    1000 //Price
                    ),
                historyTiles('blackshark4.jpg', 'BlackShark 4', 5, 23, 550),
                historyTiles('Asusrog5.jpg', 'Asus Rog 5', 5, 20, 500),
                historyTiles('note20.jpeg', 'Note 20 ultra', 5, 20, 900),
                historyTiles('oneplus7pro.jpg', 'OnePlus 7pro', 4, 40, 550),
                historyTiles('onplusnord.jpg', 'OnePlus Nord', 2, 20, 500),
                historyTiles('poccox3pro.jpg', 'Pocco X3', 2, 20, 150),
                historyTiles('redmagic5g.jpg', 'Red Magic 5g', 4, 30, 500),
                historyTiles('mi11.jpg', 'Mi 11', 4, 20, 350),
                historyTiles('mi10.jpg', 'Mi 10', 4, 10, 300),
                historyTiles('realme85g.jpg', 'Realme 8 5g', 2, 30, 200),
                historyTiles('realmex3.jpg', 'Realme X3', 3, 10, 300),
              ],
            );
          },
        ),
      ),
    );
  }
}

Widget historyTiles(img, title, rating, review, price) {
  return ListTile(
    leading: CircleAvatar(
      radius: 20,
      backgroundImage: AssetImage(img),
    ),
    title: Text(title),
    subtitle: Row(
      children: [
        Icon(
          Icons.star,
          color: Colors.yellow,
          size: 20,
        ),
        Text("\$$rating\.0 ($review Reviews)")
      ],
    ),
    trailing: Text('\$$price'),
  );
}
