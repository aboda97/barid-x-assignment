import 'package:barid_x_assignment/core/utils/app_colors.dart';
import 'package:barid_x_assignment/core/utils/go_routers.dart';
import 'package:barid_x_assignment/core/services/order_cubit.dart/order_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => OrderCubit(),
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        title: 'Barid-X',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: AppColors.primaryColor),
        ),
         routerConfig: router,
      ),
    );
  }
}
