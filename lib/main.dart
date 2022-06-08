import 'package:flutter/material.dart';
import 'package:movil_final/pages/home_page.dart';

void main(){
  runApp(MaterialApp(routes: {
    Home_page.ruta: (BuildContext context) => Home_page(),
  },));
}


