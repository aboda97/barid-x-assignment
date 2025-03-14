import 'package:barid_x_assignment/constants.dart';
import 'package:barid_x_assignment/core/services/order_cubit.dart/order_cubit.dart';
import 'package:barid_x_assignment/core/utils/app_colors.dart';
import 'package:barid_x_assignment/core/widgets/custom_btn.dart';
import 'package:barid_x_assignment/core/widgets/custom_txt_form_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class CustomerInfoViewBody extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();
  final TextEditingController _addressController = TextEditingController();

  CustomerInfoViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16.0),
      child: Form(
        key: _formKey,
        child: ListView(
          physics: BouncingScrollPhysics(),
          children: [
            CustomTextFormField(
              controller: _nameController,
              keyboardType: TextInputType.text,
              labelText: 'Your Name',
              validator: (value) {
                return value!.isEmpty ? 'Your Name is Required' : null;
              },
            ),
            SizedBox(height: 16.0),
            CustomTextFormField(
              controller: _phoneController,
              keyboardType: TextInputType.number,
              labelText: 'Your Phone Number',
              validator:
                  (value) =>
                      value!.isEmpty || value.length < 10
                          ? 'Your Phone Number is InValid'
                          : null,
            ),
            SizedBox(height: 16.0),
            CustomTextFormField(
              controller: _addressController,
              keyboardType: TextInputType.emailAddress,
              labelText: 'Your Address',
              validator: (value) {
                return value!.isEmpty ? 'Your Address is Required' : null;
              },
            ),

            SizedBox(height: 24.0),
            CustomBtnApp(
              text: 'Next',
              onPressed: () {
                if (_formKey.currentState!.validate()) {
                  context.read<OrderCubit>().updateCustomerInfo(
                    _nameController.text,
                    _phoneController.text,
                    _addressController.text,
                  );
                  context.go(packageDetailsPath);
                }
              },
              textColor: AppColors.colorsWhite,
              borderRadius: 16.0,
              elevation: 0,
            ),
          ],
        ),
      ),
    );
  }
}
