import 'package:flutter/material.dart';

class CartItem extends StatelessWidget {
  final String id;
  final String productId;
  final double price;
  final int quantity;
  final String title;
  final String image;

  const CartItem(this.id, this.productId, this.price, this.quantity, this.title,
      this.image);

  @override
  Widget build(BuildContext context) {
    //double total = args.prix.toDouble()*number;
    //bool activated = false;
    return Container(
      margin: EdgeInsets.only(bottom: 16),
      width: MediaQuery.of(context).size.width,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Row(
            children: <Widget>[
              CircleAvatar(
                backgroundColor: Colors.white,
                radius: 26,
                backgroundImage: AssetImage("images/$image"),
              ),
              SizedBox(
                width: 7,
              ),
              Text(
                "$quantity",
                style: TextStyle(
                    color: Color(0xffababab),
                    fontWeight: FontWeight.bold,
                    fontSize: 20),
              ),
              SizedBox(
                width: 5,
              ),
              Text("x",
                  style: TextStyle(
                      color: Color(0xffababab),
                      fontWeight: FontWeight.bold,
                      fontSize: 20)),
              SizedBox(
                width: 8,
              ),
              Container(
                  width: 170,
                  child: Text(
                    title,
                    style: TextStyle(
                        color: Color(0xffababab),
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                    overflow: TextOverflow.ellipsis,
                  )),
            ],
          ),
          Text(
            "$price F cfa",
            style: TextStyle(color: Color(0xff606060), fontSize: 16),
          )
        ],
      ),
    );
  }
}
