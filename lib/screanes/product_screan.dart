import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:stor/widgets/home_body.dart';
class HomeScrean extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: homeAppBar(),
      endDrawer: Drawer(

      ),
      backgroundColor: Colors.lightBlue,
  body: HomeBody(),
    );
  }
}
AppBar homeAppBar(){
   return AppBar(
    title: Text(
        'مرحبا بك في السوق الجديد'
    ),
    centerTitle: false,

    actions: [

//          IconButton(icon:Icon( Icons.menu), onPressed:(){}),
    ],


   );
}
