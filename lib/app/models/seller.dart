import 'package:nylo_framework/nylo_framework.dart';

class Seller extends Model {
  String? name;
  String? iconUrl;
  String? shortAddress;
  double? price;

  static StorageKey key = 'seller';

  Seller() : super(key: key);

  Seller.fromJson(dynamic data) {
    name = data['name'];
    iconUrl = data['iconUrl'];
    shortAddress = data['shortAddress'];
    price = data['price'];
  }

}