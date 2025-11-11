import 'package:flutter/material.dart';
import 'package:ldsw_utilizacion_de_widgets/catalogo_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  // 🔹 Clave para el formulario
  final _formKey = GlobalKey<FormState>();

  // 🔹 Controladores para los campos
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  // 🔹 Función para validar y navegar
  void _login() {
    if (_formKey.currentState!.validate()) {
      // Si pasa la validación, navega al catálogo
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const CatalogoPage()),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFDCC1A1),
      body: Center(
        child: Form(
          key: _formKey,
          child: SizedBox(
            width: 270.0,
            height: 550.0,
            child: Column(
              children: [
                SizedBox(
                  height: 250.0,
                  width: 250.0,
                  child: Image.network('https://cdn.pixabay.com/photo/2014/03/25/16/54/tape-297596_1280.png'),
                ),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'User/Email',
                      style: const TextStyle(
                        fontStyle: FontStyle.italic,
                        fontSize: 14,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 270.0,
                  child: TextFormField(
                    controller: _emailController,
                    decoration: InputDecoration(
                      hintText: 'Ingrese su nombre de usuario o email',
                      filled: true,
                      fillColor: const Color(0xFF8B6B4F),
                      contentPadding: const EdgeInsets.symmetric(
                          vertical: 10, horizontal: 20),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25),
                        borderSide: BorderSide.none,
                      ),
                    ),
                    // 🔸 Validación simple
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Por favor ingrese su usuario o correo';
                      }
                      return null;
                    },
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Contraseña',
                      style: const TextStyle(
                        fontStyle: FontStyle.italic,
                        fontSize: 14,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 270.0,
                  child: TextFormField(
                    controller: _passwordController,
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: 'Ingrese su contraseña',
                      filled: true,
                      fillColor: const Color(0xFF8B6B4F),
                      contentPadding: const EdgeInsets.symmetric(
                          vertical: 10, horizontal: 20),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25),
                        borderSide: BorderSide.none,
                      ),
                    ),
                    // 🔸 Validación de contraseña
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Por favor ingrese su contraseña';
                      } else if (value.length < 4) {
                        return 'La contraseña es muy corta';
                      }
                      return null;
                    },
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.all(15),
                  child: Row(
                    children: [
                      ElevatedButton(
                        onPressed: _login, // Usa la función de validación
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color.fromRGBO(67, 76, 57, 1),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25),
                          ),
                        ),
                        child: const Text(
                          'Iniciar Sesión',
                          style: TextStyle(
                              color: Color.fromRGBO(218, 192, 167, 1)),
                        ),
                      ),
                      const SizedBox(width: 10),
                      SizedBox(
                        width: 95.0,
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor:
                                const Color.fromRGBO(67, 76, 57, 1),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(25),
                            ),
                          ),
                          child: const Text(
                            'Home',
                            style: TextStyle(
                                color: Color.fromRGBO(218, 192, 167, 1)),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}