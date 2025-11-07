import 'package:flutter/material.dart';

import '../features/home/home_page.dart';
import '../features/search/search_page.dart';
import '../features/product/product_page.dart';
import '../features/community/review_page.dart';
import '../features/community/review_form.dart';
import '../features/category/category_page.dart';
import '../models.dart';
import 'routes.dart';

class ZeroEatRouter {
  const ZeroEatRouter._();

  static String get initialRoute => ZeroEatRoutes.home;

  static Route<dynamic>? onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case ZeroEatRoutes.home:
        return MaterialPageRoute<void>(
          builder: (_) => const HomePage(),
          settings: settings,
        );
      case ZeroEatRoutes.search:
        return MaterialPageRoute<void>(
          builder: (_) => const SearchPage(),
          settings: settings,
        );
      case ZeroEatRoutes.productDetail:
        final product = settings.arguments;

        if (product is! Product) {
          return MaterialPageRoute<void>(
            builder: (_) => const _UnknownRoutePage(),
            settings: settings,
          );
        }
        return MaterialPageRoute<void>(
          builder: (_) => ProductDetailPage(product: product),
          settings: settings,
        );
      case ZeroEatRoutes.review:
        final product = settings.arguments;
        if (product is! Product) {
          return MaterialPageRoute<void>(
            builder: (_) => const _UnknownRoutePage(),
            settings: settings,
          );
        }
        return MaterialPageRoute<void>(
          builder: (_) => ReviewPage(product: product),
          settings: settings,
        );
      case ZeroEatRoutes.reviewForm:
        return MaterialPageRoute(
          builder: (_) => ReviewForm(),
        );
      case ZeroEatRoutes.category:
        return MaterialPageRoute<void>(
          builder: (_) => const CategoryList(),
        );
      default:
        return MaterialPageRoute<void>(
          builder: (_) => _UnknownRoutePage(routeName: settings.name),
          settings: settings,
        );
    }
  }
}

class _UnknownRoutePage extends StatelessWidget {
  const _UnknownRoutePage({this.routeName});

  final String? routeName;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Page not found')),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Icon(Icons.error_outline, size: 48),
            const SizedBox(height: 16),
            Text('No page defined for "$routeName"'),
          ],
        ),
      ),
    );
  }
}
