import 'package:simple_dart_multilang_label/simple_dart_multilang_label.dart';
import 'package:simple_dart_starter_multilang/simple_dart_starter_multilang.dart';

import '../translations.dart';

class HomeView extends View {
  HomeView() {
    id = 'home';
    caption = lkMultilangShowcase;
    vertical = true;
    padding = '20px';
    spacing = '10px';
    fillContent = true;
    showInNavBar = false;
    fullSize();
    add(MultilangLabel()..caption = 'Showcase using multilang widgets library');
  }
}
