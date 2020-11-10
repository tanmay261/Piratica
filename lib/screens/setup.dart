import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Lead extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView(
        children: [
          Container(
            color: Colors.red,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              // crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  child: Stack(
                    alignment: Alignment.bottomCenter,
                    children: [
                      Column(
                        // mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          CircleAvatar(
                            backgroundImage: NetworkImage(
                                'https://upload.wikimedia.org/wikipedia/commons/f/f8/Ratan_Tata_photo.jpg'),
                            radius: 30.0,
                            backgroundColor: Colors.white,
                          ),
                          Container(
                            height: 20.0,
                          ),
                          Container(
                            height: 60.0,
                            color: Colors.white,
                            child: Text(''),
                          )
                        ],
                      ),
                      Column(
                        children: [
                          CircleAvatar(
                            backgroundImage: NetworkImage(
                                'https://upload.wikimedia.org/wikipedia/commons/f/f8/Ratan_Tata_photo.jpg'),
                            radius: 15.0,
                            backgroundColor: Colors.white,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              height: 20.0,
                              color: Colors.blue,
                              child: Text('Ratan'),
                            ),
                          ),
                          Container(
                            height: 30.0,
                            color: Colors.blue,
                            child: Text('1600 hrs'),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  child: Stack(
                    alignment: Alignment.bottomCenter,
                    children: [
                      Column(
                        // mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          //add here
                          SvgPicture.asset(
                             'assets/crown.svg',
                            height: 70.0,
                          ),
                          CircleAvatar(
                            backgroundImage: NetworkImage(
                                'https://upload.wikimedia.org/wikipedia/commons/f/f8/Ratan_Tata_photo.jpg'),
                            radius: 50.0,
                            backgroundColor: Colors.white,
                          ),
                          Container(
                            height: 20.0,
                          ),
                          Container(
                            height: 40.0,
                            color: Colors.white,
                            child: Text(''),
                          )
                        ],
                      ),
                      Column(
                        children: [
                          CircleAvatar(
                            backgroundImage: NetworkImage(
                                'https://upload.wikimedia.org/wikipedia/commons/f/f8/Ratan_Tata_photo.jpg'),
                            radius: 15.0,
                            backgroundColor: Colors.white,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              height: 20.0,
                              color: Colors.blue,
                              child: Text('Ratan'),
                            ),
                          ),
                          Container(
                            height: 30.0,
                            color: Colors.blue,
                            child: Text('1600 hrs'),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  child: Stack(
                    alignment: Alignment.bottomCenter,
                    children: [
                      Column(
                        // mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          CircleAvatar(
                            backgroundImage: NetworkImage(
                                'https://upload.wikimedia.org/wikipedia/commons/f/f8/Ratan_Tata_photo.jpg'),
                            radius: 30.0,
                            backgroundColor: Colors.white,
                          ),
                          Container(
                            height: 20.0,
                          ),
                          Container(
                            height: 60.0,
                            color: Colors.white,
                            child: Text(''),
                          )
                        ],
                      ),
                      Column(
                        children: [
                          CircleAvatar(
                            backgroundImage: NetworkImage(
                                'https://upload.wikimedia.org/wikipedia/commons/f/f8/Ratan_Tata_photo.jpg'),
                            radius: 15.0,
                            backgroundColor: Colors.white,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              height: 20.0,
                              color: Colors.blue,
                              child: Text('Ratan'),
                            ),
                          ),
                          Container(
                            height: 30.0,
                            color: Colors.blue,
                            child: Text('1600 hrs'),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(height: 20.0,color: Colors.greenAccent,)
         
        ],
      ),
    );
  }
}
