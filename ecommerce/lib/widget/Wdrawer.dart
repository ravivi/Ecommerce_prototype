import 'package:flutter/material.dart';

Widget Drawerchat(BuildContext context){
  return Drawer(
    child: Column(
      children: <Widget>[
        DrawerHeader(
            decoration: BoxDecoration(image: DecorationImage(image: AssetImage("images/amie.jpg"),fit: BoxFit.cover,colorFilter:ColorFilter.mode(Colors.black, BlendMode.color))),
            child:Container(decoration: BoxDecoration(color: Colors.blue.withOpacity(0.2)),
              width: 300,
              height: 300,
              child:  Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  CircleAvatar(radius: 30,
                    backgroundImage: AssetImage("images/new6.jpg"),),
                  Text("cedric Axel"),
                  Text("coboguie@gmail.com"),


                ],
              ),
            )
        ),
        Expanded(
          child: ListView(
            children: <Widget>[
              ListTile(onTap: (){Navigator.pushNamed(context,"profile");},
                  leading: Icon(Icons.person,color: Color(0xff0707ed),),title: Text("Mon profil")),

              ListTile(onTap: (){Navigator.popAndPushNamed(context, "contacte");},
                leading: Icon(Icons.people,color: Color(0xff0707ed),),title: Text("Mes contacts"),),

              ListTile(onTap: (){Navigator.pop(context);},
                  leading: Icon(Icons.settings,color: Color(0xff0707ed),),title: Text("Parametre")),
              ListTile(onTap: (){Navigator.pop(context);},
                  leading: Icon(Icons.share,color: Color(0xff0707ed),),title: Text("Partager")),
            ],
          ),
        ),
      ],
    ),
  );
}