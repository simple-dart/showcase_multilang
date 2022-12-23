import 'dart:html';

import 'package:simple_dart_modal_controller/simple_dart_modal_controller.dart';
import 'package:simple_dart_multilang_controller/simple_dart_multilang_controller.dart';
import 'package:simple_dart_multilang_label/simple_dart_multilang_label.dart';
import 'package:simple_dart_starter_multilang/simple_dart_starter_multilang.dart';
import 'package:simple_dart_theme_controller/simple_dart_theme_controller.dart';
import 'package:simple_dart_ui_core/simple_dart_ui_core.dart';
import 'package:simple_dart_view_controller/simple_dart_view_controller.dart';

import 'translations.dart';
import 'views/buttons_view.dart';
import 'views/checkbox_view.dart';
import 'views/dialog_view.dart';
import 'views/errors_view.dart';
import 'views/file_picker_view.dart';
import 'views/form_panel_view.dart';
import 'views/home_view.dart';
import 'views/image_buttons_view.dart';
import 'views/multilang_table_view.dart';
import 'views/object_table_view.dart';
import 'views/radiobutton_view.dart';
import 'views/repository_table_view.dart';
import 'views/select_field_view.dart';
import 'views/tabs_panel_view.dart';

MainWindow mainWindow = MainWindow();

void start() {
  modalController.init();
  themeController.init(['Default', 'Dark', 'Blue']);
  final langLabel = MultilangLabel();
  final themeLabel = MultilangLabel();

  final themePanel = Panel()
    ..vertical = true
    ..spacing = '3px'
    ..padding = '5px'
    ..addAll([langLabel, mainWindow.langSelect, themeLabel, mainWindow.themeSelect, mainWindow.monospaceCheckbox]);

  mainWindow.navBar.bottomPanel.add(themePanel);
  multilangController.init([EN, ES, PT, RU, FR, DE, IT, NL, PL, SV, TR]);
  loadTranslations();
  viewController.init(HomeView(), [
    FormPanelView(),
    CheckboxView(),
    SelectFieldView(),
    RadioView(),
    ButtonsView(),
    ImageButtonsView(),
    FileChooserView(),
    TabPanelView(),
    ErrorsView(),
    DialogView(),
    SimpleTableView(),
    ObjectTableView(),
    RepositoryTableView(),
  ]);
  mainWindow.start();
  document.title = multilangController.translate(viewController.homeView.caption);
  multilangController.onLangChange.listen((currentView) {
    document.title = multilangController.translate(viewController.homeView.caption);
  });
  langLabel.langKey = lkLanguage;
  themeLabel.langKey = lkTheme;
}
