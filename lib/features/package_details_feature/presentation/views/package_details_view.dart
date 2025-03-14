import 'package:barid_x_assignment/constants.dart';
import 'package:barid_x_assignment/core/widgets/custom_app_bar.dart';
import 'package:barid_x_assignment/features/package_details_feature/presentation/widgets/package_details_view_body.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class PackageDetailsView extends StatelessWidget {
  const PackageDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(
        title: 'Package Details',
        leading: IconButton(
          onPressed: () {
            context.go(customerInfoPath);
          },
          icon: Icon(Icons.arrow_back_ios_new_outlined),
        ),
      ),
      body: PackageDetailsViewBody(),
    );
  }
}
