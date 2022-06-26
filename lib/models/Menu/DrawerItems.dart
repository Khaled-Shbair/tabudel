import 'package:flutter/material.dart';

import 'DrawerItem.dart';

class DrawerItems {
  static const profilePerson =
      DrawerItem(title: 'الملف الشخصي', icon: Icons.home);
  static const listProvideService =
      DrawerItem(title: 'قائمة مزودي الخدمات', icon: Icons.person);
  static const profileProvideService =
      DrawerItem(title: 'الملف الشخصي(مزود الخدمات)', icon: Icons.start);
  static const whatApp =
      DrawerItem(title: 'راسلنا على واتساب', icon: Icons.home);
  static const info = DrawerItem(title: 'عن التطبيق', icon: Icons.home);
  static const logout = DrawerItem(title: 'تسجيل الخروج', icon: Icons.home);
  static final List<DrawerItem> all = [
    profilePerson,
    listProvideService,
    profileProvideService,
    whatApp,
    info,
    logout
  ];
}
