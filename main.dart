import 'dart:io';
import 'crud/eliminar_salir.dart';

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

    opcion = int.parse(stdin.readLineSync()!);

    switch (opcion) {

      case 1:
        print("Opción agregar libro");
      break;

      case 2:
        print("Opción listar libros");
      break;

      case 3:
        print("Opción buscar libro");
      break;

      case 4:
        print("Opción actualizar libro");
      break;

      case 5:
        eliminarLibro();
      break;

      case 6:
        salirPrograma();
      break;

      default:
        print("Opción inválida");

    }

  } while (opcion != 6);

}