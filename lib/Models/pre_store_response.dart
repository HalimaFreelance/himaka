class PrStoreResponse{
  String msg;
  String errors;
  bool status;
  PreStoreData data;

  PrStoreResponse({this.msg, this.status, this.data});

  PrStoreResponse.fromJson(Map<String, dynamic> json) {
    data = json['data'] != null
        ? new PreStoreData.fromJson(json['data'])
        : null;
    status = json['status'];
    errors = json['errors'];
    msg = json['msg'];
  }
}
class PreStoreData{
  List<Country> countries;
  PreStoreData.fromJson(Map<String, dynamic> json) {
    if (json['countries'] != null) {
      countries = new List<Country>();
      json['countries'].forEach((v) {
        countries.add(new Country.fromJson(v));
      });
    }
  }

}
class Country{
  String id;
  String name;
  Country.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
  }
}
class State{
  String id;
  String name;
  State.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
  }
}