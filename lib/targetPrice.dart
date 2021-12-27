
import 'package:flutter/material.dart';


/////Target Price
class TargetPrice extends StatefulWidget {
  const TargetPrice({Key? key}) : super(key: key);

  @override
  _TargetPriceState createState() => _TargetPriceState();
}

class _TargetPriceState extends State<TargetPrice> {
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

                Text('TARGET PRICES'),
                Text('LIBRARY'),

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
            children: [

              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Icon(Icons.add_alarm, size: 35,color: Colors.white,),
                          SizedBox(width:10),
                          Text('EURUSD',style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),),
                          SizedBox(width:20),
                          Text('1.15161',style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.normal),),
                          SizedBox(width:15),
                          Text('(-1.80%=>1.131)',style: TextStyle(color: Colors.red,fontSize: 15,fontWeight: FontWeight.bold),),
                        ],
                      ),
                      Text('[09/12] Target price reached.',style:TextStyle(fontSize: 13,color: Colors.grey),),
                      Divider(thickness: 1,color: Colors.grey),
                      Row(
                        children: [
                          Icon(Icons.add_alarm, size: 35,color: Colors.white,),
                          SizedBox(width:10),
                          Text('EURUSD',style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),),
                          SizedBox(width:20),
                          Text('1.15161',style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.normal),),
                          SizedBox(width:15),
                          Text('(2.50%=>1.131)',style: TextStyle(color: Colors.green,fontSize: 15,fontWeight: FontWeight.bold),),
                        ],
                      ),
                      Text('[09/12] Target price reached.',style:TextStyle(fontSize: 13,color: Colors.grey),),
                      Divider(thickness: 1,color: Colors.grey),
                    ],
                  ),
                ],
              ),
            ],
          ),
          Text(''),
        ],),
      ),
    );
  }
}