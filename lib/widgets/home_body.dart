import 'package:flutter/material.dart';

import 'Product_Card.dart';
import 'package:stor/modules/product.dart';
import 'Detail.dart';


class HomeBody extends StatelessWidget {
Product h;
  @override

  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          SizedBox(
            height: 10,
          ),
          Expanded(
            child: Stack(
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(40),
                    ),
                  ),
                  margin: EdgeInsets.only(top: 70),
                ),
                ListView(
                  children: [
                    Builder(builder: (context){
                    return ProductCard(itemindex: 1,p: 50,t: 'سماعات راس ',s:'لون اسود',
                      pass:(){ Navigator.push(context,
                        MaterialPageRoute(builder: (context)=>Detail(x: 1,
                        d:'تتمتع هذه السماعات بتصميم مميز جدا ومريحة للرأس حيث تتمتلك وزن خفيف ودقة صوت صافي',)),);},);
                  }),
                    Builder(builder: (context){
                      return ProductCard(itemindex: 2,p: 60,t: 'لابتوب',s:'لون ابيض',
                        pass:(){ Navigator.push(context,
                          MaterialPageRoute(builder: (context)=>Detail(x:2 ,
                            d:'core i5   '
                                '/\n Ram 8gb   '
                                '/\n hard 1T   ',)),);},);
                    }),
                    Builder(builder: (context){
                      return ProductCard(itemindex: 3,p: 70,t: 'سماعات أذن',s:'لون ابيض',
                        pass:(){ Navigator.push(context,
                          MaterialPageRoute(builder: (context)=>Detail(x:3,
                              d:'هذه السماعات قادرة على الاتصال مع الهاتف مسافة طويلة مع صوت قوي وصافي ')),);},);
                    }),
                    Builder(builder: (context){
                      return ProductCard(itemindex: 4,p: 80,t: 'ساعة ذكية',s:'متعدد الاوان ',
                        pass:(){ Navigator.push(context,
                          MaterialPageRoute(builder: (context)=>Detail(x:4,
                          d:'هذه الساعة تتولى عنك الكثير من لاعمال فهي تستطيع حساب عدد الخطوات وكذلك صاعات الاستيقاظ')),);},);
                    }),
                    Builder(builder: (context){
                      return   ProductCard(itemindex: 5,p: 90,t: 'كاميرا',s:'لون اسود',
                        pass:(){ Navigator.push(context,
                          MaterialPageRoute(builder: (context)=>Detail(x:5,
                          d:'عدسة قابلة للاتساع وزوم قادر على الالتقاط مسافو 100m')),);},);
                    }),
                    Builder(builder: (context){
                      return  ProductCard(itemindex: 6,p: 100,t: 'js+جوال',s:'لون ابيض شفاف',
                        pass:(){ Navigator.push(context,
                          MaterialPageRoute(builder: (context)=>Detail(x:6,
                          d:'معالج ثماني النوى '
                              'لون ابيض '
                              'كاميرا 5 mp')),);},);
                    }),






                  ],
                ),

              ],
            ),
          )
        ],
      ),
    );
  }
}

