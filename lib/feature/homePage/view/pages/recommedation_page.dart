import 'package:flutter/material.dart';
import 'package:flutter_application_1/feature/homePage/view/widgets/filtred_button_widget.dart';
import 'package:flutter_application_1/feature/homePage/view/widgets/recommendation_card_widget.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class RecommedationPage extends HookWidget {
  const RecommedationPage({super.key});

  @override
  Widget build(BuildContext context) {
    final recomendationScrollController = useScrollController();
    final selectedIndex = useState<int?>(null);
    final gridViewScrollController = useScrollController();

    return Scaffold(
      appBar: AppBar(
        title: const Text("Recommendations"),
        centerTitle: true,
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.search_outlined))
        ],
      ),
      body: SingleChildScrollView(
          child: Column(
        children: [
          const SizedBox(
            height: 16,
          ),
          FiltredButtonWidget(
              recomendationScrollController: recomendationScrollController,
              selectedIndex: selectedIndex),
          const SizedBox(
            height: 16,
          ),
          ReccomendationCardWidget(
              gridViewScrollController: gridViewScrollController)
        ],
      )),
    );
  }
}
