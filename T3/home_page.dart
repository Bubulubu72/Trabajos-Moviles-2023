import 'package:flutter/material.dart';
import 'package:tarea3/item_box.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<Map<String, String>> _elements = [
    {
      "day": "Day 1",
      "lugar": "Bali mountains",
      "image":
          "https://www.xtrafondos.com/wallpapers/montanas-en-lago-al-atardecer-4450.jpg",
    },
    {
      "day": "Day 2",
      "lugar": "Bear Mountain",
      "image":
          "https://www.xtrafondos.com/wallpapers/bosque-al-atardecer-cubierto-en-niebla-11003.jpg",
    },
    {
      "day": "Day 3",
      "lugar": "Crow Canion",
      "image":
          "https://www.xtrafondos.com/wallpapers/montanas-en-el-bosque-11377.jpg",
    }
  ];
  //
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Reserva tu hotel'),
        ),
        body: LayoutBuilder(
          builder: (context, constrains) {
            return Stack(
              fit: StackFit.expand,
              children: [
                Align(
                  alignment: Alignment.topCenter,
                  child: SizedBox(
                      height: 150,
                      width: 392,
                      child: ClipRRect(
                        child: Image.network(
                          "https://p4.wallpaperbetter.com/wallpaper/528/806/409/1920x1080-beach-desktop-background-wallpaper-preview.jpg",
                          fit: BoxFit.fill,
                        ),
                      )),
                ),
                Positioned(
                    top: 65,
                    bottom: 0,
                    right: 0,
                    left: 0,
                    child: ListView(
                      children: [
                        //
                        Card(
                          margin: EdgeInsets.all(12),
                          child: Container(
                            padding: EdgeInsets.all(12),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                ListTile(
                                  leading: Icon(
                                    Icons.surfing,
                                    color: Colors.indigo,
                                    size: 48,
                                  ),
                                  title: Text(
                                    "Balis Beach",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w900,
                                        fontSize: 21),
                                  ),
                                  subtitle: Wrap(
                                    children: [
                                      Icon(
                                        Icons.star,
                                        color: Colors.yellow,
                                        size: 16,
                                      ),
                                      Icon(
                                        Icons.star,
                                        color: Colors.yellow,
                                        size: 16,
                                      ),
                                      Icon(
                                        Icons.star,
                                        color: Colors.yellow,
                                        size: 16,
                                      ),
                                      Icon(
                                        Icons.star,
                                        color: Colors.yellow,
                                        size: 16,
                                      ),
                                    ],
                                  ),
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      children: [
                                        Text(
                                          "Duration",
                                          style: TextStyle(
                                              fontSize: 10, color: Colors.grey),
                                        ),
                                        Text(
                                          "7 days",
                                          style: TextStyle(fontSize: 14),
                                        ),
                                      ],
                                    ),
                                    Column(
                                      children: [
                                        Text(
                                          "Participantes",
                                          style: TextStyle(
                                              fontSize: 10, color: Colors.grey),
                                        ),
                                        Text(
                                          "10 people",
                                          style: TextStyle(fontSize: 14),
                                        ),
                                      ],
                                    ),
                                    Column(
                                      children: [
                                        Text(
                                          "Hotel Stay",
                                          style: TextStyle(
                                              fontSize: 10, color: Colors.grey),
                                        ),
                                        Text(
                                          "5-star hotel",
                                          style: TextStyle(fontSize: 14),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                                Divider(
                                  thickness: 1,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "Trip Price",
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      "\$ 1225.00/Adult",
                                      style: TextStyle(fontSize: 14),
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                        //
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            ElevatedButton(
                              onPressed: () {},
                              child: Text("Details"),
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.red,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20))),
                            ),
                            Text(
                              "Walkthrough Flight Detail",
                              style: TextStyle(
                                  fontSize: 14, fontWeight: FontWeight.w500),
                            )
                          ],
                        ),
                        //
                        Column(
                          children: [
                            Container(
                              height: 170,
                              width: 380,
                              child: ListView.builder(
                                scrollDirection: Axis.horizontal,
                                itemCount: _elements.length,
                                itemBuilder: (BuildContext context, int index) {
                                  return ItemBox(
                                    day: _elements[index]["day"]!,
                                    lugar: _elements[index]["lugar"]!,
                                    imagen: _elements[index]["image"]!,
                                  );
                                },
                              ),
                            ),
                          ],
                        ),
                        //
                        MaterialButton(
                          onPressed: () {
                            setState(() {});
                            ScaffoldMessenger.of(context)
                              ..hideCurrentSnackBar()
                              ..showSnackBar(
                                SnackBar(
                                  content: Text("Reservación en progreso"),
                                ),
                              );
                          },
                          child: Text(
                            "Start booking",
                            style: TextStyle(color: Colors.grey[200]),
                          ),
                          color: Colors.red,
                        ),
                      ],
                    ))
              ],
            );
          },
        ));
  }
}
