abstract class Renderer {
  String title(String title);
  String textBlock(String text);
  String image(String url);
  String link(String url, String title);
  String header();
  String footer();
  String parts(List<String> parts);
}
