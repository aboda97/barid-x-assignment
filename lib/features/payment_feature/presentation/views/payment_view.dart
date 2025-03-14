import 'package:barid_x_assignment/constants.dart';
import 'package:barid_x_assignment/core/widgets/custom_app_bar.dart';
import 'package:barid_x_assignment/features/payment_feature/presentation/widgets/payment_view_body.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class PaymentView extends StatelessWidget {
  const PaymentView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(
        title: 'Payment',
        leading: IconButton(
          onPressed: () {
           context.go(packageDetailsPath);
          },
          icon: Icon(Icons.arrow_back_ios_new_outlined),
        ),
      ),
      body: PaymentViewBody(),
    );
  }
}
