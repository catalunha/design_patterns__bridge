import 'package:design_patterns__bridge/renderer.dart';

class RendererImplJson implements Renderer {
  @override
  String footer() {
    return '';
  }

  @override
  String header() {
    return '';
  }

  @override
  String image(String url) {
    return '"url":"$url"';
  }

  @override
  String link(String url, String title) {
    return '"link":{"href":"$url","title":"$title"';
  }

  @override
  String parts(List<String> parts) {
    var parts2 = parts.skipWhile((value) => value.isEmpty);
    return '{\n${parts2.join(",\n")}}';
  }

  @override
  String textBlock(String text) {
    return '"text":"$text"';
  }

  @override
  String title(String title) {
    return '"title":"$title"';
  }
}
