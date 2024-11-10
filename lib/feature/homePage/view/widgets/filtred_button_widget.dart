
import 'package:flutter/material.dart';

class FiltredButtonWidget extends StatelessWidget {
  const FiltredButtonWidget({
    super.key,
    required this.recomendationScrollController,
    required this.selectedIndex,
  });

  final ScrollController recomendationScrollController;
  final ValueNotifier<int?> selectedIndex;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16),
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
    );
  }
}
