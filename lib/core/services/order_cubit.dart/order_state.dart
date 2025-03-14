class OrderState {
  final String customerName;
  final String phoneNumber;
  final String address;
  final String packageType;
  final double weight;
  final String deliveryNotes;
  final String paymentMethod;
  final String cardNumber;

  OrderState({
    this.customerName = '',
    this.phoneNumber = '',
    this.address = '',
    this.packageType = '',
    this.weight = 0.0,
    this.deliveryNotes = '',
    this.paymentMethod = '',
    this.cardNumber = '',
  });

  OrderState copyWith({
    String? customerName,
    String? phoneNumber,
    String? address,
    String? packageType,
    double? weight,
    String? deliveryNotes,
    String? paymentMethod,
    String? cardNumber,
  }) {
    return OrderState(
      customerName: customerName ?? this.customerName,
      phoneNumber: phoneNumber ?? this.phoneNumber,
      address: address ?? this.address,
      packageType: packageType ?? this.packageType,
      weight: weight ?? this.weight,
      deliveryNotes: deliveryNotes ?? this.deliveryNotes,
      paymentMethod: paymentMethod ?? this.paymentMethod,
      cardNumber: cardNumber ?? this.cardNumber,
    );
  }
}