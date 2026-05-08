import 'dart:io';

import 'crud/agregar-listar.dart';
import 'crud/buscar-actualizar.dart';
import 'crud/eliminar-salir.dart';

void main() {

  int opcion;

  do {

    print("\n===== GESTIÓN DE BIBLIOTECA =====");
    print("1. Agregar libro");
    print("2. Listar libros");
    print("3. Buscar libro");
    print("4. Actualizar libro");
    print("5. Eliminar libro");
    print("6. Salir");

    print("\nSeleccione una opción:");

    opcion = int.tryParse(stdin.readLineSync() ?? '') ?? 0;

    switch (opcion) {

      case 1:
        agregarLibro();
      break;

      case 2:
        listarLibros();
      break;

      case 3:
        buscarLibro(libros);
      break;

      case 4:
        actualizarLibro(libros);
      break;

      case 5:
        eliminarLibro(libros);
      break;

      case 6:
        print("Programa finalizado");
      break;

      default:
        print("Opción inválida");

    }

  } while (opcion != 6);

}




