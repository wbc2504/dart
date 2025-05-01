import 'dart:io';

void main (){
Cuadrado cuadr = Cuadrado();
cuadr.base = 20;
cuadr.altura = 40;
print("El area es: ${cuadr.area}");
print("El perimetro es: ${cuadr.perimetro}");
print("El lado es: ${cuadr.lado}");
}

class Rectangulo {
  double? base;
  double? altura;

  double get area => base! * altura!;
  double get perimetro => 2 * base! + 2 * altura!; // double get perimetro es una propiedad calculada --- Es tratar una funcion como una propiedad
}

class Cuadrado extends Rectangulo {

 set lado(double value) {
   base = value;
   altura = value; 
 }

double get lado =>base!;

}
