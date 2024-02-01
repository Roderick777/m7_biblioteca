import 'package:flutter/material.dart';
import 'package:m7_bliblioteca/domain/constants/constants.dart';
import 'package:m7_bliblioteca/ui/components/custom_text.dart';
import 'package:m7_bliblioteca/ui/state/main_provider.dart';
import 'package:m7_bliblioteca/ui/views/home/components/header.dart';
import 'package:m7_bliblioteca/utils/texts/text_utils.dart';
import 'package:provider/provider.dart';

class MainSlide extends StatefulWidget {
  final int currentSlide;
  const MainSlide({super.key, required this.currentSlide});
  @override
  State<MainSlide> createState() => _MainSlideState();
}

class _MainSlideState extends State<MainSlide> {
  HomeViewTexts texts = HomeViewTexts();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    int currentSlide = Provider.of<MainProvider>(context).currentSlide;

    if (currentSlide == 1) return const SizedBox();

    return Stack(
      children: [
        Positioned(
          child: Image.network(
            '${kImageUrl}portada.jpg',
            fit: BoxFit.cover,
            height: size.height,
          ),
        ),
        Container(
          decoration: BoxDecoration(color: Colors.blue.withAlpha(100)),
        ),
        const HomeHeader(),
        Positioned(
          top: 200,
          child: Container(
            padding: const EdgeInsets.all(16),
            child: Column(
              children: [
                CustomText(texts.articleTitle, fontSize: 40),
                const SizedBox(height: 20),
                SizedBox(
                  width: size.width - 32,
                  child: CustomText(texts.articleDescription),
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}
