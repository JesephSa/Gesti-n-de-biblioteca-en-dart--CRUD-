// Eliminar libro
import 'dart:io';


void eliminarLibro(List<Map<String, dynamic>> libros) {

  if (libros.isEmpty) {
    print("No hay libros registrados");
    return;
  }

  print("\n===== ELIMINAR LIBRO =====");

 
  libros.asMap().forEach((index, libro) {
    print("${index + 1}. ${libro['titulo']}");
  });

  print("Ingrese el índice del libro a eliminar:");

  int? indice = int.tryParse(stdin.readLineSync() ?? '');

  if (indice == null || indice <= 0 || indice > libros.length) {
    print("Índice no válido");
    return;
  }

  indice = indice - 1;

  String titulo = libros[indice]['titulo'];

  libros.removeAt(indice);

  print("El libro '$titulo' fue eliminado correctamente");
}