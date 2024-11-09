import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class HomePage extends HookWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    // final entireScrollController = useScrollController();
    final featuredScrollController = useScrollController();
    final recomendationScrollController = useScrollController();
    final GridViewScrollController = useScrollController();

    ///state to check if the button is selected
    // final isSelected = useState(false); // Replace const bool with useState
    final selectedIndex = useState<int?>(null);
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              /// 8px starting space
              const SizedBox(height: 8),
              ListTile(
                leading: const CircleAvatar(
                  backgroundImage: AssetImage('assets/images/logo.png'),
                  radius: 20,
                ),
                title: const Text('Wishing 👋'),
                subtitle: const Text('Name'),
                trailing: CircleAvatar(
                  radius: 20,
                  backgroundColor: Colors.white,
                  child: Badge.count(
                      count: 1,
                      child: const Icon(Icons.notifications_none_outlined)),
                ),

                // onTap: () {
                // context.push('/signin');
                // },
              ),

              /// 8px space
              const SizedBox(height: 8),

              ///search bar
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: SearchBar(
                  elevation: WidgetStateProperty.all<double>(0),

                  ///search bar shape
                  shape: WidgetStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                  ),

                  padding: WidgetStateProperty.all<EdgeInsets>(
                      const EdgeInsets.symmetric(horizontal: 16)),
                  leading: const Icon(Icons.search),
                  trailing: const [Icon(Icons.settings)], // Wrap Icon in a list
                ),
              ),

              ///Featured Items
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text("Featured"),
                    TextButton(onPressed: () {}, child: const Text("See All")),
                  ],
                ),
              ),

              ///16px space
              const SizedBox(height: 16),
              SizedBox(
                height: 300,
                child: ListView.builder(
                  controller: featuredScrollController,

                  ///scroll direction
                  scrollDirection: Axis.horizontal,
                  itemCount: 10,
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Container(
                        decoration: BoxDecoration(

                            ///border radius color
                            borderRadius: const BorderRadius.all(
                              Radius.elliptical(
                                30,
                                30,
                              ),
                            ),
                            border: Border.all(
                              color: Colors.black,
                            ),
                            color: Colors.amberAccent),
                        height: 300,
                        width: 200,
                      ),
                    );
                  },
                ),
              ),

              ///16px space
              const SizedBox(height: 16),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text("Our Recommendations"),
                    TextButton(onPressed: () {}, child: const Text("See All")),
                  ],
                ),
              ),

              ///16px space
              const SizedBox(height: 16),

              ///Categories in List view of Elevated Button in a row
              SizedBox(
                height: 30,
                child: ListView.builder(
                  controller: recomendationScrollController,

                  ///scroll direction
                  scrollDirection: Axis.horizontal,
                  itemCount: 10,
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    ///check if the index is selected
                    final isSelected = selectedIndex.value == index;

                    ///return the button
                    return Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 8.0,
                      ),
                      child: OutlinedButton(
                          style: ButtonStyle(
                            backgroundColor: WidgetStateProperty.all(

                                ///selected index background color turn to blue
                                ///unselected index background color turn to white
                                isSelected ? Colors.blue : Colors.white),
                          ),
                          onPressed: () async {
                            ///if selected then null else index
                            ///if not selected then index=
                            selectedIndex.value = isSelected ? null : index;
                          },
                          child: Text(
                            "hi",
                            style: TextStyle(
                              ///selected index text color turn to white
                              ///unselected index text color turn to blue
                              color: isSelected ? Colors.white : Colors.blue,
                            ),
                          )),
                    );
                  },
                ),
              ),

              ///grid view of items
              GridView.builder(
                // physics: const NeverScrollableScrollPhysics(),
                controller: GridViewScrollController,
                shrinkWrap: true,
                itemCount: 10,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                ),
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      color: Colors.amber,
                      height: 100,
                      width: 100,
                      padding: const EdgeInsets.all(16),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
