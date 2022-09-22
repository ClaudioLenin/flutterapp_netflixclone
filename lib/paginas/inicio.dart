import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:netflixclone/componentes/carte_principal.dart';
import 'package:netflixclone/componentes/item_img.dart';
import 'package:netflixclone/componentes/item_redondeado.dart';

class InicioPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: ListView(
        children: <Widget>[
          CartelPrincipal(),
          listaHorizontal("Avances", ItemRedondeado(), 10),
          SizedBox(height: 10.0),
          listaHorizontal("Programas sobre viajes", ItemImg(), 10),
          SizedBox(height: 10.0),
          listaHorizontal("Tendencias", ItemImg(), 10),
          SizedBox(height: 10.0),
          listaHorizontal("Mi lista", ItemImg(), 10),
          SizedBox(height: 20.0),
        ],
      ),
      bottomNavigationBar: navInferior(),
    );
  }

  Widget listaHorizontal(String titulo, Widget item, int cantidad) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 6.0,
            vertical: 10.0,
          ),
          child: Text(
            titulo,
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 20.0,
            ),
          ),
        ),
        Container(
          height: 110.0,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: cantidad,
            itemBuilder: (context, index) {
              return item;
            },
          ),
        ),
      ],
    );
  }
}

class navInferior extends StatelessWidget {
  const navInferior({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: Colors.black,
      selectedItemColor: Colors.white,
      unselectedItemColor: Colors.white54,
      type: BottomNavigationBarType.fixed,
      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: "Inicio",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.search),
          label: "Buscar",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.library_music),
          label: "Próximamente",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.arrow_downward),
          label: "Descargas",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.more_horiz),
          label: "Más",
        )
      ],
    );
  }
}
