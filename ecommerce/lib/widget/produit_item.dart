
import '../providers/model/categoriemodel.dart';
import 'package:flutter/material.dart';


class ProductItem extends StatelessWidget {
  final int id;
  final String image, nom, description;
  final int prix;
  final Produit produit;

  ProductItem({
    this.id,
    @required this.image,
    @required this.nom,
    @required this.description,
    @required this.prix,
    this.produit
  });

  @override
  Widget build(BuildContext context) {
    
    return Card(
      elevation: 10,
      child: Stack(
        overflow: Overflow.visible,
        children: <Widget>[
          Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  height: 120,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("images/$image"),
                    ),
                  ),
                ),
                Text(
                  nom,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  description,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(color: Color(0xffd4d4d6), fontSize: 18),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "$prix Fcfa",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          Positioned(
            bottom: -10,
            right: 2,
            child: Container(
              width: 40,
              height: 40,
              color: Color(0xfffdcf7a).withOpacity(0.7),
              child: IconButton(
                onPressed: (){
                  Navigator.pushNamed(context, 'detail',arguments: produit);
                },
                icon: Icon(
                  Icons.shopping_basket,
                  color: Color(0xfffdfef9),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
