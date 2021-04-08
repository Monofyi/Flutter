import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:inventory_management/ui/list_details/goods_page/add_goods/controller/goods_model.dart';

@freezed
abstract class RawMaterialList with _$GoodsList {
  const factory RawMaterialList(
      {@Default(<GoodsModel>[]) List<GoodsModel> goods,
      @Default(true) bool loading}) = _GoodsList;
}
