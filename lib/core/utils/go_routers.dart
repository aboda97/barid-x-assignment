import 'package:barid_x_assignment/constants.dart';
import 'package:barid_x_assignment/features/customer_feature/presentation/views/costomers_info_view.dart';
import 'package:barid_x_assignment/features/package_details_feature/presentation/views/package_details_view.dart';
import 'package:barid_x_assignment/features/payment_feature/presentation/views/payment_view.dart';
import 'package:barid_x_assignment/features/review_submition_feature/presentation/views/review_submition_view.dart';
import 'package:go_router/go_router.dart';


final GoRouter router = GoRouter(
  initialLocation: '/customer-info',
  routes: [
    GoRoute(
      path: customerInfoPath,
      builder: (context, state) => CustomerInfoView(),
    ),
    GoRoute(
      path: packageDetailsPath,
      builder: (context, state) => PackageDetailsView(),
    ),
    GoRoute(
      path: paymentPath,
      builder: (context, state) => PaymentView(),
    ),
    GoRoute(
      path: reviewSubmitionPath,
      builder: (context, state) => ReviewSubmitionView(),
    ),
  ],
);
