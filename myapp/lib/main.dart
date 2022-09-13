import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:matcher/matcher.dart';
import 'package:myapp/p2.dart';
import 'package:myapp/p3.dart';

void main() {
  runApp(
    MaterialApp(
      home: MyApp(),
    ),
  );
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int c1 = 0;
  int i1 = 5;
  int i2 = 5;
  double w1 = 0;
  double h1 = 0;
  double w2 = 0;
  double h2 = 0;
  String t1 = "VIEW MORE";
  String t2 = "VIEW MORE";
  bool b1 = false;
  bool b2 = false;
  Color z1 = Colors.blue;
  Color z2 = Colors.blue;

  List gamesImages = [
    "https://upload.wikimedia.org/wikipedia/en/5/51/Minecraft_cover.png",
    "https://upload.wikimedia.org/wikipedia/en/6/69/Horizon_Forbidden_West_cover_art.jpg",
    "https://image.api.playstation.com/vulcan/ap/rnd/202108/0410/2odx6gpsgR6qQ16YZ7YkEt2B.png",
    "https://upload.wikimedia.org/wikipedia/en/thumb/a/a1/Gotham_Knights_Cover.jpg/220px-Gotham_Knights_Cover.jpg",
    "https://upload.wikimedia.org/wikipedia/en/9/9c/Pokemon_Legends_Arceus_cover.jpg",
    "https://upload.wikimedia.org/wikipedia/en/f/f1/Stray_cover_art.jpg",
    "https://assets-prd.ignimgs.com/2022/04/22/splatoon-3-button-fin-1650649248602.jpg",
    "https://upload.wikimedia.org/wikipedia/en/8/85/Tunic_cover_art.jpg",
    "https://cdn1.epicgames.com/salesEvent/salesEvent/Daffodil_1P_Awareness_INT_Epic_1200x1600_1200x1600-356dd4965bde4c5dbd1000f9c97ac4b4",
    "https://cdn.shopify.com/s/files/1/0385/8490/9956/products/EN_Packshots_PS5_Flat_800x.jpg?v=1659336936",
    "https://cdn.shopify.com/s/files/1/0385/8490/9956/products/s-l1600_432f2019-5a52-4674-a4a6-14ce6fd4c81b_800x.jpg?v=1629027550",
    "https://upload.wikimedia.org/wikipedia/en/thumb/6/6d/Dying_Light_2_cover_art.jpg/220px-Dying_Light_2_cover_art.jpg",
    "https://cdn1.dotesports.com/wp-content/uploads/2022/03/10123410/ow2.jpg",
    "https://cdn1.epicgames.com/offer/3a212c0da4f1438e840c21565df4b6fe/EGS_MultiVersus_PlayerFirstGames_S1_2560x1440-6a47069781428af7beb8ab41e1829315?h=270&resize=1&w=480",
    "https://image.api.playstation.com/vulcan/ap/rnd/202105/1919/TQPQtelumFuvM4njKGjgJHQP.png",
    "https://upload.wikimedia.org/wikipedia/en/e/e7/Kirby_and_The_Forgotten_Land_Icon.jpg",
  ];
  List gamesName = [
    "Minecrft",
    "Horizon Forbidden West",
    "Elden Ring",
    "Gotham Knights",
    "Pokémon Legends: Arceus",
    "Stray",
    "Splatoon 3",
    "Tunic ",
    "Tiny Tina's Wonderlands",
    "Call of Duty: Modern Warfare II",
    "Monster Hunter Stories 2 Wings of Ruin",
    "Dying Light 2",
    "Overwatch 2",
    "MultiVersus",
    "Tom Clancy's Rainbow Six Extraction",
    "Kirby and the Forgotten Land"
  ];
  List gamePrice = [
    "only for 9.99 JOD",
    "only for 39.99 JOD",
    "only for 59.99 JOD",
    "only for 49.99 JOD",
    "only for 19.99 JOD",
    "only for 29.99 JOD",
    "only for 29.99 JOD",
    "only for 19.99 JOD",
    "only for 19.99 JOD",
    "only for 9.99 JOD",
    "only for 59.99 JOD",
    "only for 59.99 JOD",
    "Free to play",
    "Free to play",
    "only for 59.99 JOD",
    "only for 19.99 JOD",
  ];
  List NgamesImages = [
    "https://upload.wikimedia.org/wikipedia/en/thumb/a/a1/Gotham_Knights_Cover.jpg/220px-Gotham_Knights_Cover.jpg",
    "https://cdn1.epicgames.com/offer/6b0541b5d9aa476cbf407643ab3b1d7d/EGS_TheCallistoProtocol_StrikingDistanceStudios_S2_1200x1600-1e31eacc92833279f5b7a8d07cd3826c",
    "https://upload.wikimedia.org/wikipedia/en/6/69/Horizon_Forbidden_West_cover_art.jpg",
    "https://m.media-amazon.com/images/I/81Y3Mz9MeUL._SL1500_.jpg",
    "https://upload.wikimedia.org/wikipedia/en/0/0a/Lego_Star_Wars_The_Skywalker_Saga.jpg",
    "https://cdn1.epicgames.com/offer/0d23bb77ee2f45b7a571bde68caddb09/EGS_SaintsRow_DeepSilverVolition_S2_1200x1600-d95f6c911a764ad44302f021a3174a24",
    "https://scarletviolet.pokemon.com/images/meta/en/share-tw.jpg",
    "https://s3.gaming-cdn.com/images/products/5723/616x353/overwatch-2-pc-game-cover.jpg?v=1655110793",
    "https://assets-prd.ignimgs.com/2022/06/28/sonic-frontiers-button-1656432947220.jpg",
    "https://assets.2k.com/1a6ngf98576c/6tu7LdlECm9tltw8LoY9Fc/4f3eb2cd15a9da546676816abeec0fac/CODA_DIG_AG_2D_FOB_FLAT_NR.jpg",
    "https://sm.ign.com/t/ign_mear/cover/s/skull-bone/skull-bones_exvn.1200.jpg",
    "https://www.gamingdragons.com/images/game_img/godofwarragnarokps4.jpg",
    "https://pics.filmaffinity.com/A_Plague_Tale_Requiem-671768929-large.jpg",
    "https://cdn.wccftech.com/wp-content/uploads/2021/12/Gollum_1920x1080.jpg"
  ];
  List NgamesName = [
    "Gotham Knights",
    "The Callisto Protocol",
    "Horizon Forbidden West",
    "Splatoon 3",
    "LEGO Star Wars: The Skywalker Saga",
    "Saints Row 2022",
    "Pokémon Scarlet and Violet",
    "Overwatch 2",
    "Sonic Frontiers",
    "Marvel's Midnight Suns",
    "Skull and Bones",
    "God of War Ragnarök",
    "A Plague Tale: Requiem",
    "The Lord of the Rings: Gollum"
  ];
  List NgamePrice = [
    "only for 49.99 JOD",
    "only for 69.99 JOD",
    "only for 39.99 JOD",
    "only for 29.99 JOD",
    "only for 29.99 JOD",
    "only for 49.99 JOD",
    "only for 29.99 JOD",
    "Free to play",
    "only for 29.99 JOD",
    "only for 59.99 JOD",
    "only for 49.99 JOD",
    "only for 69.99 JOD",
    "only for 49.99 JOD",
    "only for 59.99 JOD",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Game Store",
          style: TextStyle(fontSize: 22),
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.bottomLeft,
            end: Alignment.topRight,
            colors: [
              Colors.purple.shade500,
              Colors.pink.shade400,
              Colors.orangeAccent.shade200,
              Colors.orangeAccent.shade100
            ],
          ),
        ),
        child: ListView(
          scrollDirection: Axis.vertical,
          physics: ScrollPhysics(),
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text("Cart items $c1"),
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.shopping_cart),
                )
              ],
            ),
            Text(
              "Top sellers",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
              textAlign: TextAlign.center,
            ),
            ListView.builder(
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: i1,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  child: ListTile(
                    hoverColor: Colors.red,
                    dense: false,
                    horizontalTitleGap: 10,
                    title: Text("${gamesName[index]}"),
                    subtitle: Text("${gamePrice[index]}"),
                    trailing: IconButton(
                        onPressed: () {
                          setState(
                            () {
                              c1 = c1 + 1;
                            },
                          );
                        },
                        icon: Icon(
                          Icons.add_shopping_cart,
                          color: Colors.black54,
                        )),
                    leading: Image(
                      image: NetworkImage("${gamesImages[index]}"),
                      height: double.infinity,
                      width: 50,
                    ),
                    onTap: () {},
                  ),
                );
              },
            ),
            Container(
              alignment: Alignment.center,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(backgroundColor: z1),
                    onPressed: () {
                      setState(
                        () {
                          i1 = 5;
                          print("$b1");
                          if (b1 == false) {
                            b1 = true;
                          } else {
                            b1 = false;
                          }
                          if (b1 == true) {
                            i1 = 10;
                            t1 = "VIEW LESS";
                          } else {
                            i1 = 5;
                            t1 = "VIEW MORE";
                          }
                          if (t1 == "VIEW LESS") {
                            z1 = Colors.blueGrey;
                            h1 = 40;
                            w1 = 100;
                          } else {
                            h1 = 0;
                            w1 = 0;
                            z1 = Colors.blue;
                          }
                        },
                      );
                    },
                    child: Text("$t1"),
                  ),
                  Container(
                    alignment: Alignment.center,
                    width: w1,
                    height: h1,
                    child: ElevatedButton(
                      onPressed: () {
                        setState(
                          () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) {
                                  return P2();
                                },
                              ),
                            );
                          },
                        );
                      },
                      child: Text(
                        "VIEW ALL",
                        style: TextStyle(fontSize: 15),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Divider(
              height: 30,
              color: Colors.transparent,
            ),
            Text(
              "New release ",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
              textAlign: TextAlign.center,
            ),
            ListView.builder(
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: i2,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  child: ListTile(
                    hoverColor: Colors.red,
                    dense: false,
                    horizontalTitleGap: 10,
                    title: Text("${NgamesName[index]}"),
                    subtitle: Text("${NgamePrice[index]}"),
                    trailing: IconButton(
                        onPressed: () {
                          setState(
                            () {
                              c1 = c1 + 1;
                            },
                          );
                        },
                        icon: Icon(
                          Icons.add_shopping_cart,
                          color: Colors.black54,
                        )),
                    leading: Image(
                      image: NetworkImage("${NgamesImages[index]}"),
                      height: double.infinity,
                      width: 50,
                    ),
                    onTap: () {},
                  ),
                );
              },
            ),
            Container(
              alignment: Alignment.center,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(backgroundColor: z2),
                    onPressed: () {
                      setState(
                        () {
                          i2 = 5;
                          print("$b2");
                          if (b2 == false) {
                            b2 = true;
                          } else {
                            b2 = false;
                          }
                          if (b2 == true) {
                            i2 = 10;
                            t2 = "VIEW LESS";
                          } else {
                            i2 = 5;
                            t2 = "VIEW MORE";
                          }
                          if (t2 == "VIEW LESS") {
                            z2 = Colors.blueGrey;
                            h2 = 40;
                            w2 = 100;
                          } else {
                            h2 = 0;
                            w2 = 0;
                            z2 = Colors.blue;
                          }
                        },
                      );
                    },
                    child: Text("$t2"),
                  ),
                  Container(
                    alignment: Alignment.center,
                    width: w2,
                    height: h2,
                    child: ElevatedButton(
                      onPressed: () {
                        setState(
                          () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) {
                                  return P3();
                                },
                              ),
                            );
                          },
                        );
                      },
                      child: Text(
                        "VIEW ALL",
                        style: TextStyle(fontSize: 15),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
