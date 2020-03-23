import 'package:ecommerce/providers/data/Cart.dart';
import 'package:ecommerce/providers/model/categoriemodel.dart';
import 'package:ecommerce/widget/badge.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class DetailArticle extends StatefulWidget {
  @override
  _DetailArticleState createState() => _DetailArticleState();
}

class _DetailArticleState extends State<DetailArticle> {
  @override
  Widget build(BuildContext context) {
    final cart = Provider.of<Cart>(context, listen: false);
    final product = ModalRoute.of(context).settings.arguments as Produit;
    print(product.nom);
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.black),
        actions: <Widget>[
          Consumer<Cart>(
            builder: (_, cart, ch) => Badge(
              child: ch,
              value: cart.itemCount.toString(),
            ),
            child: IconButton(
              icon: Icon(
                Icons.shopping_basket,
                color: Colors.black,
              ),
              onPressed: () {
                Navigator.pushNamed(context, 'cart');
              },
            ),
          ),
          SizedBox(
            width: 10,
          ),
          Icon(
            Icons.menu,
            color: Colors.black,
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          
          child: Column(
            children: <Widget>[
              Container(
                width: MediaQuery.of(context).size.width,
                height: 270,
                decoration: BoxDecoration(
                    color: Colors.white,
                    image: DecorationImage(
                      image: AssetImage("images/${product.image}"),
                    
                    )),
              ),
              
              SizedBox(
                height: 10,
              ),
              Container(
                padding: EdgeInsets.only(left: 30),
                alignment: Alignment.centerLeft,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      product.nom,
                      style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "A moderne Tradition",
                      style: TextStyle(fontSize: 17, color: Color(0xffaeaeae)),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 60,
                alignment: Alignment.centerLeft,
                padding: EdgeInsets.only(left: 30, right: 40),
                child: Text(
                  product.description,
                  style: TextStyle(fontSize: 17, color: Color(0xffaeaeae)),
                ),
              ),
              SizedBox(
                height: 13,
              ),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          "Size",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                              fontSize: 15),
                        ),
                        SizedBox(
                          height: 3,
                        ),
                        Text(
                          "H:80cm W:50cm D:4cm",
                          style:
                              TextStyle(fontSize: 15, color: Color(0xffaeaeae)),
                        )
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          "Treatment",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                              fontSize: 15),
                        ),
                        SizedBox(
                          height: 3,
                        ),
                        Text(
                          "Oak oiled,Weaved",
                          style:
                              TextStyle(fontSize: 15, color: Color(0xffaeaeae)),
                        )
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 17,
              ),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Card(
                          elevation: 10,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(100)),
                          child: Container(
                            width: 30,
                            height: 30,
                            decoration: BoxDecoration(
                                color: Color(0xffedc894),
                                shape: BoxShape.circle,
                                border:
                                    Border.all(color: Colors.white, width: 5)),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Card(
                          elevation: 10,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(100)),
                          child: Container(
                            width: 20,
                            height: 20,
                            decoration: BoxDecoration(
                              color: Color(0xff8a532c),
                              shape: BoxShape.circle,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Card(
                          elevation: 10,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(100)),
                          child: Container(
                            width: 20,
                            height: 20,
                            decoration: BoxDecoration(
                              color: Color(0xff313131),
                              shape: BoxShape.circle,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        Container(
                          alignment: Alignment.center,
                          width: 25,
                          height: 25,
                          decoration: BoxDecoration(
                            border: Border.all(color: Color(0xffaeaeae)),
                            shape: BoxShape.circle,
                          ),
                          child: Text(
                            "-",
                            style: TextStyle(fontSize: 21),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                          width: 20,
                          height: 20,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                          ),
                          child: Text(
                            "1",
                            style: TextStyle(fontSize: 17),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                          alignment: Alignment.center,
                          width: 25,
                          height: 25,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(color: Color(0xffaeaeae)),
                          ),
                          child: Text(
                            "+",
                            style: TextStyle(fontSize: 21),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              InkWell(
                onTap: () {
                  cart.addItem(product.id.toString(), product.prix.toDouble(),
                      product.nom, product.image);
                  print(cart.items.values);
                  Scaffold.of(context).hideCurrentSnackBar();
                  Scaffold.of(context).showSnackBar(SnackBar(
                    content: Text("Ajout de produit au panier"),
                    duration: Duration(seconds: 2),
                    action: SnackBarAction(
                      label: 'Annuler',
                      onPressed: () {
                        cart.removeSingleItem(product.id.toString());
                      },
                    ),
                  ));

                  Navigator.pushNamed(context, "verpanier");
                },
                child: Container(
                  alignment: Alignment.center,
                  width: MediaQuery.of(context).size.width,
                  height: 50,
                  color: Color(0xfffed078),
                  child: Text(
                    "Add to bag",
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
