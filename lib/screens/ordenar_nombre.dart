import 'package:flutter/material.dart';
import 'package:examen2p6to/screens/bienvenida_page.dart';

class OrdernarNombre extends StatefulWidget {
  OrdernarNombre(this.nameText, this.ageText, this.stateText);
  String nameText;
  String ageText;
  String stateText;

  @override
  _OrdernarNombreState createState() =>
      _OrdernarNombreState(this.nameText, this.ageText, this.stateText);
}

class _OrdernarNombreState extends State<OrdernarNombre> {
  _OrdernarNombreState(this.nameText, this.ageText, this.stateText);
  String nameText;
  String ageText;
  String stateText;

  String nombre = "";

  String ordenarNom(String nombre) {
    //split string
    String str = nombre;
    var arr = str.split('');
    print(arr);
    arr.sort();
    print(arr);
    return (arr.toString());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Los Relieros del Norte - Nombre'),
        backgroundColor: Colors.red[900],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              height: 40,
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 16.0),
              child: Text(
                ordenarNom(nombre.toLowerCase()),
                style: TextStyle(fontSize: 30),
              ),
            ),
            Container(
              margin: EdgeInsets.all(10),
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  border: Border.all(
                      color: Colors.red[800], // set border color
                      width: 3.0), // set border width
                  borderRadius: BorderRadius.all(
                      Radius.circular(10.0)), // set rounded corner radius
                  gradient: LinearGradient(
                    begin: Alignment.topRight,
                    end: Alignment.bottomLeft,
                    colors: [
                      Colors.orange,
                      Colors.red,
                    ],
                  )),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Name',
                  border: InputBorder.none,
                ),
                onChanged: (value) {
                  setState(() {
                    nombre = value;
                  });
                },
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
                        builder: (context) => BienvenidaPage(
                            this.nameText, this.ageText, this.stateText),
                      ),
                    );
                  },
                  minWidth: 200.0,
                  height: 42.0,
                  child: Text(
                    'Go Back!!',
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
