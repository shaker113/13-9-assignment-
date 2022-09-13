import 'package:flutter/material.dart';
import 'package:myapp/main.dart';

class P3 extends StatefulWidget {
  const P3({super.key});

  @override
  State<P3> createState() => _P2State();
}

class _P2State extends State<P3> {
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
              "New release",
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
              itemCount: NgamePrice.length,
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
                              // c1 = c1 + 1;
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
