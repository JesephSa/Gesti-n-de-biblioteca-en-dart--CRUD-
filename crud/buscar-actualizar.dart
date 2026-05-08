import 'dart:io';

// BUSCAR LIBRO
void buscarLibro(List<Map<String, dynamic>> libros) {

  if (libros.isEmpty) {
    print("No hay libros registrados");
    return;
  }

  print("\n===== BUSCAR LIBRO =====");
  print("1. Buscar por índice");
  print("2. Buscar por título");

  int opcion = int.tryParse(stdin.readLineSync() ?? '') ?? 0;

  switch (opcion) {
// BUSCAR POR ÍNDICE
    case 1:

      print("Ingrese el índice del libro a buscar:");

      int? indice = int.tryParse(stdin.readLineSync() ?? '');

      if (indice == null || indice <= 0 || indice > libros.length) {
        print("Índice no válido");
        return;
      }

      indice = indice - 1;

      print("\n===== LIBRO ENCONTRADO =====");
      print("Título: ${libros[indice]['titulo']}");
      print("Autor: ${libros[indice]['autor']}");
      print("Año: ${libros[indice]['anio']}");

      break;

    // BUSCAR POR TÍTULO
    case 2:

      print("Ingrese el título del libro a buscar:");

      String titulo = stdin.readLineSync() ?? '';

      bool encontrado = false;

      for (int i = 0; i < libros.length; i++) {

        if (libros[i]['titulo']
            .toString()
            .toLowerCase()
            .contains(titulo.toLowerCase())) {

          print("\n===== LIBRO ENCONTRADO =====");
          print("Índice: ${i + 1}");
          print("Título: ${libros[i]['titulo']}");
          print("Autor: ${libros[i]['autor']}");
          print("Año: ${libros[i]['anio']}");

          encontrado = true;
        }
      }

      if (!encontrado) {
        print("Libro no encontrado");
      }

      break;

    default:
      print("Opción no válida");
  }
}


// ACTUALIZAR LIBRO
void actualizarLibro(List<Map<String, dynamic>> libros) {

  if (libros.isEmpty) {
    print("No hay libros registrados");
    return;
  }

  print("\n===== ACTUALIZAR LIBRO =====");

  libros.asMap().forEach((index, libro) {
    print("${index + 1}. ${libro['titulo']}");
  });

  print("Ingrese el índice del libro a actualizar:");

  int? indice = int.tryParse(stdin.readLineSync() ?? '');

  if (indice == null || indice <= 0 || indice > libros.length) {
    print("Índice no válido");
    return;
  }

  indice = indice - 1;

  print("Ingrese el nuevo título del libro:");
  String nuevoTitulo = stdin.readLineSync() ?? '';

  print("Ingrese el nuevo autor del libro:");
  String nuevoAutor = stdin.readLineSync() ?? '';

  print("Ingrese el nuevo año de publicación del libro:");
  int? nuevoAnio = int.tryParse(stdin.readLineSync() ?? '');

  if (nuevoTitulo.isEmpty ||
      nuevoAutor.isEmpty ||
      nuevoAnio == null) {

    print("Datos no válidos");
    return;
  }

  libros[indice]['titulo'] = nuevoTitulo;
  libros[indice]['autor'] = nuevoAutor;
  libros[indice]['anio'] = nuevoAnio;

  print("Libro actualizado correctamente");
}