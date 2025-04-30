import 'dart:io';

void main (){
  print('Hola bienvenido al calculador de años');
  print('Escribe tu nombre: ');
  String? nameInput = stdin.readLineSync();
  print ('Un gusto conocerte $nameInput');
  print('Escribe tu fecha de nacimiento en formato dd/mm/yyyy: ');
  String? birthdayInput =stdin.readLineSync();
  DateTime? dateConverted = _converToDateTime(birthdayInput!);
  if (dateConverted == null){
    print('La fecha de nacimiento es invalida, nos enviaste: $birthdayInput');
    return;
  }

var person = Person(
name: nameInput,  // a name se le asigna el nombre ingresado por el usuario
birthday: dateConverted,
age: DateTime.now().year - dateConverted.year // calclulo de la edad
);

print('Tu nombre: ${person.name}');
print('Tu fecha de nacimiento: ${person.birthday}');
print('¡ Tu edad es ${person.age} años !');
}

DateTime? _converToDateTime(String date){
  List<String> parts = date.split('/');
  if (parts.length != 3) return null;
  return DateTime.tryParse('${parts[2]}-${parts[1]}-${parts[0]}');
}


class Person{
 final String? name; // final significa que una vez que se asigna un valor a una propiedad, no puede cambiar.
 final DateTime? birthday;
 final int? age;
 Person({this.name, this.birthday, this.age}); //Constructor con parametros nombrados 
}