import '../providers/data/Cart.dart' show Cart;
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../widget/cartItem.dart';

class Chart extends StatefulWidget {
  @override
  _ChartState createState() => _ChartState();
}

class _ChartState extends State<Chart> {
  int number = 0;

  void push() {}

  @override
  Widget build(BuildContext context) {
    final cart = Provider.of<Cart>(context);
    //var args = ModalRoute.of(context).settings.arguments as Produit;
    //print('notre typs ${args.nom}');

    void countUp() {
      setState(() {
        number++;
        print(number);
      });
    }

    void countDown() {
      setState(() {
        if (number > 0) number--;
        print(number);
      });
    }
    //if (number > 0) activated = true;

    return Scaffold(
      backgroundColor: Color(0xff000000),
      body: Column(
        children: <Widget>[
          
             
                Container(
                  margin: EdgeInsets.only(top: 50),
                  width: MediaQuery.of(context).size.width,
                  child: Row(
                    children: <Widget>[
                      Text(
                        "Mon panier",
                        style: TextStyle(color: Color(0xffcacaca), fontSize: 25),
                      ),
                       Icon(Icons.shopping_basket, color:Color(0xffcacaca)),
                      
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                (cart.items.length==0)? Container(
                  alignment: Alignment.center,
                  height: MediaQuery.of(context).size.height/2,
                  child: Text("Panier Vide", style: TextStyle(color:Colors.white,fontSize: 30, fontStyle: FontStyle.italic, fontWeight: FontWeight.bold),)): Expanded(
                  child: ListView.builder(
                    itemCount: cart.items.length,
                    itemBuilder: (ctx, i) {
                      return CartItem(
                        cart.items.values.toList()[i].id,
                        cart.items.keys.toList()[i],
                        cart.items.values.toList()[i].price,
                        cart.items.values.toList()[i].quantity,
                        cart.items.values.toList()[i].title,
                        cart.items.values.toList()[i].image,
                      );
                    },
                  ),
                ),
                SizedBox(height: 5,),
                Container(
                  child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text("Total",style: TextStyle(color: Color(0xffa2a2a2),fontSize: 24),),
                      Text("${cart.totalAmount} Fcfa",style: TextStyle(color: Color(0xffefefef),fontSize:30,fontWeight: FontWeight.w600),)
                    ],
                  ),
                ),
                SizedBox(height: 15,),
                Container(alignment: Alignment.center,
                margin: EdgeInsets.symmetric(horizontal: 20),
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: Color(0xfff9b83a),
                    borderRadius: BorderRadius.circular(100)

                  ),
                  child: Text("Suivant",style: TextStyle(fontSize: 23,fontWeight: FontWeight.bold),),
                  height: 50,
                )
              ],
           
      ),
    );
  }
}
