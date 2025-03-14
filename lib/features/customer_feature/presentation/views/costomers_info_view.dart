import 'package:barid_x_assignment/core/widgets/custom_app_bar.dart';
import 'package:barid_x_assignment/features/customer_feature/presentation/widgets/customer_info_view_body.dart';
import 'package:flutter/material.dart';

class CustomerInfoView extends StatelessWidget {
  
  const CustomerInfoView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(title: 'User Information'),
      body: CustomerInfoViewBody(),
    );
  }

  
}
