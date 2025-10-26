import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => MyAppState(),
      child: MaterialApp(
        title: 'ldsw_utilizacion_de_widgets',
        theme: ThemeData(
          useMaterial3: true,
          colorScheme: ColorScheme.fromSeed(seedColor: Color.fromRGBO(102, 219, 232, 1)),
          scaffoldBackgroundColor: Color.fromRGBO(218, 192, 167, 1)
        ),
        home: MyHomePage(),
      ),
    );
  }
}

class MyAppState extends ChangeNotifier {
  var current = WordPair.random();
}

class MyHomePage extends StatelessWidget {
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
              child: Boton2())
          ],
        ),
      )
    );
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