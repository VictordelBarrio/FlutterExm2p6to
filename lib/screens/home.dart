import 'package:flutter/material.dart';
import '../screens/bienvenida_page.dart';
import 'package:flutter/src/material/colors.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var nameText = "";
  var ageText = "";
  var stateText = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Los Relieros del Norte - Examen 2P'),
        backgroundColor: Colors.red[500],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              height: 40,
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
                  focusColor: Colors.yellow,
                ),
                onChanged: (value) {
                  setState(() {
                    nameText = value.toString();
                  });
                },
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
                  hintText: 'Age',
                  border: InputBorder.none,
                ),
                onChanged: (value) {
                  setState(() {
                    ageText = value.toString();
                  });
                },
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
                  hintText: 'State',
                  border: InputBorder.none,
                ),
                onChanged: (value) {
                  setState(() {
                    stateText = value.toString();
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
                              this.nameText, this.ageText, this.stateText)),
                    );
                  },
                  minWidth: 200.0,
                  height: 42.0,
                  child: Text(
                    'Welcome!',
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
