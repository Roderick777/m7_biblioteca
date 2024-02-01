import 'package:flutter/material.dart';

class LibraryLoader extends StatefulWidget {
  final Size size;
  const LibraryLoader({super.key, required this.size});

  @override
  State<LibraryLoader> createState() => _LibraryLoaderState();
}

class _LibraryLoaderState extends State<LibraryLoader> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          top: 230,
          child: SizedBox(
            width: widget.size.width,
            child: const Center(
              child: CircularProgressIndicator(
                color: Colors.white,
              ),
            ),
          ),
        )
      ],
    );
  }
}
