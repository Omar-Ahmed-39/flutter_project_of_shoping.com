import 'package:flutter/material.dart';

class ItemDetails extends StatefulWidget {
  final String imageText;
  final String title;
  final String subtitle;
  final String price;
  const ItemDetails({super.key,  required this.imageText, required this.title, required this.subtitle, required this.price});

  @override
  State<ItemDetails> createState() => _ItemDetailsState();
}

class _ItemDetailsState extends State<ItemDetails> {
  int currenIndex=0;
  int selectedSize=3;
  int a=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       bottomNavigationBar: BottomNavigationBar(
        onTap: (value) {
          setState(() {
            currenIndex=value;
          });
          if(currenIndex==0){
            Navigator.of(context).pop();
          }
        },
        currentIndex: currenIndex,
        iconSize: 35,
        elevation: 0,
        backgroundColor: Colors.grey[200] ,
        selectedItemColor: Colors.orange[400] ,
        items: [
        BottomNavigationBarItem(icon: Icon(Icons.home_outlined,),label: "",),
        BottomNavigationBarItem(icon: Icon(Icons.shopping_bag_outlined),label: ""),
        BottomNavigationBarItem(icon: Icon(Icons.person_outline),label: ""),

      ]),
      appBar: AppBar(
        backgroundColor:  Colors.grey[200],
        elevation: 0,
        iconTheme: IconThemeData(
          color:  Colors.black,
        ),
        title: Row(mainAxisAlignment: MainAxisAlignment.center,children: [
          Icon(Icons.crisis_alert,color: Colors.orange[400] ,size: 30,),
          Text(" Shoping",style: TextStyle(color: Colors.black ),),
          Text(".com",style: TextStyle(color: Colors.orange[400] ),),
        ],),
      ),
      endDrawer: Drawer(
         ),
      body: ListView(children: [
        Container(
           padding: EdgeInsets.all(20),
           width: 500,
           color: Colors.grey[200],
           child: Image.asset("Images/${widget.imageText}")),//حتى استطيع الوصول للخواص الي موجودة في كلاسس الاب لابد انكتب قبلها ويدجت
        Container(
          margin: EdgeInsets.only(top: 30),
          child: Text(widget.title,textAlign: TextAlign.center,style: TextStyle(fontWeight: FontWeight.bold,
        fontSize: 20))),
        Container(
          margin: EdgeInsets.only(top: 10),
          child: Text(widget.subtitle,textAlign: TextAlign.center,style: TextStyle(
          color:  Colors.grey,
          fontWeight: FontWeight.w300))),
        Container(
          margin: EdgeInsets.only(top: 20),
          child: Text("${widget.price}\$",textAlign: TextAlign.center,style: TextStyle(
          color:Colors.orange[400]  ,
          fontWeight: FontWeight.bold))),
          SizedBox(height: 30,),
          Row(mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Color:"),
            SizedBox(width: 20,),
            InkWell(
              onTap: () {
               setState(() {
                  a=1;
               });
              },
              child: Container(height: 20,width: 20,decoration: 
              BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(15)),
              color: Colors.grey,
              border: BoxBorder.all(color:a==1? Colors.orange:Colors.grey,width: 2)),
              ),
            ),
            SizedBox(width: 5,),

            Text("gray"),
            SizedBox(width: 20,),

            InkWell(
              onTap: () {
               setState(() {
                  a=0;
               });
              },
              child: Container(height: 20,width: 20,decoration: 
              BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(15)),
              color: Colors.black,
              border: BoxBorder.all(color:a==0? Colors.orange:Colors.black,width: 2)),
              ),
            ),
            SizedBox(width: 5,),

            Text("black"),

          ],),

          SizedBox(height: 30,),

          Row(mainAxisAlignment: MainAxisAlignment.center,
          children: [
           Text("Size:"),
            SizedBox(width: 20,),

            InkWell(
              onTap: () {
                setState(() {
                  selectedSize = 0;
                });
              },
              child: Text(
                "38",
                style: TextStyle(
                  color: selectedSize == 0 ? Colors.black : Colors.grey,
                ),
              ),
            ),
            SizedBox(width: 10,),

            InkWell(
              onTap: () {
                setState(() {
                  selectedSize = 1;
                });
              },
              child: Text(
                "39",
                style: TextStyle(
                  color: selectedSize == 1 ? Colors.black : Colors.grey,
                ),
              ),
            ),
            SizedBox(width: 10,),

            InkWell(
              onTap: () {
                setState(() {
                  selectedSize = 2;
                });
              },
              child: Text(
                "40",
                style: TextStyle(
                  color: selectedSize == 2 ? Colors.black : Colors.grey,
                ),
              ),
            ),
            SizedBox(width: 10,),

            InkWell(
              onTap: () {
                setState(() {
                  selectedSize = 3;
                });
              },
              child: Text(
                "41",
                style: TextStyle(
                  color: selectedSize == 3 ? Colors.black : Colors.grey,
                ),
              ),
            ),
            SizedBox(width: 10,),

            InkWell(
              onTap: () {
                setState(() {
                  selectedSize = 4;
                });
              },
              child: Text(
                "42",
                style: TextStyle(
                  color: selectedSize == 4 ? Colors.black : Colors.grey,
                ),
              ),
            ),
          ],),
        SizedBox(height: 30,),
        Container(
          margin: EdgeInsets.symmetric(horizontal: 80), 
          child: MaterialButton(onPressed: (){},
          color: Colors.black,
          padding: EdgeInsets.symmetric(vertical: 15),
          height: 50,
          
          child: Text("Add To Cart",style: TextStyle(color: Colors.white)),),
        ),
         SizedBox(height: 30,),



       
      ],),
    );
  }
}