import 'package:flutter/material.dart';

import 'custom_book_item.dart';

class ListViewItems extends StatelessWidget {
  const ListViewItems({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      //size of  one item in list view
      height: MediaQuery.of(context).size.height * 0.32,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemBuilder: ((context, index) => const CustomBookItem())),
    );
  }
}
