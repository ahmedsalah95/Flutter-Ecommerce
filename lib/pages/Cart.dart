import 'package:flutter/material.dart';

class Cart extends StatefulWidget {
  @override
  _CartState createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Cart",
          textAlign: TextAlign.center,
        ),
        backgroundColor: Colors.red,
        elevation: 0.0,
      ),
    body:ListView() ,
      bottomNavigationBar: Container(
        color: Colors.white,
        child: Row(
          children: <Widget>[
            Expanded(
              child: ListTile(
                title: Text("total : "),
                subtitle: Text("\$90"),
              )
            ),
            Expanded(child: MaterialButton(onPressed: (){},
            child: Text("checkout",style: TextStyle(
              color: Colors.white,
            ),),
              color: Colors.red,
            ),

            )
          ],
        ),
      ),
    );
  }
}
