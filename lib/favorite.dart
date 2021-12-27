import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:traderassistant/ui/notice_screen.dart';
import 'portfolios.dart';
import 'targetPrice.dart';
import 'package:traderassistant/ui/market_screen.dart';

////Favorites
class Favorites extends StatefulWidget {
  const Favorites({Key? key}) : super(key: key);

  @override
  _FavoritesState createState() => _FavoritesState();
}

class _FavoritesState extends State<Favorites> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(

      length: 1,
      child: Scaffold(
        backgroundColor: Color(0xff404040),
        appBar: AppBar(
          elevation: 0,
          toolbarHeight: 30,
          bottom: TabBar(
            tabs:<Widget>[

              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('FAVORITES',style:TextStyle(fontSize: 15)),
                ],
              ),

            ],
          ),
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
                    Icons.two_k_plus,
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
        body: TabBarView(
          children: [
            Text(''),
          ],
        ),
        drawer: Drawer(

          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              const DrawerHeader(
                margin: EdgeInsets.all(0),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/stock2.jpeg'),
                    fit: BoxFit.fitWidth,
                  ),
                  color: Color(0xff404040),
                ),
                child: Text(
                  '',
                  style: TextStyle(fontSize: 20, color: Colors.black),
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
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context)=> NoticeScreen(),),
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
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context)=> TargetPrice(),),
                  );
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
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context)=> MarketScreen(),),
                  );
                  // Update the state of the app.
                  // ...
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
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context)=>const Favorites(),),
                  );
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
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context)=> PortFolios(),),
                  );
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