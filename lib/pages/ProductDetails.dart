import 'package:flutter/material.dart';
import '../Listtiles.dart';

class ProductDetails extends StatefulWidget {
  final product_details_name;
  final product_details_pic;
  final product_details_price;
  final product_details_old_price;

  ProductDetails(
      {this.product_details_name,
      this.product_details_pic,
      this.product_details_old_price,
      this.product_details_price});

  @override
  _ProductDetailsState createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  @override
  Widget build(BuildContext context) {
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
              onPressed: () {}),
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
            tilees(Icon(Icons.add_shopping_cart), Text("My orders")),
            tilees(Icon(Icons.attachment), Text("Categories")),
            tilees(Icon(Icons.favorite), Text("Favoriates")),
            tilees(Icon(Icons.settings), Text("Settings")),
            tilees(Icon(Icons.help), Text("Help")),
          ],
        ),
      ),
      body: ListView(
        children: <Widget>[
          Container(
            alignment: Alignment.center,
            height: 300.0,
            child: GridTile(
              child: Container(
                child: Image.asset(widget.product_details_pic),
              ),
              footer: Container(
                decoration: BoxDecoration(color: Colors.white70),
                child: ListTile(
                  leading: Text(
                    "${widget.product_details_name}",
                    style:
                        TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                  ),
                  title: Row(
                    children: <Widget>[
                      Expanded(
                        child: Text(
                          "${widget.product_details_price}",
                          style:
                              TextStyle(decoration: TextDecoration.lineThrough),
                        ),
                      ),
                      Expanded(
                        child: Text(
                          "${widget.product_details_old_price}",
                          style: TextStyle(color: Colors.red),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
          Row(
            children: <Widget>[
              // ===== size button =======
              Expanded(
                  child: MaterialButton(
                onPressed: () {
                  showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          title: Text("Size"),
                          content: Text("please choose size"),
                          actions: <Widget>[
                            MaterialButton(
                              onPressed: () {
                                Navigator.of(context).pop(context);
                              },
                              child: Text("close"),
                            )
                          ],
                        );
                      });
                },
                color: Colors.white,
                elevation: 0.2,
                textColor: Colors.grey,
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: Text("Size"),
                    ),
                    Expanded(
                      child: Icon(Icons.arrow_drop_down),
                    )
                  ],
                ),
              )),

              // ===== colors button =======
              Expanded(
                  child: MaterialButton(
                onPressed: () {
                  showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          title: Text("Colors"),
                          content: Text("please choose color"),
                          actions: <Widget>[
                            MaterialButton(
                              onPressed: () {
                                Navigator.of(context).pop(context);
                              },
                              child: Text("close"),
                            )
                          ],
                        );
                      });
                },
                color: Colors.white,
                elevation: 0.2,
                textColor: Colors.grey,
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: Text("Colors"),
                    ),
                    Expanded(
                      child: Icon(Icons.arrow_drop_down),
                    )
                  ],
                ),
              )),

              // ===== quantity button =======
              Expanded(
                  child: MaterialButton(
                onPressed: () {
                  showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          title: Text("quantity"),
                          content: Text("please choose quantity"),
                          actions: <Widget>[
                            MaterialButton(
                              onPressed: () {
                                Navigator.of(context).pop(context);
                              },
                              child: Text("close"),
                            )
                          ],
                        );
                      });
                },
                color: Colors.white,
                elevation: 0.2,
                textColor: Colors.grey,
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: Text("Qty"),
                    ),
                    Expanded(
                      child: Icon(Icons.arrow_drop_down),
                    )
                  ],
                ),
              )),
            ],
          ),
          Row(
            children: <Widget>[
              Expanded(
                  child: Padding(
                padding: const EdgeInsets.all(0.0),
                child: MaterialButton(
                  onPressed: () {},
                  elevation: 0.0,
                  color: Colors.red,
                  child: Text(
                    "buy now",
                    style: TextStyle(color: Colors.white, fontSize: 20.0),
                  ),
                ),
              )),
              IconButton(
                  icon: Icon(Icons.add_shopping_cart, color: Colors.red),
                  onPressed: () {}),
              IconButton(
                  icon: Icon(Icons.favorite, color: Colors.red),
                  onPressed: () {})
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: Divider(
              color: Colors.red,
            ),
          ),
          Row(
            children: <Widget>[
              Expanded(
                  child: ListTile(
                title: Text("product details"),
                subtitle: Text(
                    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum."),
              )),
              Padding(
                padding: const EdgeInsets.all(4.0),
                child: Divider(
                  color: Colors.red,
                ),
              ),

            ],
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(20.0,10.0,20.0,5.0),
            child: Divider(
              color: Colors.red,
            ),
          ),
          Row(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.fromLTRB(10.0,10.0,5.0,5.0),
                child: Text("product name : "),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(10.0,10.0,5.0,5.0),
                child: Text("${widget.product_details_name}"),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(20.0,10.0,20.0,5.0),
            child: Divider(
              color: Colors.red,
            ),
          ),
          Row(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.fromLTRB(10.0,10.0,5.0,5.0),
                child: Text("Country : "),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(10.0,10.0,5.0,5.0),
                child: Text("Egypt"),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
