import 'package:flutter/material.dart';
import 'package:fluttercource1/extension.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        
        iconSize: 35,
        elevation: 0,
        backgroundColor: Colors.grey[200] ,
        selectedItemColor: Colors.orange[400] ,
        items: [
        BottomNavigationBarItem(icon: Icon(Icons.home_outlined,),label: ""),
        BottomNavigationBarItem(icon: Icon(Icons.shopping_bag_outlined),label: ""),
        BottomNavigationBarItem(icon: Icon(Icons.person_outline),label: ""),

      ]),
      
      body: Container(padding: EdgeInsets.all(20),
      child: ListView(
        children: [
          Row(
            children: [
              Expanded(child: TextFormField(
                
                decoration: InputDecoration(
                hint: Text("Search",style: TextStyle(fontWeight: FontWeight.w200),) ,
                
                 border: OutlineInputBorder(
                 borderRadius: BorderRadius.circular(5), // الاستدارة
                 borderSide: BorderSide.none,), // يخلي البوردر شفاف,
                fillColor: Colors.grey[200],
                filled: true,
                prefixIcon: Icon(Icons.search)),
                
              )),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Icon(Icons.menu,size: 40,),
              )
              
            ],),
            Container(height: 30,),
            Text("Categorise",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
            Container(height: 20,),
            Container(height: 130,
              child: ListView(scrollDirection: Axis.horizontal, children: [
                
                Categorise(icon: Icon(Icons.laptop), ontap: (){}, text: "Laptop"),
                Categorise(icon: Icon(Icons.phone_android), ontap: (){}, text: "Phone"),
                Categorise(icon: Icon(Icons.electric_bolt), ontap: (){}, text: "Electric"),
                Categorise(icon: Icon(Icons.battery_full_sharp), ontap: (){}, text: "Battery"),
                Categorise(icon: Icon(Icons.pedal_bike), ontap: (){}, text: "Bike"),
                Categorise(icon: Icon(Icons.card_giftcard), ontap: (){}, text: "Gift"),
                Categorise(icon: Icon(Icons.cable_sharp), ontap: (){}, text: "Cable"),
               
                
              
                
              ],),
            ),
           // Container(height: 20,),
            Container(margin: EdgeInsets.symmetric(vertical: 10),
              child: Text("Best selling",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),)),
            GridView(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),//عشان مايحصل تضارب بين السكرول حق الليستفيو وحق القريدفيو
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,mainAxisExtent: 330),
              
              children: [
                
                CardOfBestSelling(imageText: "headphone.png",title: "Logitic ",subtitle: "500rbb above 7w",price: "300",),
                CardOfBestSelling(imageText: "phone.png",title: "iphone15",subtitle: "500rbb above 7w",price: "300",),
                CardOfBestSelling(imageText: "ice.png",title: "Japal althalj ",subtitle: "500rbb above 7w",price: "300",),
                CardOfBestSelling(imageText: "logo.png",title: "Company",subtitle: "500rbb above 7w",price: "300",),
                



                
              ],)

        ],),)
    );
  }
}
