import 'package:barid_x_assignment/constants.dart';
import 'package:barid_x_assignment/core/widgets/custom_app_bar.dart';
import 'package:barid_x_assignment/features/review_submition_feature/presentation/widgets/review_submition_view_body.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ReviewSubmitionView extends StatelessWidget {
  const ReviewSubmitionView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(
        title: 'Review your Order',
        leading: IconButton(
          onPressed: () {
            context.go(paymentPath);
          },
          icon: Icon(Icons.arrow_back_ios_new_outlined),
        ),
      ),
      body: ReviewSubmitionViewBody(),
    );
  }
}
