import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/data/Cart.dart';
import '../providers/data/CategoryData.dart';
import '../widget/badge.dart';
import '../widget/produit_grid.dart';


class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int ind = 0;
  bool _isInit=true;
  bool _isLoaded=false;
  // @override
  // void initState() {
  //   //Provider.of<Products>(context, listen: false).fetchAndSetProduct();

  //   // on peut aussi faire ce qui est commenté
  //   Future.delayed(Duration.zero).then((_) {
  //     Provider.of<CategoryData>(context, listen: false).getcategorie();
  //   });
  //   super.initState();
  // }
  @override
  void didChangeDependencies() {
    if(_isInit){
      setState(() {
        _isLoaded = true;
      });
      Provider.of<CategoryData>(context, listen: false).getcategorie().then((_){
        setState(() {
          _isLoaded = false;
        });
      });
    }
    _isInit = false;
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        backgroundColor: Color(0xfff4f4f4),
        title: Text(
          "O'Djassa",
          style: TextStyle(
              color: Colors.black, fontSize: 24, fontWeight: FontWeight.bold),
        ),
        actions: <Widget>[
          Consumer<Cart>(
            builder: (_, cart, ch) => Badge(
              child: ch,
              value: cart.itemCount.toString(),
            ),
            child: IconButton(
              icon: Icon(Icons.shopping_basket,color: Colors.black,),
              onPressed: () {
                Navigator.pushNamed(context, 'cart');
              },
            ),
          ),
          SizedBox(
            width: 9,
          ),
          Icon(
            Icons.search,
            color: Colors.black,
          )
        ],
      ),
      drawer: Drawer(),
      body: _isLoaded ? Center(
        child: CircularProgressIndicator(),)
          : Container(
              child: Column(
              children: <Widget>[
                Consumer<ListCategory>(
                  builder: (context, catItem, _) => Container(
                    height: 70,
                    width: double.infinity,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      padding: EdgeInsets.all(12),
                      itemCount: catItem.mesCat.length,
                      itemBuilder: (context, i) {
                        return MaterialButton(
                            onPressed: () {
                              catItem.selectedIndex(i);
                              catItem.toggle(catItem.mesCat[i]);
                              setState(() {
                                this.ind = i;
                              });
                            },
                            child: Text(
                              catItem.mesCat[i].nom,
                              style: TextStyle(
                                color: catItem.mesCat[i].isToggle
                                    ? Colors.red
                                    : Colors.grey,
                                fontSize: catItem.mesCat[i].isToggle ? 30 : 16,
                              ),
                            ));
                      },
                    ),
                  ),
                ),
                Expanded(
                  child: IndexedStack(
                    index: ind,
                    children: <Widget>[
                      ProductGrid(index: ind,),
                       ProductGrid(index: ind,),
                        ProductGrid(index: ind,),
                         ProductGrid(index: ind,),
                          ProductGrid(index: ind,),
                           ProductGrid(index: ind,),
                   ],
                  ),
                )
              ],
            ))
          
    );
  }
}
