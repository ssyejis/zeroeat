import 'package:flutter/material.dart';

class CategoryList extends StatefulWidget {
  const CategoryList({super.key});

  @override
  State<CategoryList> createState() => _CategoryListState();
}

class _CategoryListState extends State<CategoryList>
  with SingleTickerProviderStateMixin {
  List<String> categories = [
    '음료',
    '간식',
    '식사대용',
    '베이커리',
    '비건',
    '키토',
    '글루텐프리',
  ];

  late final TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(
      length: categories.length,
      vsync: this,
    );
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFFFDF6EC),
        elevation: 0,
        title: const Text(
          'ZERO:EAT',
          style: TextStyle(
            color: Color(0xFF3E2F1C),
            fontWeight: FontWeight.bold,
          ),
        ),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Color(0xFF3E2F1C)),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: Column(
        children: [
          TabBar(
            isScrollable: true,
            controller: _tabController,
            tabs: categories.map((category) => Tab(text: category, height: 50,)).toList(),
          ),
          Expanded(
            child: TabBarView(
              controller: _tabController,
              children: categories.map((category) {
                return Center(
                  child: Text(
                    '$category 카테고리 페이지',
                    style: const TextStyle(fontSize: 24),
                  ),
                );
              }).toList(),
            ),
          )
        ],
      ),
    );
  }
}