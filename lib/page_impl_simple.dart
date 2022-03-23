import 'package:design_patterns__bridge/page.dart';
import 'package:design_patterns__bridge/renderer.dart';

class PageImplSimple extends Page {
  final String _title;
  final String _content;
  PageImplSimple({
    required Renderer renderer,
    required String title,
    required String content,
  })  : _title = title,
        _content = content,
        super(renderer: renderer);
  @override
  String view() {
    return renderer.parts([
      renderer.header(),
      renderer.title(_title),
      renderer.textBlock(_content),
      renderer.footer(),
    ]);
  }
}
