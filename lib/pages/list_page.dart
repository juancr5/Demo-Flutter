import 'package:flutter/material.dart';
import 'dart:async';

class ListPage extends StatefulWidget {
  @override
  _ListaPage createState() => _ListaPage();
}

//00 Infinite Scroll con futures
class _ListaPage extends State<ListPage> {

  //Variables
  ScrollController _scrollController = new ScrollController();
  List<int> _listaNumeros = [];
  int _ultimoItem = 0;
  bool _isLoading = false; // Flag para indicar cuando se esta cargando un nuevo conjunto de datos

  // 01 Metodo para incializar la lista de numeros
  @override
  void initState() {
    super.initState();

    //Inicializar los 10 primeros numeros
    _agregar10();

    // Escucha todas las acciones que pasan en el scrollController
    _scrollController.addListener(() {
      if( _scrollController.position.pixels == _scrollController.position.maxScrollExtent) {
        fetchData();
      }
    });
  }
  //----------------------------------------------------------------------------------------------

  // El dispose  se carga cuando la pagina es drestruida
  @override
  void dispose() {
    super.dispose();
    _scrollController.dispose(); //prevenir fugas de memoria
  }

  // 02 Metodo Principal
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Text('Listas'),
      ),

      body: Stack(
        children: <Widget> [
          _crearLista(),
          _crearLoading()
        ]
      )

    );
  }
  //-----------------------------------------------------------------------------------------------

  // 03 Lista con las imagenes
  Widget _crearLista() {

    return RefreshIndicator(

      onRefresh: obtenerPagina1,

        child: ListView.builder(
          controller: _scrollController,
          itemCount: _listaNumeros.length, // la cantidad de elementos
          // int posicion de la lista que empieza en 0
          itemBuilder: (BuildContext context, int index) {

            final imagen = _listaNumeros[index];

            return FadeInImage(
              placeholder: AssetImage('assets/jar-loading.gif'),
              image: NetworkImage('https://picsum.photos/500/300/?image=$imagen'),
            );
            },
        ),
    );

  }
  //-----------------------------------------------------------------------------------------------

  //04 Pull to Refresh al referescar el top carga otras imagenes
  Future<Null> obtenerPagina1() async {

    final duration = new Duration( seconds: 2 );
    new Timer( duration, () {

      _listaNumeros.clear();
      _ultimoItem++;
      _agregar10();

    });

    return Future.delayed(duration);

  }
  //-----------------------------------------------------------------------------------------------

  //05 Barra de indicador de progreso
  Widget _crearLoading() {

    if ( _isLoading ) {
      return Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CircularProgressIndicator()
            ],
          ),
          SizedBox( height: 15.0)
        ],
      );

    } else {
      return Container();
    }

  }
  //-----------------------------------------------------------------------------------------------


  // 06  Metodo para agregar elementos a la lista de numeros
  void _agregar10() {
    for (var i = 1; i < 10; i++) {
      _ultimoItem++;
      _listaNumeros.add( _ultimoItem );
    }
    setState(() {});

  }
  //-----------------------------------------------------------------------------------------------

  // 07 Metodo Asincrono para cargar un nuevo conjunto de datos
  Future<Null> fetchData() async {

    _isLoading = true;
    setState(() {}); //Redibujar la aplicacion por que ha surgido un cambio

    final duration = new Duration( seconds: 2 );
    new Timer( duration, respuestaHTTP );
    //new Timer.periodic(duration, (Timer t) => respuestaHTTP);

  }
  //-----------------------------------------------------------------------------------------------

  //08 Retorna falso el estado del indicador del progreso
  void respuestaHTTP() {
    _isLoading = false;

    //Cuando llega al final el scroll se mueve un poco
    _scrollController.animateTo(
        _scrollController.position.pixels + 10,
        duration: Duration(milliseconds: 250),
        curve: Curves.fastOutSlowIn,
    );

    _agregar10();
  }

}