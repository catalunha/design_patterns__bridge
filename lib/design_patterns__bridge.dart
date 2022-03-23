import 'package:design_patterns__bridge/page.dart';
import 'package:design_patterns__bridge/page_impl_simple.dart';
import 'package:design_patterns__bridge/renderer_impl_html.dart';
import 'package:design_patterns__bridge/renderer_impl_json.dart';

void execute() {
  print('Aplicando: https://refactoring.guru/pt-br/design-patterns/bridge');
  var htmlRenderer = RendererImplHtml();
  var jsonRenderer = RendererImplJson();
  var page = PageImplSimple(
    renderer: htmlRenderer,
    title: 'home',
    content: 'Welcome to our website!',
  );
  print('Html view of a simple content page');
  clientCode(page);
  page.changeRenderer(jsonRenderer);
  print(
      'Json view of a simple content page, rendered with the same client code.');
  clientCode(page);
}

clientCode(Page page) {
  print(page.view());
}
