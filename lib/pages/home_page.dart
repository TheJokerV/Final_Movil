import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:movil_final/pages/money_card.dart';
import 'package:movil_final/providers/ResponseAPI.dart';
import 'package:movil_final/providers/providerAPI.dart';

class Home_page extends StatefulWidget{
  static String ruta = "/";

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _home_page();
  }
  
}

class _home_page extends State<Home_page>{

final pesosInput = TextEditingController();
double dolar = 0;

String pesoDigitado = "";

List<Widget> valorPeso = <Widget>[];

@override

  Widget build(BuildContext context) {

    obtenerPesos();

    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Conversor de pesos a dolares.'),
      ),

      body: Container(//decoration: BoxDecoration(color: Colors.amber,border: Border.all(color: Colors.grey, width: 6)),
        child: Column(
          children: [

            TextField(
              controller: pesosInput,
              decoration: InputDecoration(
                hintText: "Pesos."
              ),),

            ElevatedButton(onPressed: (){

              pesoDigitado = pesosInput.text;
              calcularDolar();

            }, child: Text('Convertir moneda.')),

            Text("RESULTADO EN DOLARES:", style: TextStyle(fontSize: 32)),
            Text(this.dolar.toString(), style: TextStyle(fontSize: 20),),

              Column(
                children: 
                  this.valorPeso,
              )
          ],
        )),
    );
  }

void obtenerPesos() async{
  ProviderApi cpapi = ProviderApi();
  ResponseAPI rspApi = await cpapi.obtenerPeso();

  List<Widget> peso = <Widget>[];

  for(int i = 0; i < rspApi.modelList.length; i++){
    Widget wd = MoneyCard(
      rspApi.modelList[i].valor,
    );
  peso.add(wd);
  }

  setState(() {
    this.valorPeso = peso;
  });
}

void calcularDolar() {

  var _peso = double.parse(pesoDigitado);

  double resultado = 0;

  setState(() {
    
    resultado = _peso/3799.5;

    dolar = resultado;
  });


}

}
