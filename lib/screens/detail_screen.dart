import 'package:flutter/material.dart';

import '../constants.dart';
import '../model/auto.dart';

class DetailScreen extends StatelessWidget {
 
  final Auto auto;

  const DetailScreen({Key? key, required this.auto}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(auto.nombre),
        ),
        body: Container(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Capacidad de tripulantes: ${auto.capacidad}', style: fromTextStyle),
              const SizedBox(height: 10.0),
              const Divider(color: primaryColor),
              const SizedBox(height: 10.0),
              const SizedBox(height: 5.0),
              Text('Velocidad : ${auto.velocidad}', style: subjectTextStyle),
              const SizedBox(height: 10.0),
              const Divider(color: primaryColor),
              Text('Valor USD : ${auto.valor}', style: subjectTextStyle),
              const Divider(color: primaryColor),
              const SizedBox(height: 10.0),
              const SizedBox(height: 5.0),
              Text('Información: ${auto.informacion}', style: subjectTextStyle),
              const SizedBox(height: 20.0),
                 ElevatedButton(
                style: ElevatedButton.styleFrom(
                primary: Color.fromARGB(184, 14, 196, 147), // background
                onPrimary: Color.fromARGB(255, 0, 0, 0), // foreground
              ),
              onPressed: () { 
                Navigator.pop(context);
              },
              child: Text('Done'),
)
            ],
            
          ),
          
        ))
        ;
    }
}
