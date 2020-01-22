import 'package:flutter/material.dart';
import 'Listtiles.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'components/horizontal_listview.dart';
import 'components/products.dart';
import 'pages/Cart.dart';
void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: HomePage(),
  ));
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    Widget image_carousel = Container(
      height: 200,
      child: Carousel(
        boxFit: BoxFit.cover,
        images: [
          AssetImage("images/c1.jpg"),
          AssetImage("images/w4.jpeg"),
          AssetImage("images/m1.jpeg"),
          AssetImage("images/m2.jpg"),
          AssetImage("images/w1.jpeg"),
          AssetImage("images/w3.jpeg"),
        ],
      ),
    );
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "fashion app",
          textAlign: TextAlign.center,
        ),
        backgroundColor: Colors.red,
        elevation: 0.0,
        actions: <Widget>[
          IconButton(
              icon: Icon(Icons.search, color: Colors.white), onPressed: () {}),
          IconButton(
              icon: Icon(Icons.shopping_cart, color: Colors.white),
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (context)=> Cart()));
              }),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: Text("ahmed salah"),
              accountEmail: Text("ahmed@gmail.com"),
              currentAccountPicture: GestureDetector(
                child: CircleAvatar(
                  backgroundColor: Colors.white,
                  child: Icon(
                    Icons.person,
                    color: Colors.red,
                  ),
                ),
              ),
              decoration: BoxDecoration(color: Colors.red),
            ),
            tilees(Icon(Icons.home), Text("home page")),
            tilees(Icon(Icons.person), Text("Account")),
            InkWell(
                onTap: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (context)=> Cart()));
                },
                child: ListTile(
                  leading: Icon(Icons.shopping_cart),
                  title: Text("shopping cart"),
                )

            ),
            tilees(Icon(Icons.attachment), Text("Categories")),
            tilees(Icon(Icons.favorite), Text("Favoriates")),
            tilees(Icon(Icons.settings), Text("Settings")),
            tilees(Icon(Icons.help), Text("Help")),
          ],
        ),
      ),
      body: ListView(
        children: <Widget>[
          // image carousel
          image_carousel,

          // text "category"
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Text(
              "Categories",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold),
            ),
          ),

          // horizontal list view
          listViewComponent(),

          Padding(
            padding: const EdgeInsets.fromLTRB(12.0,20.0,12.0,20),
            child: Text("products",
            style: TextStyle(
              color: Colors.black,
              fontSize: 15.0,
              fontWeight: FontWeight.w900
            ),
            ),
          ),

          // grid view
          Container(
            height: 320.0,
            child: Products(),
          )


        ],
      ),
    );
  }
}
