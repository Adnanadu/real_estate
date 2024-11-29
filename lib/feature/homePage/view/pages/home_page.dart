import 'package:flutter/material.dart';
import 'package:flutter_application_1/feature/explorePage/view/pages/explore_page.dart';
import 'package:flutter_application_1/feature/favoritePage/view/pages/favorite_page.dart';
import 'package:flutter_application_1/feature/homePage/view/widgets/featured_card_widget.dart';
import 'package:flutter_application_1/feature/homePage/view/widgets/filtred_button_widget.dart';
import 'package:flutter_application_1/feature/homePage/view/widgets/recommendation_card_widget.dart';
import 'package:flutter_application_1/feature/messagePage/view/pages/message_page.dart';
import 'package:flutter_application_1/feature/profilePage/view/pages/profile_page.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';

// Mock Data
final featuredItems = [
  {
    'title': 'Modernica Apartment',
    'location': 'New York, US',
    'price': 29,
    'rating': 4.8
  },
  {
    'title': 'Merida House',
    'location': 'Paris, France',
    'price': 32,
    'rating': 4.6
  },
];

final recommendationItems = [
  {
    'title': 'La Grand Maison',
    'location': 'Tokyo, Japan',
    'price': 36,
    'rating': 4.7
  },
  {
    'title': 'Alpha Housing',
    'location': 'Delhi, India',
    'price': 28,
    'rating': 4.2
  },
  // More items...
];

class HomePage extends HookWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    // Define a controller for the PageView
    final pageController = usePageController();

    // Define a state to track the selected index for BottomNavigationBar
    final currentIndex = useState(0);

    // Update the PageView when a BottomNavigationBar item is tapped
    void onBottomNavTapped(int index) {
      currentIndex.value = index;
      pageController.animateToPage(
        index,
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    }

    // Update the BottomNavigationBar when the PageView is swiped
    void onPageChanged(int index) {
      currentIndex.value = index;
    }

    // final entireScrollController = useScrollController();
    final featuredScrollController = useScrollController();
    final recomendationScrollController = useScrollController();
    final gridViewScrollController = useScrollController();
    final selectedIndex = useState<int?>(0);
    
    return Scaffold(
      body: PageView(
          controller: pageController,
          onPageChanged: onPageChanged,

          ///home page
          children: [
            Scaffold(
              body: SafeArea(
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ///profile
                      ListTile(
                        leading: const CircleAvatar(
                          // backgroundImage: AssetImage('assets/images/logo.png'),
                          radius: 20,
                        ),
                        title: const Text('Wishing 👋'),
                        subtitle: const Text('Name'),
                        trailing: CircleAvatar(
                          radius: 20,
                          backgroundColor: Colors.white,
                          child: Badge.count(
                              count: 1,
                              child: const Icon(
                                  Icons.notifications_none_outlined)),
                        ),
                        onTap: () {
                          context.push('/notifi');
                        },
                      ),

                      ///search bar
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        child: SearchBar(
                          elevation: WidgetStateProperty.all<double>(0),

                          ///search bar shape
                          shape:
                              WidgetStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                          ),

                          padding: WidgetStateProperty.all<EdgeInsets>(
                              const EdgeInsets.symmetric(horizontal: 16)),
                          leading: const Icon(Icons.search),
                          trailing: const [
                            Icon(Icons.settings)
                          ], // Wrap Icon in a list
                        ),
                      ),
                      const SizedBox(height: 16),

                      // Featured Section

                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Featured",
                                style: Theme.of(context).textTheme.titleLarge),
                            TextButton(
                                onPressed: () {
                                  // context.push('/recommendation');
                                },
                                child: const Text("See All")),
                          ],
                        ),
                      ),

                      ///featured card
                      FeatureCardWidget(
                          featuredScrollController: featuredScrollController),
                      const SizedBox(height: 20),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              "Our Recommendations",
                            ),
                            TextButton(
                                onPressed: () {
                                  context.push('/recommendation');
                                },
                                child: const Text("See All")),
                          ],
                        ),
                      ),

                      ///Categories in List view of outlined Button in a row
                      FiltredButtonWidget(
                          recomendationScrollController:
                              recomendationScrollController,
                          selectedIndex: selectedIndex),
                      const SizedBox(height: 20),

                      // Recommendations Grid
                      ReccomendationCardWidget(
                          gridViewScrollController: gridViewScrollController),
                      //end of page
                      const SizedBox(height: 20),
                    ],
                  ),
                ),
              ),

              ///bottom navigation bar
            ),
            const ExplorePage(),
            const FavoritePage(),
            const MessagePage(),
            const ProfilePage(),
          ]),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        ///current index
        currentIndex: currentIndex.value,
        ///on tap function
        onTap: onBottomNavTapped,
        ///items
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.explore), label: 'Explore'),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite), label: 'Favorites'),
          BottomNavigationBarItem(icon: Icon(Icons.message), label: 'Message'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],
      ),
    );
  }
}
