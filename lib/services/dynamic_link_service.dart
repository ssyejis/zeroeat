import 'package:firebase_dynamic_links/firebase_dynamic_links.dart';
import 'package:share_plus/share_plus.dart';

class DynamicLinkService {
  static Future<void> shareProduct(String productId) async {
    final DynamicLinkParameters parameters = DynamicLinkParameters(
      uriPrefix: 'https://zeroeat.page.link',
      link: Uri.parse('https://zeroeat.com/product?id=$productId'),
      androidParameters: const AndroidParameters(
        packageName: 'com.example.zeroeat',
        minimumVersion: 1,
      ),
      iosParameters: const IOSParameters(
        bundleId: 'com.example.zeroeat',
        minimumVersion: '1.0.0',
      ),
    );
    final ShortDynamicLink shortLink = await FirebaseDynamicLinks.instance.buildShortLink(parameters);
    final Uri dynamicUrl = shortLink.shortUrl;

    Share.share(dynamicUrl.toString());
  }
}