import 'package:flutter/material.dart';

void main() => runApp(AppPapeleriaCometa());

class AppPapeleriaCometa extends StatelessWidget {
  const AppPapeleriaCometa({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Papeleria Cometa',
     home: Empleados(),
    );
  }
} // Fin clase AppPapeleriaCometa

class Empleados extends StatelessWidget {
  const Empleados({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        // Título de la papelería
        title: const Text(
          'Papelería Cometa Alvarado',
          style: TextStyle(color: Colors.white),
        ),
        
        // Color de fondo azul fuerte (Deep Blue)
        backgroundColor: Colors.blue[900], 
        
        // Icono principal (Leading) - Usamos una cometa (kite)
        leading: const Icon(
          Icons.kitesurfing, // El icono más cercano a una cometa en Material
          color: Colors.white,
        ),
        
        // Iconos de acción a la derecha
        actions: [
          IconButton(
            icon: const Icon(Icons.menu_book, color: Colors.white), // Libretas
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.print, color: Colors.white), // Impresora
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.account_circle, color: Colors.white), // Cuenta
            onPressed: () {},
          ),
        ],
      ),
      backgroundColor: Colors.purple[50],
      body: ListView(
        padding: const EdgeInsets.all(10), // Espacio alrededor de la lista
        children: [
          // 1. Cuadernos
          ListTile(
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            leading: const Icon(Icons.menu_book, color: Colors.blue),
            title: const Text('Cuadernos Profesionales'),
            trailing: const Icon(Icons.chevron_right, color: Colors.blue),
            tileColor: Colors.blue[50],
          ),
          const SizedBox(height: 10), // Espacio entre cuadros

          // 2. Bolígrafos
          ListTile(
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            leading: const Icon(Icons.edit, color: Colors.purple),
            title: const Text('Caja de Bolígrafos'),
            trailing: const Icon(Icons.chevron_right, color: Colors.purple),
            tileColor: Colors.purple[100],
          ),
          const SizedBox(height: 10),

          // 3. Mochilas
          ListTile(
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            leading: const Icon(Icons.backpack, color: Colors.indigo),
            title: const Text('Mochilas Escolares'),
            trailing: const Icon(Icons.chevron_right, color: Colors.indigo),
            tileColor: Colors.blue[100],
          ),
          const SizedBox(height: 10),

          // 4. Marcadores
          ListTile(
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            leading: const Icon(Icons.brush, color: Colors.deepPurple),
            title: const Text('Set de Marcadores'),
            trailing: const Icon(Icons.chevron_right, color: Colors.deepPurple),
            tileColor: Colors.purple[100],
          ),
          const SizedBox(height: 10),

          // 5. Papel
          ListTile(
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            leading: const Icon(Icons.description, color: Colors.blueAccent),
            title: const Text('Resma de Hojas Bond'),
            trailing: const Icon(Icons.chevron_right, color: Colors.blueAccent),
            tileColor: Colors.lightBlue[50],
          ),
        ],
      )
    );
  }
} // Fin clase Empleados