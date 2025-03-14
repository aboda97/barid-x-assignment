import 'package:barid_x_assignment/constants.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

Future<dynamic> showAlert(BuildContext context) {
    return showDialog(
    context: context,
    builder: (context) => AlertDialog(
      title: Text('Congratulations ✅'),
      content: Text('You Order was sent successfully'),
      actions: [
        TextButton(
          onPressed: () {
            context.go(customerInfoPath); 
          },
          child: Text('Done'),
        ),
      ],
    ),
  );
  }