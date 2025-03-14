import 'package:barid_x_assignment/core/services/order_cubit.dart/order_cubit.dart';
import 'package:barid_x_assignment/core/services/order_cubit.dart/order_state.dart';
import 'package:barid_x_assignment/core/utils/app_colors.dart';
import 'package:barid_x_assignment/core/utils/app_styles.dart';
import 'package:barid_x_assignment/core/utils/show_alert.dart';
import 'package:barid_x_assignment/core/widgets/custom_btn.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ReviewSubmitionViewBody extends StatefulWidget {
  const ReviewSubmitionViewBody({super.key});

  @override
  State<ReviewSubmitionViewBody> createState() =>
      _ReviewSubmitionViewBodyState();
}

class _ReviewSubmitionViewBodyState extends State<ReviewSubmitionViewBody> {
  void submitOrder() async {
    setState(() => isSubmitting = true);

    await Future.delayed(Duration(seconds: 2));

    setState(() => isSubmitting = false);

    showAlert(context);
  }

  bool isSubmitting = false;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16.0),
      child: BlocBuilder<OrderCubit, OrderState>(
        builder: (context, state) {
          return ListView(
            physics: BouncingScrollPhysics(),
            children: [
              Text('👤 User Information:', style: TextStyles.titleStyles),
              Row(
                children: [
                  Text('Name : ', style: TextStyles.subTitleStyles),
                  Text(state.customerName, style: TextStyles.dataStyles),
                ],
              ),
              Row(
                children: [
                  Text('Phone Number : ', style: TextStyles.subTitleStyles),
                  Text(state.phoneNumber, style: TextStyles.dataStyles),
                ],
              ),
              Row(
                children: [
                  Text('Address : ', style: TextStyles.subTitleStyles),
                  Text(state.address, style: TextStyles.dataStyles),
                ],
              ),

              Divider(thickness: .5),
              Text('📦 Package Infermation', style: TextStyles.titleStyles),
              Row(
                children: [
                  Text('Type : ', style: TextStyles.subTitleStyles),
                  Text(state.packageType, style: TextStyles.dataStyles),
                ],
              ),
              Row(
                children: [
                  Text('Wight : ', style: TextStyles.subTitleStyles),
                  Text('${state.weight} Kg', style: TextStyles.dataStyles),
                ],
              ),
              Row(
                children: [
                  Text('Notes : ', style: TextStyles.subTitleStyles),
                  Text(state.deliveryNotes, style: TextStyles.dataStyles),
                ],
              ),

              Divider(thickness: .5),
              Text('💳 Payment:', style: TextStyles.titleStyles),
              Row(
                children: [
                  Text('Payment Method : ', style: TextStyles.subTitleStyles),
                  Text(
                    '${state.paymentMethod} Kg',
                    style: TextStyles.dataStyles,
                  ),
                ],
              ),

              if (state.paymentMethod == 'Credit Card')
                Text('Credit Card Number: ${state.cardNumber}'),
              SizedBox(height: 24.0),
              Center(
                child:
                    isSubmitting
                        ? CircularProgressIndicator()
                        : SizedBox(
                          width: MediaQuery.of(context).size.width * 0.95,
                          child: CustomBtnApp(
                            text: 'Submit Order',
                            onPressed: submitOrder,
                            textColor: AppColors.colorsWhite,
                            borderRadius: 16.0,
                            elevation: 0,
                          ),
                        ),
              ),
            ],
          );
        },
      ),
    );
  }
}
