import 'package:flutter/material.dart';
import 'package:sigilotech/view/themes/app_font.dart';

import '../../themes/app_theme.dart';

class CustomTopBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Size get preferredSize => const Size.fromHeight(60);

  const CustomTopBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      flexibleSpace: SizedBox(
        height: 60,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: Row(
            children: [
              Icon(Icons.ac_unit, color: AppTheme.lightPrimaryColor),
              SizedBox(width: 8),
              Text("Hi, Super", style: AppFont.sb24),
              Spacer(),
              CircleAvatar(
                radius: 15,
                backgroundColor: AppTheme.white,
                child: Icon(Icons.notifications_none),
              ),
              SizedBox(width: 10),
              CircleAvatar(
                radius: 15,
                backgroundColor: AppTheme.white,
                child: Icon(Icons.person_outline),
              ),
            ],
          ),
        ),
      ),
      backgroundColor: AppTheme.grey7,
      centerTitle: true,
      elevation: 0,
      toolbarHeight: 60,
    );
  }
}
