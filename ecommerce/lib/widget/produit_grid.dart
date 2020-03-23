import '../providers/data/CategoryData.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'produit_item.dart';

class ProductGrid extends StatelessWidget {
  final int index;

  ProductGrid({
 
    @required this.index,
  });
  @override
  Widget build(BuildContext context) {
    final productsData = Provider.of<CategoryData>(context);
    return  Column(
                        children: <Widget>[
                          Container(
                            alignment: Alignment.center,
                            height: 20,
                            child: Row(
                              children: <Widget>[
                                Text(
                                  "${productsData.cat[index].produit.length} produits",
                                  style: TextStyle(
                                    fontSize: 20,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Expanded(
                            child: GridView.builder(
                                itemCount: productsData.cat[index].produit.length,
                                gridDelegate:
                                    SliverGridDelegateWithMaxCrossAxisExtent(
                                  maxCrossAxisExtent: 205,
                                  childAspectRatio: 0.7,
                                  crossAxisSpacing: 10,
                                  mainAxisSpacing: 10,
                                ),
                                itemBuilder: (context, i) {
                                  
                                  return ProductItem(
                                    image:
                                        productsData.cat[index].produit[i].image,
                                    nom: productsData.cat[index].produit[i].nom,
                                    description: productsData
                                        .cat[index].produit[i].description,
                                    prix: productsData.cat[index].produit[i].prix,
                                     produit: productsData
                                              .cat[index].produit[i],
                                  );
                                }),
                          ),
                        ],
                      );
                                    }
}
