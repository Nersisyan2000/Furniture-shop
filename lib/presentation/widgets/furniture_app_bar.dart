import 'package:awesome_extensions/awesome_extensions.dart';
import 'package:flutter/material.dart';
import 'package:furniture_uikit/furniture_uikit.dart';

class FurnitureAppBar extends StatelessWidget {
  const FurnitureAppBar({super.key, this.leading, this.title, this.actions});

  final Widget? leading;
  final Widget? title;
  final List<Widget>? actions;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: leading,
      title: title,
      surfaceTintColor: FurnitureColors.transparent,
      centerTitle: true,
      backgroundColor: FurnitureColors.whiteBackground,
      actions: actions,
    ).paddingOnly(left: 20.w, right: 20.w, top: 10.h);
  }
}

//  leading: FurnitureIconButton.whiteMode(
//           icon: FurnitureAssets.icons.arrowBack.svg(),
//           onTap: () => context.router.maybePop(),  
//         )

// [
//           FurnitureIconButton.whiteMode(
//             icon: FurnitureAssets.icons.hearthIcon.svg(
//               color: Colors.black,
//             ),
//             onTap: () {},
//           )
//         ]
