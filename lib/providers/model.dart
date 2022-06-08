class Model {
  String valor = "";


Model.fromJson(Map jsonModelResponse) {
  this.valor = jsonModelResponse["currentExchangeRate"];
}

Model.empty(){
  this.valor = "";
}

}