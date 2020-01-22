import 'package:flutter/material.dart';
import 'package:fashionapp/pages/ProductDetails.dart';
class Products extends StatefulWidget {
  @override
  _ProductsState createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
  var product_list = [
    {
      "name": "blazer",
      "pic": "images/products/blazer1.jpeg",
      "old_price": 100,
      "price": 80
    },
    {
      "name": "blazer 2",
      "pic": "images/products/blazer2.jpeg",
      "old_price": 100,
      "price": 80
    },
    {
      "name": "dress",
      "pic": "images/products/dress1.jpeg",
      "old_price": 100,
      "price": 80
    },
    {
      "name": "dress 2",
      "pic": "images/products/dress2.jpeg",
      "old_price": 100,
      "price": 80
    },
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: product_list.length,
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (BuildContext context, int index) {
          return Single_product(
            prod_name: product_list[index]['name'],
            prod_pic: product_list[index]['pic'],
            prod_old_price: product_list[index]['price'],
            prod_price: product_list[index]['old_price'],
          );
        });
  }
}

class Single_product extends StatelessWidget {
  final prod_name;
  final prod_pic;
  final prod_price;
  final prod_old_price;

  Single_product(
      {this.prod_name, this.prod_pic, this.prod_old_price, this.prod_price});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Hero(
          tag: prod_name,
          child: InkWell(
            onTap: ()=> Navigator.of(context).push(MaterialPageRoute(builder: (context)=> ProductDetails(
              product_details_name: prod_name,
              product_details_pic: prod_pic,
              product_details_price: prod_price,
              product_details_old_price: prod_old_price,
            ))),
            child: GridTile(
              footer: Container(
                color: Colors.white,
                child: ListTile(
                  leading: Text(
                    prod_name,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  title: Text("\$$prod_price"),
                  subtitle: Text("\$$prod_old_price",style: TextStyle(
                    decoration: TextDecoration.lineThrough
                  ),),
                ),
              ),
              child: Image.asset(prod_pic,
              fit: BoxFit.cover,),
            ),
          )),
    );
  }
}
