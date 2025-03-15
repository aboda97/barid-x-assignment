import 'package:barid_x_assignment/constants.dart';
import 'package:barid_x_assignment/core/services/order_cubit.dart/order_cubit.dart';
import 'package:barid_x_assignment/core/services/order_cubit.dart/order_state.dart';
import 'package:barid_x_assignment/core/utils/app_colors.dart';
import 'package:barid_x_assignment/core/widgets/custom_btn.dart';
import 'package:barid_x_assignment/core/widgets/custom_drop_down_btn_form_field.dart';
import 'package:barid_x_assignment/core/widgets/custom_txt_form_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class PaymentViewBody extends StatelessWidget {
  final List<String> _paymentMethods = ['Credit Card', 'Cash', 'Pay Later'];
  final TextEditingController _cardController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();
  PaymentViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16.0),
      child: BlocBuilder<OrderCubit, OrderState>(
        builder: (context, state) {
          return ListView(
            physics: BouncingScrollPhysics(),
            children: [
              CustomDropdown(
                label: 'Payment Method',
                items: _paymentMethods,
                onChanged: (value) {
                  context.read<OrderCubit>().updatePayment(value!, '');
                },
                validator: (value) {
                  return value == null ? 'This field is required' : null;
                },
              ),

              if (state.paymentMethod == 'Credit Card')
                Column(
                  children: [
                    SizedBox(height: 16.0),
                    CustomTextFormField(
                      controller: _cardController,
                      keyboardType: TextInputType.number,
                      labelText: 'Card Number',
                      validator: (value) {
                        return value!.isEmpty || value.length < 14
                          ? 'Your CreditCard Number is InValid'
                          : null;
                      },
                    ),
                  ],
                ),

              if (state.paymentMethod == 'Pay Later')
                Column(
                  children: [
                    SizedBox(height: 16.0),
                    CustomTextFormField(
                      controller: _cardController,
                      keyboardType: TextInputType.number,
                      labelText: 'Your Phone Number',
                      validator: (value) {
                        return value!.isEmpty
                            ? 'Enter a valid Phone Number'
                            : null;
                      },
                    ),
                  ],
                ),

              SizedBox(height: 24.0),
              CustomBtnApp(
                text: 'Next',
                onPressed: () {
                  String? extraData =
                      state.paymentMethod == 'Credit Card'
                          ? _cardController.text
                          : (state.paymentMethod == 'Pay Later'
                              ? _phoneController.text
                              : '');
                  context.read<OrderCubit>().updatePayment(
                    state.paymentMethod,
                    extraData,
                  );
                  context.go(reviewSubmitionPath);
                },
                textColor: AppColors.colorsWhite,
                borderRadius: 16.0,
                elevation: 0,
              ),
            ],
          );
        },
      ),
    );
  }
}
