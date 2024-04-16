import "package:flutter/material.dart";
import "package:gridview_builder/colors.dart";

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.builder(
          itemCount: 100,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 5,
          ),
          itemBuilder: (context, index) {
            String textToPrint = index %2 == 0 ? "Dani" : "Iki";
            return Padding(
              padding: const EdgeInsets.all(2.0),
              child: Container(
                height: 50,
                width: 50,
                color: MainColors.brownCoffeeMilk,
                child: Center(
                  child: Text(
                    textToPrint,
                    style: TextStyle(
                      fontSize: 12,
                      fontStyle: FontStyle.italic,
                      color: MainColors.white,
                    ),
                  ),
                ),
              
              ),
            );
          }),
    );
  }
}
