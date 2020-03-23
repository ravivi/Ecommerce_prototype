import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


import './providers/data/CategoryData.dart';
import './providers/model/categoriemodel.dart';
import './screen/cart.dart';
import './screen/detailArticle.dart';
import './providers/data/Cart.dart';
import './screen/home.dart';
import 'screen/testScreen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider.value(value: CategoryData()),
        ChangeNotifierProvider.value(value: Categoriemodel()),
        ChangeNotifierProvider.value(value: ListCategory()),
        ChangeNotifierProvider.value(value: Cart()),
        ChangeNotifierProvider.value(value: Produit()),
      ],
          child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          // This is the theme of your application.
          //
          // Try running your application with "flutter run". You'll see the
          // application has a blue toolbar. Then, without quitting the app, try
          // changing the primarySwatch below to Colors.green and then invoke
          // "hot reload" (press "r" in the console where you ran "flutter run",
          // or simply save your changes to "hot reload" in a Flutter IDE).
          // Notice that the counter didn't reset back to zero; the application
          // is not restarted.
          primarySwatch: Colors.blue,
        ),
        home: TestScreen(),
        routes: {
          'detail':(context)=>DetailArticle(),
          'cart':(context)=>Chart()
        },
      ),
    );
  }
}

