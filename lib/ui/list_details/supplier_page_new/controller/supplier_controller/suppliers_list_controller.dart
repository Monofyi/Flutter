import 'package:inventory_management/data/dummy.dart';
import 'package:inventory_management/ui/list_details/supplier_page/add_supplier/controller/supplier_model.dart';
import 'package:inventory_management/ui/list_details/supplier_page/controller/supplier_controller/supplier_list/supplier_list_model.dart';
import 'package:state_notifier/state_notifier.dart';

class SuppliersListController extends StateNotifier<SupplierList> {
  List<SupplierModel> suppliers;

  SuppliersListController() : super(const SupplierList()) {
    initialize();
  }

  Future<void> initialize() async {
    suppliers = dummySuppliers;
    state = state.copyWith(loading: false, suppliers: suppliers);
  }

  Future<void> addSupplier({
    String supplierName,
    String phoneNo,
    String address,
    String description,
  }) async {
    state = state.copyWith(loading: true);
    final newSupplier = SupplierModel(
      supplierId: suppliers[suppliers.length - 1].supplierId + 1,
      supplierName: supplierName,
      phoneNumber: int.parse(phoneNo.replaceAll(' ', '')),
      address: address,
      description: description,
    );
    suppliers.add(newSupplier);
    state = state.copyWith(loading: false, suppliers: suppliers);
  }

  Future<void> updateSupplier({
    int supplierId,
    String supplierName,
    String phoneNo,
    String address,
    String description,
  }) async {
    state = state.copyWith(loading: true);
    final index =
        suppliers.indexWhere((_supplier) => _supplier.supplierId == supplierId);
    final updatedSupplier = SupplierModel(
      supplierId: supplierId,
      supplierName: supplierName,
      phoneNumber: int.parse(phoneNo.replaceAll(' ', '')),
      address: address,
      description: description,
    );
    suppliers[index] = updatedSupplier;
    state = state.copyWith(loading: false, suppliers: suppliers);
  }

  Future<void> deleteSupplier({int supplierId}) async {
    state = state.copyWith(loading: true);
    suppliers.removeWhere((supplier) => supplier.supplierId == supplierId);
    state = state.copyWith(loading: false, suppliers: suppliers);
  }
}
