import 'package:flutter/material.dart';
import 'package:examen2p6to/screens/formula_cuadratica.dart';
import 'package:examen2p6to/screens/ordenar_nombre.dart';
import 'package:examen2p6to/screens/random_page.dart';

class BienvenidaPage extends StatefulWidget {
  BienvenidaPage(this.nameText, this.ageText, this.stateText);
  String nameText;
  String ageText;
  String stateText;

  @override
  _BienvenidaPageState createState() =>
      _BienvenidaPageState(this.nameText, this.ageText, this.stateText);
}

class _BienvenidaPageState extends State<BienvenidaPage> {
  _BienvenidaPageState(this.nameText, this.ageText, this.stateText);
  String nameText;
  String ageText;
  String stateText;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Los Relieros del Norte - HOME'),
        backgroundColor: Colors.red[400],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.symmetric(vertical: 16.0),
              child: Text(
                'Welcome ' +
                    nameText +
                    ', who is ' +
                    ageText +
                    ' years old  and is from ' +
                    stateText,
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 16.0),
              child: Material(
                elevation: 10.0,
                color: Colors.lime[300],
                shadowColor: Colors.lime[800],
                borderRadius: BorderRadius.circular(7.0),
                child: MaterialButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => FormulaCuadratica(
                              this.nameText, this.ageText, this.stateText)),
                    );
                  },
                  minWidth: 200.0,
                  height: 42.0,
                  child: Text(
                    'Formula Cuadratica!',
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 16.0),
              child: Material(
                elevation: 15.0,
                color: Colors.lime[300],
                shadowColor: Colors.lime[800],
                borderRadius: BorderRadius.circular(7.0),
                child: MaterialButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => OrdernarNombre(
                              this.nameText, this.ageText, this.stateText)),
                    );
                  },
                  minWidth: 200.0,
                  height: 42.0,
                  child: Text(
                    'Ordenar Nombre!',
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 16.0),
              child: Material(
                elevation: 15.0,
                color: Colors.lime[300],
                shadowColor: Colors.lime[800],
                borderRadius: BorderRadius.circular(7.0),
                child: MaterialButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => RandomPage(
                              this.nameText, this.ageText, this.stateText)),
                    );
                  },
                  minWidth: 200.0,
                  height: 42.0,
                  child: Text(
                    'Random!',
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
