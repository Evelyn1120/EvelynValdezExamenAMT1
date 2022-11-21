import 'package:flutter/material.dart';

import '../constants.dart';
import '../model/backend.dart';
import '../widgets/auto_widget.dart';
import 'detail_screen.dart';
import '../model/auto.dart';

class ListScreen extends StatefulWidget {


  const ListScreen({Key? key, required this.title}) : super(key: key);


  final String title;

  @override
  _ListScreenState createState() => _ListScreenState();
}

class _ListScreenState extends State<ListScreen> {


  
  
  var autos = Backend().getAutos();
 

  void showDetail( Auto auto) {
    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return DetailScreen( auto: auto,);
    }));
    
    setState(() {
 
      autos = Backend().getAutos();
    });
  }

  @override
  Widget build(BuildContext context) {
 
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title), 

       
      ),


      
      body: ListView.separated(
        itemCount: autos.length,
        separatorBuilder: (BuildContext context, int index) => const Divider(
          color: primaryColor,
          indent: 40.0,
          endIndent: 20.0,
        ),
          itemBuilder: (BuildContext context, int index) => AutoWidget(
          auto: autos[index],
          onTap: showDetail,  
    
  
        ),
      
          
      ),  

    );  
  }
}
