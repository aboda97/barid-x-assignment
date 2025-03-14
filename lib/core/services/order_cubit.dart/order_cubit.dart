import 'package:barid_x_assignment/core/services/order_cubit.dart/order_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class OrderCubit extends Cubit<OrderState> {
  OrderCubit() : super(OrderState());

  void updateCustomerInfo(String name, String phone, String address) {
    emit(state.copyWith(customerName: name, phoneNumber: phone, address: address));
  }

  void updatePackageDetails(String type, double weight, String notes) {
    emit(state.copyWith(packageType: type, weight: weight, deliveryNotes: notes));
  }

  void updatePayment(String method, String cardNumber) {
    emit(state.copyWith(paymentMethod: method, cardNumber: cardNumber));
  }
}