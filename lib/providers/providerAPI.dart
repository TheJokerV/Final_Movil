import 'dart:convert';
import 'dart:io';

import 'package:movil_final/providers/ResponseAPI.dart';
import 'package:http/http.dart' as http;

class ProviderApi{
  Future<ResponseAPI> obtenerPeso() async {
    try{
      var url = Uri.parse("https://exchangecurrenciesdemo.herokuapp.com/api/convert/usd/cop");

      var responseHttp = await http.get(url);

      String rawResponse = utf8.decode(responseHttp.bodyBytes);

      var jsonResponse = jsonDecode(rawResponse);

      ResponseAPI rspApi =
          ResponseAPI.fromAPI(jsonResponse);

      return rspApi;
    }catch(ex){
      return ResponseAPI.vacio();
    }
  }

}