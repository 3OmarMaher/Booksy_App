
import 'package:flutter/material.dart';

import 'widgets/book_details_app_bar.dart';
import 'widgets/book_details_sections.dart';

import 'widgets/similar_book_section.dart';

class BookViewDetails extends StatelessWidget {
  const BookViewDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: CustomScrollView(
      slivers: [
        SliverFillRemaining(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              children: [
                SafeArea(
                  child: CustomBookDetailsAppBar(),
                ),
                BookDetailsSection(),
                Expanded(child: SimilarsBooksSection()),
              ],
            ),
          ),
        )
      ],
    ));
  }
}

