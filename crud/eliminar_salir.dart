import 'dart:io';

// Lista de libros compartida
List<String> libros = [];

// FUNCIÓN ELIMINAR LIBRO
void eliminarLibro() {

  if (libros.isEmpty) {

    print("No hay libros para eliminar");

  } else {

    print("\n===== LISTA DE LIBROS =====");

    for (int i = 0; i < libros.length; i++) {

      print("${i + 1}. ${libros[i]}");

    }

    print("\nIngrese el número del libro que desea eliminar:");

    int indice = int.parse(stdin.readLineSync()!) - 1;

    if (indice >= 0 && indice < libros.length) {

      print("Libro eliminado: ${libros[indice]}");

      libros.removeAt(indice);

    } else {

      print("Número inválido");

    }

  }

}

// FUNCIÓN SALIR
void salirPrograma() {

  print("Gracias por usar el sistema");

}