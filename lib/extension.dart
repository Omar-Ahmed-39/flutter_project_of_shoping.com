import 'package:flutter/material.dart';
import 'package:fluttercource1/details.dart';

class Categorise extends StatelessWidget {
  final Widget icon;
  final VoidCallback ontap;
  final String text;
  const Categorise({super.key, required this.icon, required this.ontap, required this.text});

  @override
  Widget build(BuildContext context) {
    return  Column(children: [
                Container(margin: EdgeInsets.only(right: 15),padding: EdgeInsets.all(15), 
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.all(Radius.circular(50))),
                child: 
                IconButton(iconSize: 35,
                onPressed: ontap, icon: icon),),
                Container(margin: EdgeInsets.only(right: 15),child: Text(text,style: TextStyle(fontWeight: FontWeight.w400,fontSize: 12),))
              ],) ;
  }
}
class CardOfBestSelling extends StatelessWidget {
  final String imageText;
  final String title;
  final String subtitle;
  final String price;

  const CardOfBestSelling({super.key, required this.imageText, required this.title, required this.subtitle, required this.price});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(builder:(context) => ItemDetails(
          imageText: imageText,
          title: title,
          price: price,
          subtitle: subtitle,),));
      },
      child: Card(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
                    Container(
                      padding: EdgeInsets.all(20),
                      width: 500,
                      
                      color: Colors.grey[200],
                    child: Image.asset("Images/$imageText",height: 130,),),
                    Container(height: 3,),
      
                    Padding(
                      padding: EdgeInsets.only(left: 10),
                      child: Text(title,style: TextStyle(fontWeight: FontWeight.bold),),
                    ),
                    Container(height: 3,),
                    Padding(
                      padding: EdgeInsets.only(left: 10),
                      child: Text(subtitle,style: TextStyle(fontWeight: FontWeight.w200,fontSize: 10,color: const Color.fromARGB(255, 83, 78, 78))),
                    ),
                    Container(height: 3,),
      
                    Padding(
                      padding: EdgeInsets.only(left: 10),
                      child: Text("$price\$", style: TextStyle(fontWeight: FontWeight.w500,color: Colors.orange[400])),
                    ),
      
                    ],
                  ),),
    );
  }
}