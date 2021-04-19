import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dashboard - Levi',
      theme: ThemeData(
          dialogBackgroundColor: Colors.grey[900],
          canvasColor: Colors.grey[900],
          primarySwatch: Colors.pink,
          scaffoldBackgroundColor: Colors.grey[900],
          textTheme: TextTheme(
              headline4: TextStyle(
                color: Colors.grey,
                fontSize: 40,
              ),
              headline2: TextStyle(
                color: Colors.pink,
                fontSize: 40,
              ),
              headline3: TextStyle(
                color: Colors.white,
                fontSize: 20,
              ),
              bodyText1: TextStyle(
                color: Colors.white,
                fontSize: 16,
              ),
              bodyText2: TextStyle(color: Colors.white))),
      home: MyHomePage(title: 'Levi Ackerman Profile'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Dashboard")),
      drawer: Drawer(
          child: ListView(
        children: <Widget>[
          DrawerHeader(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                      padding: EdgeInsets.all(10.0),
                      child: CircleAvatar(
                        backgroundImage: NetworkImage(
                            "https://static.wikia.nocookie.net/shingekinokyojin/images/f/f0/Levi_Ackermann_%28Anime%29_character_image_%28850%29.png/revision/latest?cb=20210124214225"),
                        radius: 40,
                      )),
                  Text("Levi Ackerman",
                      style: Theme.of(context).textTheme.bodyText1),
                  Text(
                    "leviackerman@attackontitan.com",
                    style: Theme.of(context).textTheme.bodyText2,
                  )
                ],
              ),
              decoration: BoxDecoration(color: Colors.pink)),
          Container(
              child: Column(
            children: [
              Row(children: [
                Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Icon(
                    Icons.mail,
                    size: 40.0,
                    color: Colors.pink,
                  ),
                ),
                Text(
                  "Todays",
                  style: Theme.of(context).textTheme.bodyText1,
                )
              ]),
              Divider(
                height: 1,
                color: Colors.grey,
              ),
              Row(children: [
                Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Icon(
                    Icons.store,
                    size: 30.0,
                    color: Colors.grey,
                  ),
                ),
                Text("Products")
              ]),
              Row(children: [
                Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Icon(
                    Icons.people,
                    size: 30.0,
                    color: Colors.grey,
                  ),
                ),
                Text("Direct Materials")
              ]),
              Row(children: [
                Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Icon(
                    Icons.local_offer,
                    size: 30.0,
                    color: Colors.grey,
                  ),
                ),
                Text("Direct Labour")
              ]),
              Row(children: [
                Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Icon(
                    Icons.local_offer,
                    size: 30.0,
                    color: Colors.grey,
                  ),
                ),
                Text("Overheads")
              ]),
              Row(children: [
                Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Icon(
                    Icons.people,
                    size: 30.0,
                    color: Colors.grey,
                  ),
                ),
                Text("Customers")
              ]),
              Row(children: [
                Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Icon(
                    Icons.people,
                    size: 30.0,
                    color: Colors.grey,
                  ),
                ),
                Text("Suppliers")
              ]),
              Divider(
                height: 1,
                color: Colors.grey,
              ),
              Row(children: [
                Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Icon(
                    Icons.people,
                    size: 30.0,
                    color: Colors.grey,
                  ),
                ),
                Text("Consultant")
              ]),
              Row(children: [
                Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Icon(
                    Icons.help,
                    size: 30.0,
                    color: Colors.grey,
                  ),
                ),
                Text("Help")
              ]),
              Row(children: [
                Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Icon(
                    Icons.settings,
                    size: 30.0,
                    color: Colors.grey,
                  ),
                ),
                Text("Settings")
              ]),
              Row(children: [
                Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Icon(
                    Icons.logout,
                    size: 30.0,
                    color: Colors.grey,
                  ),
                ),
                Text("Logout")
              ]),
            ],
          ))
        ],
      )),
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              FractionallySizedBox(
                widthFactor: 1,
                child: Container(
                    decoration: BoxDecoration(
                        color: Colors.black12,
                        borderRadius: BorderRadius.circular(20)),
                    child: Padding(
                        padding: EdgeInsets.all(20.0),
                        child: Column(children: [
                          Padding(
                            padding: EdgeInsets.all(10),
                            child: Text("Full Name",
                                style: Theme.of(context).textTheme.headline3),
                          ),
                          Text("Levi Ackerman",
                              style: Theme.of(context).textTheme.headline2)
                        ]))),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                      decoration: BoxDecoration(
                          color: Colors.black12,
                          borderRadius: BorderRadius.circular(20)),
                      child: Card(
                          child: Padding(
                              padding: EdgeInsets.all(25.0),
                              child: Column(children: [
                                Padding(
                                  padding: EdgeInsets.all(10),
                                  child: Text("Titan Kills",
                                      style: Theme.of(context)
                                          .textTheme
                                          .headline3),
                                ),
                                Text("60+",
                                    style:
                                        Theme.of(context).textTheme.headline2)
                              ])))),
                  Container(
                      decoration: BoxDecoration(
                          color: Colors.black12,
                          borderRadius: BorderRadius.circular(20)),
                      child: Padding(
                          padding: EdgeInsets.all(25.0),
                          child: Column(children: [
                            Padding(
                              padding: EdgeInsets.all(10),
                              child: Text("Height(cm)",
                                  style: Theme.of(context).textTheme.headline3),
                            ),
                            Text("160",
                                style: Theme.of(context).textTheme.headline2)
                          ]))),
                ],
              ),
              FractionallySizedBox(
                widthFactor: 1,
                child: Container(
                    decoration: BoxDecoration(
                        color: Colors.black12,
                        borderRadius: BorderRadius.circular(20)),
                    child: Padding(
                        padding: EdgeInsets.all(20.0),
                        child: Column(children: [
                          Padding(
                            padding: EdgeInsets.all(10),
                            child: Text("Sub-ordinates",
                                style: Theme.of(context).textTheme.headline2),
                          ),
                          Container(
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                Text(
                                  "Mikasa Ackerman",
                                  style: Theme.of(context).textTheme.headline3,
                                ),
                                Text(
                                  "Eren Yeager",
                                  style: Theme.of(context).textTheme.headline3,
                                ),
                                Text(
                                  "Armin Artlet",
                                  style: Theme.of(context).textTheme.headline3,
                                ),
                                Text(
                                  "Jean Kristein",
                                  style: Theme.of(context).textTheme.headline3,
                                ),
                                Text(
                                  "Sasha Braus",
                                  style: Theme.of(context).textTheme.headline3,
                                ),
                                Text(
                                  "Connie Springer",
                                  style: Theme.of(context).textTheme.headline3,
                                ),
                              ]))
                        ]))),
              ),
              FractionallySizedBox(
                widthFactor: 1,
                child: ElevatedButton(
                    style: ButtonStyle(
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ))),
                    child: Padding(
                        padding: EdgeInsets.all(20.0),
                        child: Text(
                          "Add to Favorites",
                          style: Theme.of(context).textTheme.bodyText1,
                        )),
                    onPressed: () => showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return AlertDialog(
                            title: Icon(
                              Icons.warning,
                              color: Colors.pink,
                              size: 60.0,
                            ),
                            content: Text(
                              "Levi Ackerman is already your favorite !",
                              style: Theme.of(context).textTheme.bodyText1,
                            ),
                            actions: [
                              TextButton(
                                child: Text("I know"),
                                onPressed: () => {Navigator.of(context).pop()},
                              ),
                              TextButton(
                                  onPressed: () =>
                                      {Navigator.of(context).pop()},
                                  child: Text("Add him again"))
                            ],
                          );
                        })),
              )
            ],
          ),
        ),
      ),
    );
  }
}
