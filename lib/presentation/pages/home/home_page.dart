import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:getapp/app/config/app_colors.dart';
import 'package:getapp/app/types/tab_type.dart';
import 'package:getapp/presentation/controllers/auth/auth_controller.dart';
import 'package:getapp/presentation/controllers/headline/headline_binding.dart';
import 'package:getapp/presentation/controllers/news/news_binding.dart';
import 'package:getapp/presentation/pages/headline/headline_page.dart';
import 'package:getapp/presentation/pages/news/news_page.dart';
import 'package:getapp/presentation/pages/profile/profile_page.dart';

class HomePage extends GetView<AuthController> {
  @override
  Widget build(BuildContext context) {
    return CupertinoTabScaffold(
      tabBar: CupertinoTabBar(
        items: TabType.values
            .map((e) => BottomNavigationBarItem(icon: e.icon, label: e.title))
            .toList(),
        inactiveColor: AppColors.lightGray,
        activeColor: AppColors.primary,
      ),
      tabBuilder: (context, index) {
        final type = TabType.values[index];
        switch (type) {
          case TabType.headline:
            HeadlineBinding().dependencies();
            return HeadlinePage();
          case TabType.news:
            NewsBinding().dependencies();
            return NewsPage();
          case TabType.profile:
            return ProfilePage();
        }
      },
    );
  }
}
