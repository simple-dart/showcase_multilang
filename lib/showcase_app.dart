import 'package:simple_dart_modal_controller/simple_dart_modal_controller.dart';
import 'package:simple_dart_multilang_controller/simple_dart_multilang_controller.dart';
import 'package:simple_dart_multilang_label/simple_dart_multilang_label.dart';
import 'package:simple_dart_starter_multilang/simple_dart_starter_multilang.dart';
import 'package:simple_dart_theme_controller/simple_dart_theme_controller.dart';
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
import 'views/loadable_object_table_view.dart';
import 'views/object_table_view.dart';
import 'views/radiobutton_view.dart';
import 'views/select_field_view.dart';
import 'views/table_view.dart';
import 'views/tabs_panel_view.dart';

MainWindow mainWindow = MainWindow();

void start() {
  modalController.init();
  themeController.init(['Default', 'Dark', 'Blue']);
  multilangController.init(
    [EN, ES, PT, RU, FR, DE, IT, NL, PL, SV, TR],
  );
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
    LoadableObjectTableView(),
  ]);
  mainWindow.start();
  final langLabel = MultilangLabel()..langKey = lkLanguage;
  final themeLabel = MultilangLabel()..langKey = lkTheme;

  mainWindow.navBar.bottomPanel
    ..spacing = '3px'
    ..addAll([langLabel, mainWindow.langSelect, themeLabel, mainWindow.themeSelect, mainWindow.monospaceCheckbox]);
}
