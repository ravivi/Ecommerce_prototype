import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'dart:convert';


class Categoriemodel with ChangeNotifier{
  int id;
  String nom;
  List<Produit>produit;
  bool isToggle;

  Categoriemodel({ this.id,this.nom,this.produit,this.isToggle=false});

  Categoriemodel.fromJson( Map<String,dynamic>json)
  {
    id=json["id"];
    nom=json["nom"];/*
    produit=json["produit"];*/

    if(json["produit"]!= null)
    {
    produit=List<Produit>();
    json["produit"].forEach(
    (v){
    produit.add(Produit.fromJson(v));

    }
    );
    }


  }

  Future<String>chargerJson()async{
    return await rootBundle.loadString ("assets/data.json");
  }

  Future loadchargerJson()async{
    final charge=await chargerJson();
    Iterable response=json.decode(charge);

    List<Categoriemodel>arr=response.map((i)=>
    Categoriemodel.fromJson(i)).toList();
    return arr;

  }


}

class Produit with ChangeNotifier{
 int id,prix;
 String nom, description,image;

  Produit({this.id,this.nom,this.description,this.prix,this.image});

  Produit.fromJson( Map<String,dynamic>json)
  {
    id=json["id"];
    nom=json["nom"];
    description=json["description"];
    prix=json["prix"];
    image=json["image"];



  }
 Future<String>chargerJson()async{
   return await rootBundle.loadString ("assets/data.json");
 }

 Future loadchargerJson1()async{
   final charge=await chargerJson();
   Iterable response=json.decode(charge);

   List<Produit>arr=response.map((i)=>
       Produit.fromJson(i)).toList();
   return arr;

 }
}

