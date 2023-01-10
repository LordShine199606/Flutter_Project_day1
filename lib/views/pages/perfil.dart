import 'package:flutter/material.dart';

class PerfilPage extends StatefulWidget {
  const PerfilPage({super.key});

  @override
  State<PerfilPage> createState() => _PerfilPageState();
}

class _PerfilPageState extends State<PerfilPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
     
      appBar:
      
      AppBar(
        
        
        backgroundColor: Colors.white,
        title:  Center(child: Text('Perfil',style: TextStyle(color: Colors.black),)),
      ),
      body:
      
      Column(
        
        children: [
          Row(

children: [

  Container(

  )
],
          ),
          Container(
          
          height: 200,
          width: MediaQuery.of(context).size.width,
     decoration: BoxDecoration(
      shape: BoxShape.circle
      
     ),

        )
        
        ],
      ),
    );
  }
}
