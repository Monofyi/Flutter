import 'package:inventory_management/data/repositories/raw_material/raw_material_repository.dart';
import 'package:inventory_management/ui/purchase_page/purchase/controller/purchase_items_model.dart';
import 'package:state_notifier/state_notifier.dart';

class PurchaseController extends StateNotifier<PurchaseModel> {
  final ItemsRepository rawMaterialRepository;
  PurchaseController(this.rawMaterialRepository) : super(const PurchaseModel());

  void addRawMaterial() {
    rawMaterialRepository.addItems(
        quanity: state.quantity,
        material: state.itemName,
        tag: state.tag,
        itemName: state.location);
  }

  void updateQuantity(String newValue) {
    state = state.copyWith(quantity: int.parse(newValue));
  }

  void updateTag(int newValue) {
    String val;
    if (newValue == 0) {
      val = 'O';
    }
    if (newValue == 1) {
      val = 'R';
    }
    state = state.copyWith(tag: val);
  }

  void updateLocation(String newValue) {
    state = state.copyWith(loc: newValue);
  }

  void updateSupplierName(String newValue) {
    state = state.copyWith(supplierName: newValue);
  }

  void updateItemNameName(String newValue) {
    state = state.copyWith(itemName: newValue);
  }
}
