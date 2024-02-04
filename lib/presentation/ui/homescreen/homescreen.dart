import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../application/providers.dart';
import '../../../application/state_providers.dart';
import '../../../constants/assets_manager.dart';
import '../../../constants/constants.dart';
import '../bookmarked_stories/bookmarked_stories.dart';
import '../top_stories/top_stories.dart';

class HomeScreen extends ConsumerStatefulWidget {
  const HomeScreen({super.key});

  @override
  ConsumerState<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends ConsumerState<HomeScreen> {
  @override
  void initState() {
    initStorage(ref);
    super.initState();
  }

  Future<void> initStorage(WidgetRef ref) async {
    await ref.read(Providers.bookmarkedSectionsStorageProvider).init();
    ref.read(StateProviders.bookmarkedCategories.notifier).loadFromStorage();
    ref.read(Providers.apiSectionsStorageProvider).init();
  }

  @override
  void dispose() {
    ref.read(Providers.apiSectionsStorageProvider).close();
    ref.read(Providers.bookmarkedSectionsStorageProvider).close();
    super.dispose();
  }

  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          showSelectedLabels: false,
          showUnselectedLabels: false,
          items: [
            BottomNavigationBarItem(
              icon: AssetsManager.homepageIcon,
              activeIcon: AssetsManager.homepageIconAccent,
              label: 'homepage',
            ),
            BottomNavigationBarItem(
              icon: AssetsManager.bookmarkIcon,
              activeIcon: AssetsManager.bookmarkIconAccent,
              label: 'bookmarks',
            ),
          ],
          currentIndex: _selectedIndex,
          selectedItemColor: Constants.purplePrimary,
          onTap: _onItemTapped,
        ),
        body: IndexedStack(
          index: _selectedIndex,
          children: [
            TopStories(
              title: 'NY Times Top Stories',
              categories: Constants.categories,
              loadingNotifier: StateProviders.homepageLoadingStories,
              focusNotifier: StateProviders.homepageSearchFieldInFocus,
              searchQueryNotifier: StateProviders.homepageSearchQuery,
              filterNotifier: StateProviders.homepageFilteredStories,
              searchInFocusNotifier: StateProviders.homepageSearchFieldInFocus,
            ),
            const BookmarkedStories(),
          ],
        ),
      );
}
