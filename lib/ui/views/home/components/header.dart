import 'package:flutter/material.dart';
import 'package:m7_bliblioteca/ui/components/custom_text.dart';
import 'package:m7_bliblioteca/utils/texts/text_utils.dart';

class HomeHeader extends StatefulWidget {
  const HomeHeader({super.key});
  @override
  State<HomeHeader> createState() => _HomeHeaderState();
}

class _HomeHeaderState extends State<HomeHeader> {
  HomeViewTexts texts = HomeViewTexts();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: SizedBox(
        width: double.infinity,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: 250,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomText(
                    texts.appTitle,
                    fontSize: 20,
                  ),
                  CustomText(texts.appLegend),
                ],
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.menu, color: Colors.white),
              color: Colors.white,
            ),
          ],
        ),
      ),
    );
  }
}
