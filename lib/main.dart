import 'package:brokedex/bro_card.dart';
import 'package:brokedex/login_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_tindercard/flutter_tindercard.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bro-kedex',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
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
  List<Bro> names = [
    Bro(name: "OG Leo", coolness: 5),
    Bro(name: "Leo 2", coolness: 5),
    Bro(name: "Leo 3", coolness: 5),
    Bro(name: "Leo 4", coolness: 5),
    Bro(name: "Leo 5", coolness: 5),
  ];

  void _importCard(BuildContext context) {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Text(
                "Bro'kedex",
                style: TextStyle(color: Colors.white, fontSize: 30),
              ),
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
            ),
            LoginPage(),
            ListTile(
              leading: Icon(Icons.contacts),
              title: Text('Deck'),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.edit),
              title: Text('My Card'),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.file_download),
              title: Text('Add a card'),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.file_upload),
              title: Text('Share your card'),
              onTap: () {},
            )
          ],
        ),
      ),
      body: ListView.builder(
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.all(15.0),
            child: BroCard(
              bro: names[index],
            ),
          );
        },
        itemCount: names.length,
      ),
      floatingActionButton: Builder(builder: (BuildContext context) {
        return FloatingActionButton(
          onPressed: () {
            Scaffold.of(context).showSnackBar(SnackBar(
              content:
                  Text("This feature is not quite there yet, but stay tuned!"),
            ));
          },
          tooltip: 'Collect a new card',
          child: Icon(Icons.add),
        );
      }),
    );
  }
}
