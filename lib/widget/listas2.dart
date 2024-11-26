import 'package:flutter/material.dart';


// ignore: camel_case_types
class Listas2 extends StatefulWidget{
  const Listas2({super.key});

@override
  State<Listas2>createState(){
     // ignore: prefer_const_constructors
     return listas ();
  }
}
// ignore: camel_case_types
class listas extends State<Listas2>{
final List<Map<String,String>>items=[
{'Title':'Suma','Subtitle':'Adicion'},
{'Title':'Resta','Subtitle':'Sustracion'},
{'Title':'Mutiplicacion','Subtitle':'Adicion por numero'},
{'Title':'Divicion','Subtitle':'Sustraccion de numeros'},
];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title: const Text('listas'),
        backgroundColor: Colors.black38,
      ),
      body: ListView.builder(
        itemCount: items.length,
         itemBuilder:(context,index)=> Card(
              child: ListTile(
                leading:const Icon(Icons.add_a_photo_sharp),
                title:Text(items[index]['title']!),
                subtitle:Text(items[index]['subtible']!),
              ),
             )
         )
         );
  }
}