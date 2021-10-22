import 'package:flutter/material.dart';
import 'package:stor/modules/product.dart';



class ProductCard extends StatelessWidget {



  const ProductCard({Key key, this.itemindex, this.p, this.t, this.s, this.pass}) : super(key: key);
  final int itemindex,p;
  final String t,s;
final Function pass;
  @override

  Widget build(BuildContext context) {

    Size size=MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
      //               color: Colors.green,
      height: 190,
      child: InkWell(
        onTap: pass,
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Container(
              height: 166,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(22),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0, 15),
                    blurRadius: 25,
                    color: Colors.black12,
                  ),
                ],
              ),
            ),

            //Text('psk'),
            Positioned(
              left: 0.0,
              top: 0.0,
              child: Container(

                margin: EdgeInsets.symmetric(horizontal: 20,),
                height:160 ,
                width: 200,
                child: Image.asset('images/m$itemindex.png',
                  fit: BoxFit.contain,
                ),
              ),
            ),
            Positioned(bottom: 0.0,
              right: 0.0,
              child: SizedBox(
                height: 136,
                width: size.width-200,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Text(t,
                        style: TextStyle(
                          fontSize: 28,
                          color: Colors.red,
                        ),),
                    ),
                    Spacer(),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Text(s,
                        style: Theme.of(context).textTheme.caption,

                      ),
                    ),
                    Spacer(),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 20*1.5,vertical: 20/5),
                      decoration: BoxDecoration(
                        color: Colors.yellow[200],
                        borderRadius: BorderRadius.circular(22),


                      ),
                      child: Text('السعر$p \$'),
                    ),
                  ],
                ),
              ),),
          ],
        ),
      ),
    );
  }
}