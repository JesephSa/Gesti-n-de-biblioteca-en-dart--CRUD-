// Agregar libro
import 'dart:io';

List<Map<String, dynamic>> libros = [];

void agregarLibro() {

  print("¿Cuantos libros desea agregar?");
  int cantidad = int.parse(stdin.readLineSync()!);

  if (cantidad > 0) {
    for (int i = 0; i < cantidad; i++) {
      print("Ingrese el título del libro:");
      String titulo = stdin.readLineSync()!;

      print("Ingrese el autor del libro:");
      String autor = stdin.readLineSync()!;

      print("Ingrese el año de publicación del libro:");
      int anio = int.parse(stdin.readLineSync()!);

      libros.add({
        'titulo': titulo,
        'autor': autor,
        'anio': anio,
      });

      print("El libro fue agregado correctamente");
    }
  } else {
    print("No hay libros agregados");
  }

}

//listar libros
void listarLibros() {

  if (libros.isNotEmpty) {
    print("listado de libros:");
    libros.asMap().forEach((index, libro) {
      print("${index + 1}. Título: ${libro['titulo']}\n Autor: ${libro['autor']}\n Año: ${libro['anio']}");
    });
  } else {
    print("No hay libros para listar");
  }

}