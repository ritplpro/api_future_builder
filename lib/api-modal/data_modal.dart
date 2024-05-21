import 'package:api_future_builder/api-modal/product_modal.dart';

class DataModal {
  int? limit;
  int? skip;
  int? total;
  List<ProductModal>? users;
  DataModal({required this.limit,required this.skip,
    required this.total,required this.users});

  factory DataModal.fromJson(Map<String,dynamic> Json){

    List<ProductModal> allAPIData=[];

    for(Map<String,dynamic> eachJson in Json["users"]){
      allAPIData.add(ProductModal.fromJson(Json: eachJson));
    }

    return DataModal(limit: Json["limit"],
        skip: Json["skip"],
        total: Json["total"],
        users: allAPIData);
  }



}