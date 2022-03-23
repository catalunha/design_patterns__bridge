import 'package:design_patterns__bridge/renderer.dart';

abstract class Page {
  Renderer renderer;
  Page({
    required this.renderer,
  });
  changeRenderer(Renderer renderer) {
    this.renderer = renderer;
  }

  String view();
}
