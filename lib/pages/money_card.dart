import 'package:flutter/material.dart';

class MoneyCard extends StatelessWidget{
  String valor = "";

  MoneyCard(this.valor);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: 
      Container(
        child: 
          Column(
            children: [
              Text(this.valor,
              style: TextStyle(
                color: Colors.black54,
                fontSize: 32,
                fontWeight: FontWeight.bold
              ),),
            ],)),
    );
  }

  

}