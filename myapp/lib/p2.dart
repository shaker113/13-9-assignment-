import 'package:flutter/material.dart';
import 'package:myapp/main.dart';

class P2 extends StatefulWidget {
  const P2({super.key});

  @override
  State<P2> createState() => _P2State();
}

class _P2State extends State<P2> {
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
    "only for 39.99 JOD",
    "Free to play",
    "only for 59.99 JOD",
    "only for 19.99 JOD",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        width: double.infinity,
        height: double.infinity,
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
          children: [
            Divider(
              height: 15,
              color: Colors.transparent,
            ),
            Text(
              "Top sellers",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
              textAlign: TextAlign.center,
            ),
            Divider(height: 15, color: Colors.transparent),
            ListView.builder(
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: gamePrice.length,
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
                              // c1 = c1 + 1;
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
              child: ElevatedButton(
                  onPressed: () {
                    setState(
                      () {
                        Navigator.pop(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return MyApp();
                            },
                          ),
                        );
                      },
                    );
                  },
                  child: Text("go Back")),
            )
          ],
        ),
      ),
    );
  }
}
