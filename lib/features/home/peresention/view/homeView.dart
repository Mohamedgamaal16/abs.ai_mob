import 'package:abs_ai_mobile/core/constant/app_colors.dart';
import 'package:abs_ai_mobile/features/home/peresention/view/widget/home_view_body.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFFDFE0DF),
        title: const Center(child: Text('Pet Market')),
      ),
      backgroundColor: AppColors.whiteColor,
      body: const SafeArea(child: HomeViewBody()),
    );
  }
}
