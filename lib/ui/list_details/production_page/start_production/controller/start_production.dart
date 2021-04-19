import 'package:inventory_management/data/repositories/raw_material/raw_material_repository.dart';
import 'package:inventory_management/ui/list_details/raw_material_page/add_raw_material/controller/raw_material_model.dart';
import 'package:state_notifier/state_notifier.dart';

class AddRawMaterialController extends StateNotifier<RawMaterialModel> {
  final RawMaterialRepository rawMaterialRepository;
  AddRawMaterialController(this.rawMaterialRepository)
      : super(const RawMaterialModel());

  void addRawMaterial() {
    rawMaterialRepository.addRawMaterial(
        quanity: state.quantity,
        material: state.itemName,
        tag: state.tag,
        location: state.location);
  }

  void updateName(String newValue) {
    state = state.copyWith(itemName: newValue);
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
    state = state.copyWith(location: newValue);
  }
}
