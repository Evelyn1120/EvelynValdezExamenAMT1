import 'auto.dart';

class Backend {

  static final Backend _backend = Backend._internal();

  factory Backend() {
    return _backend;
  }

  Backend._internal();

  final _autos=[
      Auto(id: 1, nombre: 'Chevrolet dmax', capacidad: '5 Pasajeros', velocidad:'175 km/h' , valor: '27.500 dolares' , informacion: 'Equipada con poderosos motores de 2.5L y 3.0L turbo Diésel con calibración de altura, la nueva Chevrolet DMAX 2019 sobrepasa las expectativas de rendimiento, gracias a que cuenta con un torque constante desde bajas revoluciones lo que asegura un desempeño único con el vehículo cargado o descargado.'),
      Auto(id: 2, nombre: 'Chevrolet Captiva', capacidad: '7 Pasajeros', velocidad: '190 km/h' , valor: '26.450 dolares', informacion: 'Captiva Turbo llega para desafiar todas las expectativas de lo que se espera de un SUV. Más allá de su atractivo diseño, tiene el espacio suficiente para todo y todos, gracias a su capacidad para 5 o 7 pasajeros. Está equipada con tecnología superior y atributos avanzados de seguridad.'),
      Auto(id: 3, nombre: 'Kia Sportage', capacidad: ' 7 Pasajeros', velocidad: '120 km/h ' , valor: '25.990 dolares', informacion: 'El KIA Sportage ofrece una buena habitabilidad interior y un nivel de calidades y equipamiento correctos. No es un modelo que destaque especialmente en nada, su enfoque es indudablemente práctico, y es un SUV que cumple con lo que se puede esperar de él.'),
      Auto(id: 4, nombre: 'Great Wall Wingle', capacidad: ' 8 Pasajeros', velocidad: '140 km/h' , valor: '23.990 dolares', informacion: 'La camioneta Wingle S viene con un Motor Mitsubishi de 2.4 L. – 16 válvulas que le permite tener una certificación de emisions Euro IV con menor consumo de combustible, con un sistema electrónico de control del acelerador, producido por Continental, que le otorga una respuesta más rápida. '),
      Auto(id: 5, nombre: 'Kia Rio', capacidad: '5 Pasajeros.', velocidad: '182 km/h', valor: '18.999', informacion: 'El Kia Rio es un utilitario muy versátil con un buen espacio interior y un notable confort de marcha. Ha recibido una actualización en 2021 que ha ampliado su dotación de seguridad y ha incorporado el nuevo sistema multimedia con pantalla táctil de 8 pulgadas y conectividad con Apple CarPlay y Android Auto.'),
  ];


 List<Auto> getAutos(){
   return _autos;
 }
 


}
