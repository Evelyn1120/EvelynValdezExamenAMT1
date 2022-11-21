import 'package:flutter/material.dart';
import '../constants.dart';
import '../model/auto.dart';

class AutoWidget extends StatelessWidget {
  final Auto auto;
  final Function onTap;


  const AutoWidget(
      {Key? key,
      required this.auto,
      required this.onTap,
      })
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onHorizontalDragEnd: (DragEndDetails details) {
      },
      onLongPress: () {
      },
      onTap: () {
        onTap(auto);
      },
      
      child: Container(
      
        padding: const EdgeInsets.all(10.0),
        height: 80.0,

        child: Row(
       
          
          children: <Widget> [
            
            
            Expanded(
              flex: 1,
              child: Container(
                height: 12.0,
                
              ),
              
            ),
            Expanded(
              flex: 9,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text('Nombre : ${auto.nombre}', style: fromTextStyle),
                   Text('Capacidad Pasajeros :${auto.capacidad}', style: subjectTextStyle),
                  Text('Valor USD : ${auto.valor}',
                      style: fromTextStyle),
                 
                ],
              ),
            )
       
          ],
        ),
      ),
    );
  }
}
