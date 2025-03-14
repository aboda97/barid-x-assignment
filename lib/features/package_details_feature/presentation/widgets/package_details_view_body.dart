import 'package:barid_x_assignment/constants.dart';
import 'package:barid_x_assignment/core/services/order_cubit.dart/order_cubit.dart';
import 'package:barid_x_assignment/core/utils/app_colors.dart';
import 'package:barid_x_assignment/core/widgets/custom_btn.dart';
import 'package:barid_x_assignment/core/widgets/custom_drop_down_btn_form_field.dart';
import 'package:barid_x_assignment/core/widgets/custom_txt_form_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class PackageDetailsViewBody extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _weightController = TextEditingController();
  final TextEditingController _notesController = TextEditingController();
  final List<String> _packageTypes = ['Small', 'Medium', 'Large'];
  PackageDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    String? selectedPackageType;
    return Padding(
      padding: EdgeInsets.all(16.0),
      child: Form(
        key: _formKey,
        child: ListView(
          physics: BouncingScrollPhysics(),
          children: [
            CustomDropdown(
              label: 'Package Type',
              items: _packageTypes,
              onChanged: (value) {
                return selectedPackageType = value;
              },
              validator: (value) {
                return value == null ? 'This field is required' : null;
              },
            ),
            SizedBox(height: 16.0),
        CustomTextFormField(
              controller: _weightController,
              keyboardType: TextInputType.number,
              labelText: 'Package Weight (Kg)',
              validator: (value) {
                return value!.isEmpty ? 'Enter a valid weight' : null;
              },
            ), 
            SizedBox(height: 16.0),   
             CustomTextFormField(
              controller: _notesController,
              keyboardType: TextInputType.text,
              labelText: 'Notes (Optional)',
              
            ),    
            
            SizedBox(height: 24),
            CustomBtnApp(
              text: 'Next',
              onPressed: () {
                 if (_formKey.currentState!.validate()) {
                  context.read<OrderCubit>().updatePackageDetails(
                    selectedPackageType!,
                    double.parse(_weightController.text),
                    _notesController.text,
                  );
                  context.go(paymentPath);
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
