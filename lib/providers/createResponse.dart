import 'package:movil_final/providers/model.dart';

class CreateResponse{
  Model created = Model.empty();

  CreateResponse.fromAPI(Map jsonCreateResponse){
    this.created =
      Model.fromJson(jsonCreateResponse["model"]);
  }

  CreateResponse.empty(){
    this.created = Model.empty();
  }

}
