import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
class DeliverPage extends StatelessWidget {
  const DeliverPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: Center(
        child: Text(
          'Deliver Page',
        ),
      ),
    );
  }
}