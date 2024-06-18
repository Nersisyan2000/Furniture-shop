import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:furniture_shop/config/routes/app_router.dart';
import 'package:furniture_uikit/furniture_uikit.dart';

@RoutePage()
class FeedPage extends StatelessWidget {
  const FeedPage({super.key});

  @override
  Widget build(BuildContext context) {
    bool keyboardIsOpen = MediaQuery.of(context).viewInsets.bottom != 0;
    return AutoTabsRouter(
      routes: const [
        HomeRoute(),
        FavouriteRoute(),
        ShoppingRoute(),
        ProfileRoute(),
      ],
      // transitionBuilder: (context, child, animation) {
      //   // add animation to our selected-tab page
      //   return FadeTransition(opacity: animation, child: child);
      // },
      builder: (context, child) {
        final tabsRouter = AutoTabsRouter.of(context);

        return Scaffold(
          extendBody: true,
          // resizeToAvoidBottomInset: false,
          floatingActionButton: Visibility(
            visible: !keyboardIsOpen,
            child: FloatingActionButton(
              onPressed: () {},
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30)),
              child: FurnitureAssets.icons.eyeScanner.svg(),
            ),
          ),
          floatingActionButtonLocation:
              FloatingActionButtonLocation.centerDocked,
          body: child,
          bottomNavigationBar: FurnitureBottomNavigation(
            currentIndex: tabsRouter.activeIndex,
            setActiveIndex: (index) {
              tabsRouter.setActiveIndex(index);
            },
          ),
        );
      },
    );
  }
}
