import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SnackbarScreen extends StatelessWidget {

  static const String name = 'snackbar';

  const SnackbarScreen({super.key});

  void showCustomSnackbar( BuildContext context ){

    ScaffoldMessenger.of(context).clearSnackBars();

    final SnackBar snackbar = SnackBar(
        content: const Text('Hola Mundo'),
        action: SnackBarAction(label: 'Ok!', onPressed: (){}),
        duration: const Duration( seconds: 5 ),
      );

    ScaffoldMessenger.of(context).showSnackBar( snackbar );
  }

  void openDialog( BuildContext context ) {

    showDialog(
      context: context, 
      barrierDismissible: false,
      builder: (context) => AlertDialog(
        title: const Text('¿Estás seguro?'),
        content: const Text('Esse consectetur sint exercitation aliquip nisi adipisicing eu qui adipisicing excepteur esse Lorem. Lorem qui non ut pariatur ea et deserunt. Magna laboris fugiat culpa do sint laboris pariatur.'),
        actions: [
          TextButton(onPressed: () => context.pop(), child: const Text('Cancelar')),

          FilledButton(onPressed: () => context.pop(), child: const Text('Aceptar'))
        ],
      ),
    );

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Snackbars y Diálogos'),
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            
            FilledButton.tonal(
              child: const Text('Mostrar licencias usadas'),
              onPressed: (){

                showAboutDialog(
                  context: context,
                  children: [
                    const Text('Cillum exercitation incididunt sunt proident commodo exercitation excepteur occaecat reprehenderit et cillum ipsum reprehenderit. Enim id nostrud eiusmod nisi consectetur eiusmod fugiat magna. Fugiat quis exercitation in eu deserunt minim proident adipisicing laboris magna officia excepteur consequat. In enim anim voluptate sunt exercitation nostrud laborum. Aliqua sit labore pariatur officia laborum ipsum tempor. Enim minim enim incididunt ipsum duis quis sint.'),
                    const Text('Eu est et sunt reprehenderit nostrud dolore voluptate do reprehenderit mollit adipisicing. Consequat laboris anim nostrud sit in aliqua officia eu fugiat dolor. Lorem do elit reprehenderit velit aliquip pariatur amet quis mollit occaecat excepteur veniam fugiat. In laboris ipsum commodo exercitation qui aute pariatur commodo. Cupidatat dolor quis et ad nulla. Aliqua consectetur et proident dolore irure Lorem dolor nostrud sunt et ex sit sint eu.')
                  ]
                );

              }, 
            ),

            const SizedBox(height: 25),

            FilledButton.tonalIcon(
                onPressed: () => openDialog(context), 
                icon: const Icon(Icons.document_scanner), 
                label: const Text('Mostrar diálogos')
              )

          ],
        ),
      ),

      floatingActionButton: FloatingActionButton.extended(
        label: const Text('Mostrar Snackbar'),
        icon: const Icon(Icons.remove_red_eye_outlined),
        onPressed: () => showCustomSnackbar(context)
      ),
    );
  }
}