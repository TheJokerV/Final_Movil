import 'package:movil_final/providers/model.dart';

class ResponseAPI{

  List<Model> modelList = <Model>[];

  ResponseAPI.fromAPI(Map jsonResponse){

    for(int i = 0; i < jsonResponse['model'].length; i++){
      Model cm = 
        Model.fromJson(jsonResponse["model"][i]);
      this.modelList.add(cm);

    }

  }

  ResponseAPI.vacio(){
    this.modelList = List.empty();
  }

}