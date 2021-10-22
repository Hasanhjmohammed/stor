import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class Detail extends StatelessWidget {
  const Detail({ this.x, this.d});
  final int x;
  final String d;
  @override

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('تفاصيل المشتريات'),
      ),
      backgroundColor: Colors.lightBlueAccent,
      body: Column(
        children: [
          Positioned(
            left: 0.0,
            top: 0.0,
            child: Container(


              decoration:BoxDecoration(

                color: Colors.lightBlueAccent[100],
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(40),
                  bottomRight:Radius.circular(40) ,
                ),
              ),
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Image.asset('images/m$x.png',

                  fit: BoxFit.contain,
                  width: 500,
                  height: 500,
                  ),
                )),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10,
                   /* topLeft: Radius.circular(30),
                  bottomLeft: Radius.circular(30),
                  bottomRight: Radius.circular(30),*/),
                color: Colors.blue,
              ),
              child: Text(d,
              style: TextStyle(
                color: Colors.white,

                fontSize: 20,
              ),),
            ),
          ),
        ],
      ),
    );
  }
}
