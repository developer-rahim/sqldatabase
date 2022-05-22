import 'package:badges/badges.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List songName = [
    'Onk sodoner pore ami',
    'Tumi sotoe geteso',
    'namaj k bolo na kaj asr'
        'Onk sodoner pore ami',
    'Tumi sotoe geteso',
    'namaj k bolo na kaj asr'
  ];
  List imageUrl = [
    'https://thumbs.dreamstime.com/b/environment-earth-day-hands-trees-growing-seedlings-bokeh-green-background-female-hand-holding-tree-nature-field-gra-130247647.jpg',
    'https://tinypng.com/images/social/website.jpg',
    'https://static.addtoany.com/images/dracaena-cinnabari.jpg',
    'https://thumbs.dreamstime.com/b/environment-earth-day-hands-trees-growing-seedlings-bokeh-green-background-female-hand-holding-tree-nature-field-gra-130247647.jpg',
    'https://tinypng.com/images/social/website.jpg',
    'https://static.addtoany.com/images/dracaena-cinnabari.jpg'
  ];

  List totalSong = [3, 10, 15, 3, 10, 15];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[800],
      appBar: AppBar(
        backgroundColor: Colors.grey[900],
        title: Text('Product List'),
        actions: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Center(
              child: Badge(
                badgeContent: Text(
                  '0',
                  style: TextStyle(color: Colors.white),
                ),
                animationDuration: Duration(milliseconds: 300),
                child: Icon(Icons.shopping_bag_outlined),
              ),
            ),
          )
        ],
      ),
      body: Column(
        children: [
          Container(
            height: 150,
            child: ListView.builder(
                itemCount: songName.length,
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, gobalIndex) {
                  var getSong = songName[gobalIndex];
                  var getSongImage = imageUrl[gobalIndex];
                  var getTotalSong = totalSong[gobalIndex];

                  if (gobalIndex.isEven) {
                    return Container(
                        margin: EdgeInsets.all(10),
                        width: 150,
                        color: Colors.black54,
                        child: Column(children: [
                          Container(
                            height: 130,
                            child: Column(
                              children: [
                                Expanded(
                                  child: Image.network(
                                    getSongImage,
                                    fit: BoxFit.fitHeight,
                                    width: double.infinity,
                                  ),
                                ),
                                MaterialButton(
                                  onPressed: () {},
                                  child: Container(
                                    padding: EdgeInsets.all(10),
                                    decoration: BoxDecoration(
                                        color: Colors.indigoAccent,
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                    child: Text(
                                      'Add To DB',
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 15),
                                    ),
                                  ),
                                )

                                //  IconButton(onPressed: (){}, icon: Container(
                                //    color: Colors.indigoAccent,width: 80,
                                //    child: Text('Add To DB',style: TextStyle(color: Colors.white),),))
                              ],
                            ),
                          )
                        ]));
                  } else if (gobalIndex.isOdd) {
                    return Container(
                      margin: EdgeInsets.all(10),
                      width: 150,
                      color: Colors.black54,
                      child: Column(
                        children: [
                          Container(
                            height: 130,
                            child: Column(
                              children: [
                                Expanded(
                                  child: Image.network(
                                    getSongImage,
                                    fit: BoxFit.fitHeight,
                                    width: double.infinity,
                                  ),
                                ),
                                MaterialButton(
                                  onPressed: () {},
                                  child: Container(
                                    padding: EdgeInsets.all(10),
                                    decoration: BoxDecoration(
                                        color: Colors.indigoAccent,
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                    child: Text(
                                      'Add To DB',
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 15),
                                    ),
                                  ),
                                )

                                //  IconButton(onPressed: (){}, icon: Container(
                                //    color: Colors.indigoAccent,width: 80,
                                //    child: Text('Add To DB',style: TextStyle(color: Colors.white),),))
                              ],
                            ),
                          ),
                        ],
                      ),
                    );
                  } else if (gobalIndex == 0) {
                    return Container(
                      margin: EdgeInsets.all(10),
                      height: 100,
                      width: 150,
                      color: Colors.green,
                    );
                  }

                  return Column(
                    children: [
                      // Container(
                      //   margin: EdgeInsets.all(10),
                      //   height: 100,
                      //   width: 150,
                      //   color: Colors.black,
                      // )
                    ],
                    // margin: EdgeInsets.all(10),
                    // child: Container(
                    //   child: ListTile(
                    //     leading: Container(
                    //       width: 100,
                    //       child: Image.network(
                    //         getSongImage,
                    //         fit: BoxFit.cover,
                    //         width: double.infinity,
                    //       ),
                    //     ),
                    //   ),
                    // ),
                  );
                }),
          )
        ],
      ),
    );
  }
}
