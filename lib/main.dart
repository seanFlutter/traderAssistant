import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FirstPage();
  }
}

class FirstPage extends StatefulWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  _FirstPageState createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color(0xff404040),
        appBar: AppBar(
          toolbarHeight: 50,
          backgroundColor: Color(0xff404040),
          title: Column(
            children: [
              Row(
                children: [
                  Text(
                    'Trader Assistant',
                    style: TextStyle(fontSize: 19, color: Colors.white),
                  ),
                  SizedBox(width: 8),
                  Icon(Icons.search, size: 35),
                  SizedBox(width: 8),
                  Icon(
                    Icons.archive,
                    size: 35,
                  ),
                  SizedBox(width: 8),
                  Icon(
                    Icons.delete,
                    size: 35,
                  ),
                ],
              ),
            ],
          ),
        ),
        body: Row(),
        drawer: Drawer(

          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              const DrawerHeader(
                margin: EdgeInsets.all(0),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('images/stock1.jpeg'),
                    fit: BoxFit.fitWidth,
                  ),
                  color: Color(0xff404040),
                ),
                child: Text(
                  'Trader Assistant',
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
              ),
              ListTile(
                  tileColor: Color(0xff404040),
                  title: Row(
                    children: [
                      Icon(
                        Icons.message,
                        color: Colors.grey,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          'Notices',
                          style: TextStyle(
                            fontSize: 15,
                            color: Color(0xff676767),
                          ),
                        ),
                      ),
                    ],
                  ),
                  onTap: () {
                    print('kennnnn');
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context)=>const Notices(),),
                    );

                  }),
              ListTile(
                title: Row(
                  children: [
                    Icon(
                      Icons.add_chart,
                      color: Colors.grey,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: const Text(
                        'Target Price',
                        style: TextStyle(
                          fontSize: 15,
                          color: Color(0xff676767),
                        ),
                      ),
                    ),
                  ],
                ),
                tileColor: Color(0xff404040),
                onTap: () {
                  // Update the state of the app.
                  // ...
                },
              ),
              ListTile(
                tileColor: Color(0xff404040),
                title: Row(
                  children: [
                    Icon(
                      Icons.add_shopping_cart_outlined,
                      color: Colors.grey,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'Markets',
                        style: TextStyle(
                          fontSize: 15,
                          color: Color(0xff676767),
                        ),
                      ),
                    ),
                  ],
                ),
                onTap: () {
                  // Update the state of the app.
                  // ...
                },
              ),
              ListTile(
                title: Row(
                  children: [
                    Icon(
                      Icons.add_to_queue_rounded,
                      color: Colors.grey,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: const Text(
                        'Favorites',
                        style: TextStyle(
                          fontSize: 15,
                          color: Color(0xff676767),
                        ),
                      ),
                    ),
                  ],
                ),
                tileColor: Color(0xff404040),
                onTap: () {
                  // Update the state of the app.
                  // ...
                },
              ),
              ListTile(
                tileColor: Color(0xff404040),
                title: Row(
                  children: [
                    Icon(
                      Icons.ad_units_sharp,
                      color: Colors.grey,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'PortFolios',
                        style: TextStyle(
                          fontSize: 15,
                          color: Color(0xff676767),
                        ),
                      ),
                    ),
                  ],
                ),
                onTap: () {
                  // Update the state of the app.
                  // ...
                },
              ),
              ListTile(
                title: Row(
                  children: [
                    Icon(
                      Icons.cancel,
                      color: Colors.grey,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: const Text(
                        'Remove Ads',
                        style: TextStyle(
                          fontSize: 15,
                          color: Color(0xff676767),
                        ),
                      ),
                    ),
                  ],
                ),
                tileColor: Color(0xff404040),
                onTap: () {
                  // Update the state of the app.
                  // ...
                },
              ),
              Divider(
                color: Colors.white24,
                height: 0.5,
              ),
              ListTile(
                tileColor: Color(0xff404040),
                title: Row(
                  children: [
                    Icon(
                      Icons.settings,
                      color: Colors.grey,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'Settings',
                        style: TextStyle(
                          fontSize: 15,
                          color: Color(0xff676767),
                        ),
                      ),
                    ),
                  ],
                ),
                onTap: () {
                  // Update the state of the app.
                  // ...
                },
              ),
              ListTile(
                tileColor: Color(0xff404040),
                title: Row(
                  children: [
                    Icon(
                      Icons.help,
                      color: Colors.grey,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'Help',
                        style: TextStyle(
                          fontSize: 15,
                          color: Color(0xff676767),
                        ),
                      ),
                    ),
                  ],
                ),
                onTap: () {
                  // Update the state of the app.
                  // ...
                },
              ),
              ListTile(
                tileColor: Color(0xff404040),
                title: Row(
                  children: [
                    Icon(
                      CupertinoIcons.stopwatch,
                      color: Colors.grey,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'privacy',
                        style: TextStyle(
                          fontSize: 15,
                          color: Color(0xff676767),
                        ),
                      ),
                    ),
                  ],
                ),
                onTap: () {
                  // Update the state of the app.
                  // ...
                },
              ),
              Container(
                color: Color(0xff404040),
                height: 50,
              ),
            ],
          ),
        ),
      ),
    );
  }


}

class Notices extends StatefulWidget {
  const Notices({Key? key}) : super(key: key);

  @override
  _NoticesState createState() => _NoticesState();
}

class _NoticesState extends State<Notices> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 50,
        backgroundColor: Color(0xff404040),
        title: Column(
          children: [
            Row(
              children: [
                Text(
                  'Trader Assistant',
                  style: TextStyle(fontSize: 19, color: Colors.white),
                ),
                SizedBox(width: 8),
                Icon(Icons.search, size: 35),
                SizedBox(width: 8),
                Icon(
                  Icons.archive,
                  size: 35,
                ),
                SizedBox(width: 8),
                Icon(
                  Icons.delete,
                  size: 35,
                ),
              ],
            ),
          ],
        ),
      ),
      body: Container(
        color: Colors.red,
      ),
    );
  }
}
