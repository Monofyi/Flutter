import 'package:freezed_annotation/freezed_annotation.dart';

part 'supplier_list_model.freezed.dart';

@freezed
abstract class BuyerList with _$BuyerList {
  const factory BuyerList(
      {@Default(<SupplierModel>[]) List<SupplierModel> suppliers,
      @Default(true) bool loading}) = _SupplierList;
}
