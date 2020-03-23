import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import '../model/categoriemodel.dart';


class CategoryItem{
  final int id;
  final String nom;
  bool isToggle;

  CategoryItem({this.id, this.nom,this.isToggle=false});
}

class CategoryData with ChangeNotifier  {
  List<Categoriemodel> cat = [];

  Future getcategorie() async {
    List<Categoriemodel> res = await Categoriemodel().loadchargerJson();
    print(res);
    if (res != null) {
      cat = res;
    }
    notifyListeners();
  }
  Categoriemodel findById(int id) {
    return cat.firstWhere((prod) => prod.id == id);
  }
}




class ListCategory with ChangeNotifier {
  int _pageindex = 0;

  List<CategoryItem> mesCat = [
    CategoryItem(id:1, nom: "Fauteuil", isToggle: true),
    CategoryItem(id:2, nom: "Chaussures", isToggle: false),
    CategoryItem(id:3, nom: "Vêtements", isToggle: false),
    CategoryItem(id:4, nom: "Téléphone", isToggle: false),
    CategoryItem(id:5, nom: "Electro-ménager", isToggle: false),
    CategoryItem(id:6, nom: "Bouffe", isToggle: false),
  ];
  get pageindex {
    return _pageindex;
  }

  void toggle(CategoryItem item) {
    mesCat.forEach((catItem) {
      return catItem.isToggle = false;
    });
    mesCat[mesCat.indexOf(item)].isToggle = true;
    notifyListeners();
  }

  Color getColor(int listIndex) {
    return (_pageindex == listIndex) ? Colors.redAccent : Colors.grey;
  }

  selectedIndex(int listIndex) {
    _pageindex = listIndex;
    notifyListeners();
  }
}
