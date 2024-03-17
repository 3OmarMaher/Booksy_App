import 'package:flutter/material.dart';

class MyWidgets extends StatefulWidget {
  const MyWidgets({super.key});

  @override
  _MyWidgetsState createState() => _MyWidgetsState();
}

class _MyWidgetsState extends State<MyWidgets> {
  final PageController _pageController = PageController();
  int _currentPageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Page View Example'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Align(
            alignment: Alignment.centerRight,
            child: ElevatedButton(
              onPressed: skip,
              child: const Text('Skip'),
            ),
          ),
          Expanded(
            child: PageView(
              controller: _pageController,
              onPageChanged: (index) {
                setState(() {
                  _currentPageIndex = index;
                });
              },
              children: const [
                PageContent(pageNumber: 1),
                PageContent(pageNumber: 2),
                PageContent(pageNumber: 3),
              ],
            ),
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: nextPage,
                child: const Text('Next'),
              ),
            ],
          ),
        ],
      ),
    );
  }

  void nextPage() {
    setState(() {
      _currentPageIndex = (_currentPageIndex + 1) % 3;
      _pageController.animateToPage(
        _currentPageIndex,
        duration: const Duration(milliseconds: 500),
        curve: Curves.easeInOut,
      );
    });
  }
  void skip() {
    // Navigate away or perform skip action
    Navigator.pop(context);
  }
}

class PageContent extends StatelessWidget {
  final int pageNumber;

  const PageContent({super.key, required this.pageNumber});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Page $pageNumber Content',
        style: const TextStyle(fontSize: 24),
      ),
    );
  }
}
