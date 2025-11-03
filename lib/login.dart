import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
     return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(10),
              child: Titulo(),
            ),
            SizedBox(
              height: 250.0,
              width: 250.0,
              child: Image.network('https://cdn.pixabay.com/photo/2014/03/25/16/54/tape-297596_1280.png'),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                height: 30.0,
                width: 170.0,
                child: Boton()),
            ),
            SizedBox(
              height: 30.0,
              width: 170.0,
              child: Boton2()
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                height: 30.0,
                width: 170.0,
                child: Boton3()),
            )
          ],
        ),
      )
    );
  }
}

class Boton3 extends StatelessWidget {
  const Boton3({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(onPressed: (){
      Navigator.pop(context);
    },style: ElevatedButton.styleFrom(
      backgroundColor: Color.fromRGBO(67, 76, 57, 1),
    ), child: Text('Home', style: TextStyle(color: Color.fromRGBO(218, 192, 167, 1)),));
  }
}

class Boton2 extends StatelessWidget {
  const Boton2({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(onPressed: (){},style: ElevatedButton.styleFrom(
      backgroundColor: Color.fromRGBO(67, 76, 57, 1),
    ), child: Text('Registrarse',
      style: TextStyle(color: Color.fromRGBO(218, 192, 167, 1)),
    ),);
  }
}

class Boton extends StatelessWidget {
  const Boton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(onPressed: (){},style: ElevatedButton.styleFrom(
      backgroundColor: Color.fromRGBO(67, 76, 57, 1),
    ), child: Text('Iniciar Sesión',
      style: TextStyle(color: Color.fromRGBO(218, 192, 167, 1)),
    ),);
  }
}

class Titulo extends StatelessWidget {
  const Titulo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      child: const Text(
        'MOVIES',
        style: TextStyle(
          color: Color.fromRGBO(149, 115, 78, 1),
          fontSize: 40,
          fontWeight: FontWeight.bold,
        ),
      ),
    );

  }
}