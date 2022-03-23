import 'package:design_patterns__bridge/renderer.dart';

class RendererImplHtml implements Renderer {
  @override
  String footer() {
    return '</body></html>';
  }

  @override
  String header() {
    return '<html><body>';
  }

  @override
  String image(String url) {
    return '<img src="$url">';
  }

  @override
  String link(String url, String title) {
    return '<a href="$url">$title</a>';
  }

  @override
  String parts(List<String> parts) {
    return parts.join('\n');
  }

  @override
  String textBlock(String text) {
    return '<div class="text"> $text </div>';
  }

  @override
  String title(String title) {
    return '<h1>$title</h1>';
  }
}
