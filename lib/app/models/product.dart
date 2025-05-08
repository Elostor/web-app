import 'package:nylo_framework/nylo_framework.dart';

class Product extends Model{
  String? modelName;
  String? modelImageUrl;
  String? material;
  String? color;
  String? finishing;

  static StorageKey key = 'product';

  Product() : super(key: key);

  Product.fromJson(dynamic data) {
    modelName = data['modelName'];
    modelImageUrl = data['modelImageUrl'];
    material = data['material'];
    color = data['color'];
    finishing = data['finishing'];
  }
}