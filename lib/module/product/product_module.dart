// import 'package:json_annotation/json_annotation.dart';
//
//
// @JsonSerializable()
// class Product{
//   @JsonKey(name:'id')
// String? id;
//   @JsonKey(name:'name')
//
// String? name;
//   @JsonKey(name:'category')
// String? category;
//   @JsonKey(name:'brand')
// String? brand;
//   @JsonKey(name:'offer')
// bool? offer;
//   @JsonKey(name:'description')
// String? description;
//   @JsonKey(name:'price')
//     double? price;
//   @JsonKey(name:'image')
// String? image;
//
//   Product({
//     this.id,
//     this.name,
//     this.description,
//     this.price,
//     this.image,
//     this.brand,
//     this.category,
//     this.offer,
//   });
//
//    factory Product.fromjson(Map<dynamic, String> json )=> _$Productfromjson(json);
//      Map<String,dynamic> toJson()=> _$ProductToJson(this);
//
// }