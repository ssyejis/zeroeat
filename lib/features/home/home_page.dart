import 'dart:async';

import 'package:flutter/material.dart';

import 'package:zeroeat/config/routes.dart';
import 'package:zeroeat/features/product/product_page.dart';
import 'package:zeroeat/models.dart';

import 'package:zeroeat/config/theme.dart';


class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  final PageController _pageController = PageController();
  Timer? timer;
  int currentPageIndex = 0;

  final List<Product> topProducts = productDummyList;

  List<Widget> banners = [
    _HomeBanner(text: '무설탕 제로 음료 50% 할인!'),
    _HomeBanner(text: '저당 디저트 ~50% 할인!'),
    _HomeBanner(text: 'text'),
  ];


  @override
  void initState() {
    super.initState();

    timer = Timer.periodic(Duration(seconds: 3), (timer) {
      if (currentPageIndex < banners.length - 1) {
        currentPageIndex++;
      }
      else {
        currentPageIndex = 0;
      }

      _pageController.animateToPage(
        currentPageIndex,
        duration: Duration(milliseconds: 300),
        curve: Curves.easeIn,
      );
    });
  }

  @override
  void dispose() {
    _pageController.dispose();
    if (timer != null) {
      timer!.cancel();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFFDF6EC),
        title: SizedBox(
          height: 40,
          child: TextField(
            decoration: InputDecoration(
              hintText: '제로 탄산음료, 무설탕 초콜릿...',
              prefixIcon: const Icon(Icons.search),
              filled: true,
              fillColor: Colors.white,
              contentPadding: const EdgeInsets.symmetric(horizontal: 12),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide: BorderSide.none,
              ),
            ),
            onTap: () {
              Navigator.of(context).pushNamed(ZeroEatRoutes.search);
            },
          ),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.notifications_none),
            onPressed: () {},
          ),
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          SizedBox(
            height: 300,
            child: PageView(
              controller: _pageController,
              
              children: [
                _HomeBanner(text: '무설탕 제로 음료 50% 할인!'),
                _HomeBanner(text: '저당 디저트 ~50% 할인!'),
                _HomeBanner(text: 'text'),
              ],
            ),
          ),
          const SizedBox(height: 16),

          // 카테고리 버튼
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child:
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: const [
                _CategoryButton(label: '음료', icon: Icons.local_drink),
                SizedBox(width: 30),
                _CategoryButton(label: '간식', icon: Icons.cookie),
                SizedBox(width: 30),
                _CategoryButton(label: '식사대용', icon: Icons.rice_bowl),
                SizedBox(width: 30),
                _CategoryButton(label: '베이커리', icon: Icons.bakery_dining),
                SizedBox(width: 30),
                _CategoryButton(label: '비건', icon: Icons.eco),
                SizedBox(width: 30),
                _CategoryButton(label: '키토', icon: Icons.kitchen),
                SizedBox(width: 30),
                _CategoryButton(label: '글루텐프리', icon: Icons.eco),
              ],
            ),
          ),
          const SizedBox(height: 16),

          // 인기 제품 섹션
          const Text('🔥 핫한 제로식품 Top 10',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          const SizedBox(height: 8),

          SizedBox(
            height: 200,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemCount: topProducts.length,
              separatorBuilder: (_, __) => const SizedBox(width: 12),
              itemBuilder: (ctx, i) {
                final product = topProducts[i];
                return _FoodRankButton(
                  product: product,
                  onTap: () {
                    Navigator.of(context).pushNamed(
                      ZeroEatRoutes.productDetail,
                      arguments: product,
                    );
                  },
                );
              },
            ),
          ),
        ],
      ),

      // 하단 탭바
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: '홈'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: '검색'),
          BottomNavigationBarItem(icon: Icon(Icons.edit), label: '리뷰쓰기'),
          BottomNavigationBarItem(icon: Icon(Icons.people), label: '커뮤니티'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: '마이페이지'),
        ],
      ),
    );
  }
}

class _CategoryButton extends StatelessWidget {
  final String label;
  final IconData icon;

  const _CategoryButton({required this.label, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          radius: 32,
          backgroundColor: zeroEatTheme.colorScheme.secondary,
          child: Icon(icon, color: zeroEatTheme.colorScheme.primary),
        ),
        const SizedBox(height: 6),
        Text(label),
      ],
    );
  }
}

class _FoodRankButton extends StatelessWidget {
  final Product product;
  final VoidCallback onTap;

  const _FoodRankButton({required this.product, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 140,
        decoration: BoxDecoration(
          color: zeroEatTheme.colorScheme.secondary,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.network(
                product.imageUrl,
                height: 80,
                width: 120,
                fit: BoxFit.cover,
                errorBuilder: (context, error, stackTrace) => Icon(
                  Icons.local_cafe,
                  size: 60,
                  color: zeroEatTheme.colorScheme.primary,
                ),
              ),
            ),
            const SizedBox(height: 8),
            Text(
              product.name,
              style: const TextStyle(fontWeight: FontWeight.bold),
              maxLines: 1,
              textAlign: TextAlign.center,
              overflow: TextOverflow.ellipsis,
            ),
            Text(
              '⭐ ${product.rating.toStringAsFixed(1)} (리뷰 ${product.reviewCount})',
              style: const TextStyle(fontSize: 12),
            ),
          ],
        ),
      ),
    );
  }
}

class _HomeBanner extends StatelessWidget {
  final String text;

  const _HomeBanner({required this.text});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      decoration: BoxDecoration(
        color: Colors.green[100],
        borderRadius: BorderRadius.circular(12.0)
      ),
      child: Center(
        child: Text(text, style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
      ),
    );
  }
}