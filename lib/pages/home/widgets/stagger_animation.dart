import 'package:flutter/material.dart';
import 'package:login_animated/pages/home/widgets/home_top.dart';

class StaggerAnimation extends StatelessWidget {
  final AnimationController controller;

  StaggerAnimation({super.key, required this.controller})
      : containerGrow = CurvedAnimation(
          parent: controller,
          curve: Curves.ease,
        );

  final Animation<double> containerGrow;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: AnimatedBuilder(
          animation: controller,
          builder: _buildAnimation,
        ),
      ),
    );
  }

  Widget _buildAnimation(BuildContext context, Widget? child) {
    return ListView(
      padding: EdgeInsets.zero,
      children: [
        HomeTop(
          containerGrow: containerGrow,
        ),
      ],
    );
  }
}
