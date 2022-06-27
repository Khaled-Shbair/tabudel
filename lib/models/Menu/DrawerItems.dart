import 'package:flutter/material.dart';

import 'DrawerItem.dart';

class DrawerItems {
  static const mainScreen = DrawerItem(title: 'الرئيسية', icon: Icons.house);
  static const profilePerson =
      DrawerItem(title: 'الملف الشخصي', icon: Icons.person);

  static const listProvideService = DrawerItem(
      title: 'قائمة مزودي الخدمات', icon: Icons.volunteer_activism_sharp);
  static const profileProvideService = DrawerItem(
      title: 'الملف الشخصي(مزود الخدمات)', icon: Icons.personal_injury);
  static const whatApp =
      DrawerItem(title: 'راسلنا على واتساب', icon: Icons.home);
  static const info = DrawerItem(title: 'عن التطبيق', icon: Icons.help_outline);
  static const logout = DrawerItem(title: 'تسجيل الخروج', icon: Icons.logout);
  static final List<DrawerItem> all = [
    profilePerson,
    listProvideService,
    profileProvideService,
    whatApp,
    info,
    logout
  ];
}
