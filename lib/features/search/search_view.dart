import 'package:flutter/material.dart';

import 'presentation/widgets/search_view_body.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(top: 16.0),
          child: SearchViewBody(),
        ),
      ),
    );
  }
}
