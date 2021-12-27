
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:traderassistant/favorite.dart';
import 'package:traderassistant/portfolios.dart';
import 'package:traderassistant/removeAds.dart';
import 'package:traderassistant/targetPrice.dart';
import 'package:traderassistant/ui/market_screen.dart';

class NoticeScreen extends StatefulWidget {
static const id = 'notice_screen'
    ;

  @override
  _NoticeScreenState createState() => _NoticeScreenState();
}

class _NoticeScreenState extends State<NoticeScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(

      length: 2,
      child: Scaffold(
        backgroundColor: Color(0xff404040),
        appBar: AppBar(
          elevation: 0,
          toolbarHeight: 50,
          bottom: TabBar(
              tabs:<Widget>[

                Text('NOTICES'),
                Text('ARCHIVE'),

              ]
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
        body: TabBarView(children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text('10/12/21  17:16',style:TextStyle(color: Colors.white),),
              Text('EURUSD Cross Up Price 1.13129',style:TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),),
              Text('Cur:1.13129 High:1.13137 Target price reached.',style:TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),),
              Divider(thickness: 1,color: Colors.grey),
              Text('10/12/21  17:16',style:TextStyle(color: Colors.white),),
              Text('EURUSD Cross Up Price 1.13129',style:TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.normal),),
              Text('Cur:1.13129 High:1.13137 Target price reached.',style:TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.normal),),
              Divider(thickness: 1 ,color: Colors.grey),
              Text('10/12/21  17:16',style:TextStyle(color: Colors.white),),
              Text('The application has successfully connected to the server and ready to work ,You can go to the menu Markets to set a new signals and favorites.',style:TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.normal),),
              Text('Cur:1.13129 High:1.13137 Target price reached.',style:TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.normal),),
              Divider(thickness: 1 ,color: Colors.grey),

            ],
          ),
          Text(''),
        ],),
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
                    // Navigator.push(
                    //   context,
                    //   MaterialPageRoute(
                    //     builder: (context)=>const NoticeScreen(),),
                    // );

                    Navigator.pushNamed(context, NoticeScreen.id);
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
                      builder: (context)=>const TargetPrice(),),
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
                      builder: (context) => MarketScreen(),),
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
                      builder: (context)=>const PortFolios(),),
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
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context)=>const RemoveAds(),),
                  );
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