import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:netflixclone/componentes/nav_bar_superior.dart';

class CartelPrincipal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[cabecera(), infoSeries(), botonera()],
    );
  }
}

class botonera extends StatelessWidget {
  const botonera({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 15.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            children: [
              Icon(Icons.check, color: Colors.white),
              SizedBox(height: 3.0),
              Text(
                "Mi lista",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 10.0,
                ),
              )
            ],
          ),
          FlatButton.icon(
            onPressed: () {},
            color: Colors.white,
            icon: Icon(
              Icons.play_arrow,
              color: Colors.black,
            ),
            label: Text('Reproducir'),
          ),
          Column(
            children: [
              Icon(Icons.info_outline, color: Colors.white),
              SizedBox(height: 3.0),
              Text(
                "Información",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 10.0,
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}

class infoSeries extends StatelessWidget {
  const infoSeries({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Telenovelesco",
          style: TextStyle(
            color: Colors.white,
            fontSize: 10.0,
          ),
        ),
        SizedBox(
          width: 6.0,
        ),
        Icon(
          Icons.fiber_manual_record,
          color: Colors.red,
          size: 5.0,
        ),
        SizedBox(
          width: 6.0,
        ),
        Text(
          "Suspenso insostenible",
          style: TextStyle(
            color: Colors.white,
            fontSize: 10.0,
          ),
        ),
        SizedBox(
          width: 6.0,
        ),
        Icon(
          Icons.fiber_manual_record,
          color: Colors.red,
          size: 5.0,
        ),
        SizedBox(
          width: 6.0,
        ),
        Text(
          "De suspenso",
          style: TextStyle(
            color: Colors.white,
            fontSize: 10.0,
          ),
        ),
        SizedBox(
          width: 6.0,
        ),
        Icon(
          Icons.fiber_manual_record,
          color: Colors.red,
          size: 5.0,
        ),
        SizedBox(
          width: 6.0,
        ),
        Text(
          "Adoles",
          style: TextStyle(
            color: Colors.white,
            fontSize: 10.0,
          ),
        )
      ],
    );
  }
}

class cabecera extends StatelessWidget {
  const cabecera({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Image.asset(
          "assets/imgs/re_netflix.jpg",
          fit: BoxFit.cover,
        ),
        Container(
          width: double.infinity,
          height: 590.0,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.center,
              end: Alignment.bottomCenter,
              colors: <Color>[
                Colors.black38,
                Colors.black,
              ],
            ),
          ),
        ),
        SafeArea(child: NavBarSuperior()),
      ],
    );
  }
}
