
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

////Remove Ads
class RemoveAds extends StatefulWidget {
  const RemoveAds({Key? key}) : super(key: key);

  @override
  _RemoveAdsState createState() => _RemoveAdsState();
}

class _RemoveAdsState extends State<RemoveAds> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff404040),
      appBar: AppBar(
        elevation: 0,
        toolbarHeight: 50,
        backgroundColor:Colors.black,
      ),
      body: Container(
        color: Color(0xff404040),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Current subscription :Demo',style:TextStyle(fontSize: 20,color: Colors.white70)),
            SizedBox(height:10),
            Text('Try a FREE Premium subscription with full functionality and no ADs',style:TextStyle(fontSize: 20,color: Colors.white70),),
            SizedBox(height:10),
            Center(
              child: TextButton(
                onPressed: (){},
                child: Container(
                  height: 40,
                  width:120,
                  color:Colors.black,
                  child: Center(child: Text('TRY NOW',style:TextStyle(fontSize: 15,color: Colors.white70),),),

                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}