import 'package:design_patterns__bridge/page.dart';
import 'package:design_patterns__bridge/product.dart';
import 'package:design_patterns__bridge/renderer.dart';

class PageImplProduct extends Page {
  final Product _product;
  PageImplProduct({
    required Renderer renderer,
    required Product product,
  })  : _product = product,
        super(renderer: renderer);
  @override
  String view() {
    return renderer.parts([
      renderer.header(),
      renderer.title(_product.title),
      renderer.textBlock(_product.description),
      renderer.image(_product.image),
      renderer.link('/cart/add/${_product.id}', 'Add to cart'),
      renderer.footer(),
    ]);
  }
}
