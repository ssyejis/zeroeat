import 'package:flutter/material.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  final TextEditingController _controller = TextEditingController();
  String query = "";

  // 더미 데이터
  final List<Map<String, dynamic>> products = [
    {
      "name": "Hans Zero Lemonade",
      "rating": 4.5,
      "reviews": 47,
      "tags": ["저칼로리", "무설탕", "비건"]
    },
    {
      "name": "Mandann Zero Drink Ice",
      "rating": 4.7,
      "reviews": 133,
      "tags": ["저칼로리", "무설탕", "키토"]
    },
    {
      "name": "Korean Zero Cola",
      "rating": 4.0,
      "reviews": 84,
      "tags": ["제로칼로리", "제로콜라"]
    },
  ];

  @override
  Widget build(BuildContext context) {
    final results = products
        .where((p) => p["name"].toString().toLowerCase().contains(query.toLowerCase()))
        .toList();

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Navigator.pop(context),
        ),
        title: TextField(
          controller: _controller,
          decoration: InputDecoration(
            hintText: "제로 음료 검색",
            prefixIcon: const Icon(Icons.search),
            suffixIcon: IconButton(
              icon: const Icon(Icons.clear),
              onPressed: () {
                _controller.clear();
                setState(() => query = "");
              },
            ),
            filled: true,
            fillColor: Colors.white,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: BorderSide.none,
            ),
          ),
          onChanged: (val) => setState(() => query = val),
        ),
      ),
      body: Column(
        children: [
          // 정렬 탭
          Container(
            color: Colors.grey[200],
            height: 48,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: const [
                Text("정확도"),
                Text("리뷰 많은순"),
                Text("별점 높은순"),
              ],
            ),
          ),
          Expanded(
            child: results.isEmpty
                ? const Center(child: Text("검색 결과가 없습니다."))
                : ListView.separated(
                    itemCount: results.length,
                    separatorBuilder: (_, __) => const Divider(height: 1),
                    itemBuilder: (ctx, i) {
                      final p = results[i];
                      return ListTile(
                        leading: const Icon(Icons.local_drink, color: Colors.green),
                        title: Text(p["name"]),
                        subtitle: Wrap(
                          spacing: 6,
                          children: (p["tags"] as List<String>)
                              .map((t) => Chip(label: Text(t)))
                              .toList(),
                        ),
                        trailing: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            const Icon(Icons.star, color: Colors.orange),
                            Text("${p["rating"]}"),
                            Text(" (${p["reviews"]})"),
                          ],
                        ),
                        onTap: () {
                          // TODO: 제품 상세 화면으로 이동
                        },
                      );
                    },
                  ),
          ),
        ],
      ),
    );
  }
}
