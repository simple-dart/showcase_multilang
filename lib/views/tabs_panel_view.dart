import 'package:simple_dart_multilang_headed_panel/simple_dart_multilang_headed_panel.dart';
import 'package:simple_dart_multilang_label/simple_dart_multilang_label.dart';
import 'package:simple_dart_multilang_tabs_panel/simple_dart_multilang_tabs_panel.dart';
import 'package:simple_dart_starter_multilang/simple_dart_starter_multilang.dart';
import 'package:simple_dart_tabs_panel/simple_dart_tabs_panel.dart';
import 'package:simple_dart_ui_core/simple_dart_ui_core.dart';

import '../translations.dart';

class TabPanelView extends View {
  MultilangHeadedPanel headedPanel = MultilangHeadedPanel()..fullSize();

  TabPanelView() {
    id = 'tab_panel';
    caption = 'TabPanel';
    fullSize();
    fillContent = true;
    padding = '10px';
    vertical = true;
    spacing = '10px';
    final multilangTabPanel = TabsPanel()
      ..fillContent = true
      ..fullSize();
    final tag1 = multilangTabPanel.addTabTag(MultilangLabelTabTag(Panel()
      ..add(MultilangLabel()..langKey = '$lkTab 1')
      ..padding = '5px'
      ..vertical = true
      ..fullSize()
      ..fillContent = true)
      ..caption = '$lkTab 1');

    multilangTabPanel
      ..addTabTag(MultilangLabelTabTag(Panel()
        ..add(MultilangLabel()..langKey = '$lkTab 2')
        ..padding = '5px'
        ..vertical = true
        ..fullSize()
        ..fillContent = true)
        ..caption = '$lkTab 2')
      ..currentTag = tag1;
    headedPanel.langKey = '$lkMultilangTabPanel';
    headedPanel.contentPanel.add(multilangTabPanel);
    add(headedPanel);
  }
}
