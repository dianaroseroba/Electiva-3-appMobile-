import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Calculadora de Metales',
      theme: ThemeData(
        primaryColor: const Color.fromARGB(255, 148, 162, 174), // Color de fondo azul
      ),
      home: const LoginPage(), // Inicia con la página de inicio de sesión
    );
  }
}

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Inicio de Sesión'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Image(
                image: AssetImage('assets/login-logo.png'), // Logo de inicio de sesión
                height: 150,
              ),
              const SizedBox(height: 20),
              const TextField(
                decoration: InputDecoration(
                  labelText: 'Nombre de usuario',
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 20),
              const TextField(
                obscureText: true, // Para ocultar la contraseña
                decoration: InputDecoration(
                  labelText: 'Contraseña',
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  // Lógica para iniciar sesión
                  Navigator.pushReplacement( // Reemplaza la página actual por la calculadora de metales
                    context,
                    MaterialPageRoute(builder: (context) => const MetalCalculatorPage()),
                  );
                },
                child: const Text('Iniciar Sesión'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class MetalCalculatorPage extends StatelessWidget {
  const MetalCalculatorPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Calculadora de Metales'),
      ),
      body: const Center(
        child: Text('Bienvenido a la calculadora de metales'),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Inicio',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            label: 'Perfil',
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.red,
              ),
              child: Text('Listado de aceros disponible'),
            ),
            ListTile(
              title: const Text('Acero 1020'),
              onTap: () {
                // Lógica para la opción 1
              },
            ),
            ListTile(
              title: const Text('Acero 1045'),
              onTap: () {
                // Lógica para la opción 2


              },
            ),
          ],
        ),
      ),
    );
  }
}
