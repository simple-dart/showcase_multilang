import 'package:simple_dart_multilang_button/simple_dart_multilang_button.dart';
import 'package:simple_dart_multilang_form_panel/simple_dart_multilang_form_panel.dart';
import 'package:simple_dart_multilang_headed_panel/simple_dart_multilang_headed_panel.dart';
import 'package:simple_dart_starter_multilang/simple_dart_starter_multilang.dart';
import 'package:simple_dart_text_area_field/simple_dart_text_area_field.dart';
import 'package:simple_dart_text_field/simple_dart_text_field.dart';

import '../translations.dart';

class FormPanelView extends View {
  MultilangHeadedPanel headedPanel = MultilangHeadedPanel();
  MultilangFormPanel formPanel = MultilangFormPanel();

  FormPanelView() {
    id = 'form_panel';
    caption = 'FormPanel';
    fullSize();
    vertical = true;
    fillContent = true;
    padding = '10px';
    spacing = '10px';
    formPanel
      ..labelsWidth = '150px'
      ..spacing = '5px'
      ..formSpacing = '5px'
      ..addComponent(lkTextField, TextField()..fullWidth())
      ..addComponent(lkTextAreaField, TextAreaField()..fullWidth())
      ..addLabel(lkLabel, lkLabel)
      ..addComponent(lkButton, MultilangButton()..langKey = lkButton);
    headedPanel.langKey = lkFormPanel;
    headedPanel.contentPanel.add(formPanel);
    headedPanel.width = '600px';
    add(headedPanel);
  }
}
