import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Home(),
  ));
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: Text("Flutter Apps"),
        actions: <Widget>[
          IconButton(
            onPressed: () {
              print("Klik");
            },
            icon: Icon(Icons.settings),
          ),
          IconButton(
            onPressed: () {
              print("Klik search");
            },
            icon: Icon(Icons.search),
          )
        ],
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: ClipRRect(
                  borderRadius: new BorderRadius.circular(10.0),
                  child: Image.asset(
                    "assets/w4.jpg",
                    width: 400,
                  )),
            ),
            Text(
              "Politeknik Harapan Bersama",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text("Bayu Adi Prasetiyo"),
            Divider(
              height: 10.0,
            ),
            Row(
              children: <Widget>[
                Text(
                  "Menu Items",
                  textAlign: TextAlign.left,
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            Divider(
              height: 10.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Column(
                  children: <Widget>[Icon(Icons.home), Text("Home")],
                ),
                Column(
                  children: <Widget>[Icon(Icons.android), Text("Android")],
                ),
                Column(
                  children: <Widget>[Icon(Icons.settings), Text("Settings")],
                )
              ],
            ),
            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Column(
                  children: <Widget>[
                    ClipRRect(
                        borderRadius: new BorderRadius.circular(10.0),
                        child: Image.asset(
                          "assets/w4.jpg",
                          width: 100,
                        )),
                    Text("Home")
                  ],
                ),
                Column(
                  children: <Widget>[
                    ClipRRect(
                        borderRadius: new BorderRadius.circular(10.0),
                        child: Image.asset(
                          "assets/w4.jpg",
                          width: 100,
                        )),
                    Text("Home")
                  ],
                ),
                Column(
                  children: <Widget>[
                    ClipRRect(
                        borderRadius: new BorderRadius.circular(10.0),
                        child: Image.asset(
                          "assets/w4.jpg",
                          width: 100,
                        )),
                    Text("Home")
                  ],
                )
              ],
            )
          ],
        ),

        // child: Column(
        //   crossAxisAlignment: CrossAxisAlignment.start,
        //   children: <Widget>[
        //     Text("Text widget"),
        //     Text("Text widget"),
        //     Text("Text widget"),
        //     Text("Text widget"),
        //     Text("Text widget"),
        //     Text("Text widget"),
        //     Text("Text widget"),
        //     Image.asset("assets/work.png"),
        //     Row(
        //       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        //       children: <Widget>[
        //         Column(
        //           children: <Widget>[
        //             Icon(
        //               Icons.battery_alert,
        //               size: 50,
        //               color: Colors.red,
        //             ),
        //             Text("Empty")
        //           ],
        //         ),
        //         Column(
        //           children: <Widget>[
        //             Icon(
        //               Icons.battery_charging_full,
        //               size: 50,
        //               color: Colors.amber,
        //             ),
        //             Text("Charging")
        //           ],
        //         ),
        //         Column(
        //           children: <Widget>[
        //             Icon(
        //               Icons.battery_full,
        //               size: 50,
        //               color: Colors.green,
        //             ),
        //             Text("Full")
        //           ],
        //         ),
        //       ],
        //     )
        //   ],
        // ),
      ),
      drawer: Drawer(
        child: Column(
          children: <Widget>[
            Container(
              color: Colors.blueAccent,
              height: 150.0,
            ),
            Padding(
              padding: const EdgeInsets.all(1.0),
              child: Text("Menu Atas"),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text("Home"),
              subtitle: Text("Halaman Awal"),
              trailing: Icon(Icons.arrow_drop_down),
            ),
            ListTile(
              leading: Icon(Icons.gamepad),
              title: Text("Halaman Kedua"),
            ),
            Padding(
              padding: const EdgeInsets.all(1.0),
              child: Text("Menu Bawah"),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text("Home"),
              subtitle: Text("Halaman Awal"),
              trailing: Icon(Icons.arrow_drop_down),
            ),
            ListTile(
              leading: Icon(Icons.gamepad),
              title: Text("Halaman Kedua"),
            ),
            Divider(
              height: 10.0,
            )
          ],
        ),
      ),
    );
  }
}
