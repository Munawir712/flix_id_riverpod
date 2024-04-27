import 'package:flix_id_riverpod/persentation/extensions/build_context_extension.dart';
import 'package:flix_id_riverpod/persentation/providers/router/router_provider.dart';
import 'package:flix_id_riverpod/persentation/providers/user_data/user_data_provider.dart';
import 'package:flix_id_riverpod/persentation/widgets/bottom_nav_bar.dart';
import 'package:flix_id_riverpod/persentation/widgets/bottom_nav_bar_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class MainPage extends ConsumerStatefulWidget {
  const MainPage({super.key});

  @override
  ConsumerState<MainPage> createState() => _MainPageState();
}

class _MainPageState extends ConsumerState<MainPage> {
  final PageController pageController = PageController();
  int selectedPage = 0;
  @override
  Widget build(BuildContext context) {
    ref.listen(userDataProvider, (previous, next) {
      if (previous != null && next is AsyncData && next.value == null) {
        ref.read(routerProvider).goNamed('login');
      } else if (next is AsyncError) {
        context.showSnackBar(next.error.toString());
      }
    });
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: pageController,
            onPageChanged: (value) => setState(() {
              selectedPage = value;
            }),
            children: [
              Center(
                child: Text('Movie'),
              ),
              Center(
                child: Text('Ticket'),
              ),
              Center(
                child: Text('Profile'),
              ),
            ],
          ),
          BottomNavBar(
            items: [
              BottomNavBarItem(
                index: 0,
                isSelected: selectedPage == 0,
                title: 'Home',
                image: 'assets/movie.png',
                selectedImage: 'assets/movie-selected.png',
              ),
              BottomNavBarItem(
                index: 1,
                isSelected: selectedPage == 1,
                title: 'Ticket',
                image: 'assets/ticket.png',
                selectedImage: 'assets/ticket-selected.png',
              ),
              BottomNavBarItem(
                index: 2,
                isSelected: selectedPage == 2,
                title: 'Profile',
                image: 'assets/profile.png',
                selectedImage: 'assets/profile-selected.png',
              ),
            ],
            onTap: (index) {
              pageController.animateToPage(index,
                  duration: const Duration(milliseconds: 200),
                  curve: Curves.easeInOut);
            },
            selectedIndex: selectedPage,
          ),
        ],
      ),
    );
  }
}
