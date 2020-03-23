import 'package:flutter/material.dart';

class TestScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          FractionallySizedBox(
            alignment: Alignment.topCenter,
            heightFactor: 0.6,
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.amber,
                  image: DecorationImage(
                      image: AssetImage("images/zo.jpg"), fit: BoxFit.cover)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  InkWell(
                    child: Container(
                      margin: EdgeInsets.only(top: 30),
                      child: Row(
                        children: <Widget>[
                          Icon(
                            Icons.arrow_back_ios,
                            size: 20,
                          ),
                          Text("Back"),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(bottom: 100),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(
                          Icons.brightness_1,
                          color: Colors.white,
                          size: 10,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Icon(
                          Icons.brightness_1,
                          color: Colors.red,
                          size: 10,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Icon(
                          Icons.brightness_1,
                          color: Colors.white,
                          size: 10,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Icon(
                          Icons.brightness_1,
                          color: Colors.white,
                          size: 10,
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          FractionallySizedBox(
            alignment: Alignment.bottomCenter,
            heightFactor: 0.5,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30)),
              ),
              child: Padding(
                padding: EdgeInsets.only(left: 10,right: 5),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Text(
                      "M'bor Amour de ma vie",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "😍❤😍",
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.red,
                          fontWeight: FontWeight.bold),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      child: Text(
                        "Qui est elle cette fille aussi belle? Est-ce une déesse? Est-ce le fruit de mon imagination la plus belle? Elle est telle pour moi un ange descendu tout droit du ciel sans ailes et avec zèle je le dirait encore et encore sans gêne que je donnerai tout ce que j'ai pour qu'à jamais elle soit mienne, pour qu'elle m'appartienne",
                        style: TextStyle(color: Colors.grey),
                      ),
                    ),
                    Text(
                      "Elle se nomme",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            Icon(
                              Icons.brightness_1,
                              size: 8,
                              color: Colors.red,
                            ),
                            Text(
                              "Domi",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        Text(
                          "😍",
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            Icon(
                              Icons.brightness_1,
                              size: 8,
                              color: Colors.red,
                            ),
                            Text(
                              "Flore",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        Text(
                          "😘",
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            Icon(
                              Icons.brightness_1,
                              size: 8,
                              color: Colors.red,
                            ),
                            Text(
                              "Chelida",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        Text(
                          "💕",
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            Icon(
                              Icons.brightness_1,
                              size: 8,
                              color: Colors.red,
                            ),
                            Text(
                              "Orphelia",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        Text(
                          "😍",
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Container(
                          height: 50,
                          width: 150,
                          decoration: BoxDecoration(
                              color: Colors.redAccent,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: <Widget>[
                              Text(
                                "Je t'aime",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 18),
                              ),
                              Icon(
                                Icons.add_circle,
                                size: 8,
                                color: Colors.white,
                              ),
                            ],
                          ),
                        ),
                        Card(
                          elevation: 10,
                            child: Container(
                              height: 50,
                              width: 50,
                                child: Icon(
                          Icons.visibility,
                          color: Colors.grey,
                        ))),
                        Card(
                          elevation: 10,
                            child: Container(
                              height: 50,
                              width: 50,
                                child: Icon(
                          Icons.favorite,
                          color: Colors.pinkAccent,
                        ))),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
