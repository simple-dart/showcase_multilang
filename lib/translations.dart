import 'package:simple_dart_multilang_controller/simple_dart_multilang_controller.dart';

const String lkMultilangShowcase = '^MultilangShowcase';
const String lkTrue = '^true';
const String lkFalse = '^false';
const String lkTextField = '^TextField';
const String lkTextAreaField = '^TextAreaField';
const String lkButton = '^Button';
const String lkLabel = '^Label';
const String lkFormPanel = '^FormPanel';
const String lkCheckboxFields = '^CheckboxFields';
const String lkDisabled = '^Disabled';
const String lkSingleOptionSelect = '^SingleOptionSelect';
const String lkMultiSelection = '^MultiSelection';
const String lkSingleDisabled = '^SingleDisabled';
const String lkMultiDisabled = '^MultiDisabled';
const String lkRowLayout = '^RowLayout';
const String lkColumnLayout = '^ColumnLayout';
const String lkButtons = '^Buttons';
const String lkImageButtons = '^ImageButtons';
const String lkLinks = '^Links';
const String lkSimpleButton = '^SimpleButton';
const String lkDisabledButton = '^DisabledButton';
const String lkActiveButton = '^ActiveButton';
const String lkDisabledActiveButton = '^DisabledActiveButton';
const String lkSimpleLink = '^SimpleLink';
const String lkDisabledLink = '^DisabledLink';
const String lkActiveLink = '^ActiveLink';
const String lkDisabledActiveLink = '^DisabledActiveLink';
const String lkCaption = '^Caption';
const String lkFileChooser = '^FileChooser';
const String lkErrors = '^Errors';
const String lkShowError = '^ShowError';
const String lkShowFatalError = '^ShowFatalError';
const String lkError = '^Error';
const String lkSettings = '^Settings';
const String lkDialogExample = '^DialogExample';
const String lkOpenDialog = '^OpenDialog';
const String lkInputValue = '^InputValue';
const String lkMultilangTabPanel = '^MultilangTabPanel';
const String lkMultilangTable = '^MultilangTable';
const String lkRepositoryTable = '^RepositoryTable';
const String lkMultirowTable = '^MultirowTable';
const String lkMultilangObjectTable = '^MultilangObjectTable';
const String lkLoaded = '^Loaded';

const String lkOption = '^Option';
const String lkTab = '^Tab';
const String lkLazyTab = '^LazyTab';
const String lkValue = '^Value';
const String lkColumn = '^Column';
const String lkRow = '^Row';

void loadTranslations() {
  multilangController.loadTranslations({
    lkMultilangShowcase: {
      EN: 'Multilang Showcase',
      ES: 'Demo de Multilang',
      PT: 'Apresentação Multilang',
      RU: 'Витрина Multilang',
      FR: 'Démo Multilang',
      DE: 'Multilang-Showcase',
      IT: 'Demo Multilang',
      NL: 'Multilang-showcase',
      PL: 'Pokaz multilang',
      SV: 'Multilang-showcase',
      TR: 'Multilang gösterisi',
    },
    lkTrue: {
      EN: 'true',
      ES: 'verdadero',
      PT: 'verdadeiro',
      RU: 'правда',
      FR: 'vrai',
      DE: 'wahr',
      IT: 'vero',
      NL: 'waar',
      PL: 'prawda',
      SV: 'sanning',
      TR: 'doğru',
    },
    lkFalse: {
      EN: 'false',
      ES: 'falso',
      PT: 'falso',
      RU: 'ложь',
      FR: 'faux',
      DE: 'falsch',
      IT: 'falso',
      NL: 'vals',
      PL: 'fałszywy',
      SV: 'falsk',
      TR: 'yanlış',
    },
    lkTextField: {
      EN: 'Text Field',
      ES: 'Campo de texto',
      PT: 'Campo de texto',
      RU: 'Текстовое поле',
      FR: 'Champ de texte',
      DE: 'Textfeld',
      IT: 'Campo di testo',
      NL: 'Tekstveld',
      PL: 'Pole tekstowe',
      SV: 'Textfält',
      TR: 'Metin alanı',
    },
    lkTextAreaField: {
      EN: 'Text Area Field',
      ES: 'Campo de área de texto',
      PT: 'Campo de área de texto',
      RU: 'Многострочное текстовое поле',
      FR: 'Champ de zone de texte',
      DE: 'Textbereichsfeld',
      IT: 'Campo di area di testo',
      NL: 'Tekstgebiedveld',
      PL: 'Pole obszaru tekstowego',
      SV: 'Textområdefält',
      TR: 'Metin alanı alanı',
    },
    lkButton: {
      EN: 'Button',
      ES: 'Botón',
      PT: 'Botão',
      RU: 'Кнопка',
      FR: 'Bouton',
      DE: 'Knopf',
      IT: 'Pulsante',
      NL: 'Knop',
      PL: 'Przycisk',
      SV: 'Knapp',
      TR: 'Buton',
    },
    lkLabel: {
      EN: 'Label',
      ES: 'Etiqueta',
      PT: 'Etiqueta',
      RU: 'Метка',
      FR: 'Étiquette',
      DE: 'Etikett',
      IT: 'Etichetta',
      NL: 'Label',
      PL: 'Etykieta',
      SV: 'Etikett',
      TR: 'Etiket',
    },
    lkFormPanel: {
      EN: 'Form Panel',
      ES: 'Panel de formulario',
      PT: 'Painel de formulário',
      RU: 'Панель формы',
      FR: 'Panneau de formulaire',
      DE: 'Formularfeld',
      IT: 'Pannello del modulo',
      NL: 'Formulierpaneel',
      PL: 'Panel formularza',
      SV: 'Formulärpanel',
      TR: 'Form paneli',
    },
    lkCheckboxFields: {
      EN: 'Checkbox fields',
      ES: 'Campos de verificación',
      PT: 'Campos de seleção',
      RU: 'Поля флажков',
      FR: 'Champs de case à cocher',
      DE: 'Kontrollkästchenfelder',
      IT: 'Campi di controllo',
      NL: 'Selectievakjes',
      PL: 'Pola wyboru',
      SV: 'Kryssrutor',
      TR: 'Onay kutuları alanları',
    },
    lkDisabled: {
      EN: 'Disabled',
      ES: 'Discapacitado',
      PT: 'Deficiente',
      RU: 'Не активный',
      FR: 'Handicapé',
      DE: 'Behindert',
      IT: 'Disabile',
      NL: 'Invalide',
      PL: 'Niepełnosprawny',
      SV: 'Handikappad',
      TR: 'Engelli',
    },
    lkSingleOptionSelect: {
      EN: 'Single Option Select',
      ES: 'Selección de una sola opción',
      PT: 'Seleção de uma única opção',
      RU: 'Выбор одиночного варианта',
      FR: 'Sélection d\'une seule option',
      DE: 'Einzeloption auswählen',
      IT: 'Seleziona un\'opzione singola',
      NL: 'Selecteer een enkele optie',
      PL: 'Wybierz jedną opcję',
      SV: 'Välj en enda option',
      TR: 'Tek Seçenek Seç',
    },
    lkMultiSelection: {
      EN: 'Multi selection',
      ES: 'Multi selección',
      PT: 'Multi seleção',
      RU: 'Многожественный выбор',
      FR: 'Multi sélection',
      DE: 'Multi Auswahl',
      IT: 'Multi selezione',
      NL: 'Multi selectie',
      PL: 'Multi wybór',
      SV: 'Multi val',
      TR: 'Çoklu seçim',
    },
    lkSingleDisabled: {
      EN: 'Single Disabled Option',
      ES: 'Discapacitado',
      PT: 'Deficiente',
      RU: 'Одиночный недоступный вариант',
      FR: 'Handicapé',
      DE: 'Behindert',
      IT: 'Disabile',
      NL: 'Invalide',
      PL: 'Niepełnosprawny',
      SV: 'Handikappad',
      TR: 'Engelli',
    },
    lkMultiDisabled: {
      EN: 'Multi disabled',
      ES: 'Multi discapacitado',
      PT: 'Multi deficiente',
      RU: 'Множественный недоступный выбор',
      FR: 'Multi handicapé',
      DE: 'Multi behindert',
      IT: 'Multi disabile',
      NL: 'Multi invalide',
      PL: 'Multi niepełnosprawny',
      SV: 'Multi handikappad',
      TR: 'Çoklu engelli',
    },
    lkRowLayout: {
      EN: 'Row Layout',
      ES: 'Diseño de fila',
      PT: 'Layout de linha',
      RU: 'Раскладка строка',
      FR: 'Disposition en ligne',
      DE: 'Zeilenlayout',
      IT: 'Layout della riga',
      NL: 'Rijlay-out',
      PL: 'Układ wiersza',
      SV: 'Radlayout',
      TR: 'Satır düzeni',
    },
    lkColumnLayout: {
      EN: 'Column Layout',
      ES: 'Diseño de columna',
      PT: 'Layout de coluna',
      RU: 'Раскладка столбца',
      FR: 'Disposition en colonne',
      DE: 'Spaltenlayout',
      IT: 'Layout della colonna',
      NL: 'Kolomlay-out',
      PL: 'Układ kolumny',
      SV: 'Kolumnlayout',
      TR: 'Sütun düzeni',
    },
    lkButtons: {
      EN: 'Buttons',
      ES: 'Botones',
      PT: 'Botões',
      RU: 'Кнопки',
      FR: 'Boutons',
      DE: 'Knöpfe',
      IT: 'Pulsanti',
      NL: 'Knoppen',
      PL: 'Przyciski',
      SV: 'Knappar',
      TR: 'Butonlar',
    },
    lkImageButtons: {
      EN: 'Image Buttons',
      ES: 'Botones de imagen',
      PT: 'Botões de imagem',
      RU: 'Кнопки с изображениями',
      FR: 'Boutons d\'image',
      DE: 'Bildknöpfe',
      IT: 'Pulsanti immagine',
      NL: 'Afbeeldingsknoppen',
      PL: 'Przyciski obrazu',
      SV: 'Bildknappar',
      TR: 'Görüntü düğmeleri',
    },
    lkLinks: {
      EN: 'Links',
      ES: 'Enlaces',
      PT: 'Links',
      RU: 'Ссылки',
      FR: 'Liens',
      DE: 'Links',
      IT: 'Collegamenti',
      NL: 'Links',
      PL: 'Linki',
      SV: 'Länkar',
      TR: 'Bağlantılar',
    },
    lkSimpleButton: {
      EN: 'Simple Button',
      ES: 'Botón simple',
      PT: 'Botão simples',
      RU: 'Простая кнопка',
      FR: 'Bouton simple',
      DE: 'Einfache Schaltfläche',
      IT: 'Pulsante semplice',
      NL: 'Eenvoudige knop',
      PL: 'Prosty przycisk',
      SV: 'Enkel knapp',
      TR: 'Basit düğme',
    },
    lkDisabledButton: {
      EN: 'Disabled Button',
      ES: 'Botón desactivado',
      PT: 'Botão desativado',
      RU: 'Не активная кнопка',
      FR: 'Bouton désactivé',
      DE: 'Deaktivierte Schaltfläche',
      IT: 'Pulsante disabilitato',
      NL: 'Uitgeschakelde knop',
      PL: 'Nieaktywny przycisk',
      SV: 'Inaktiverad knapp',
      TR: 'Devre dışı bırakılmış düğme',
    },
    lkActiveButton: {
      EN: 'Active Button',
      ES: 'Botón activo',
      PT: 'Botão ativo',
      RU: 'Активная кнопка',
      FR: 'Bouton actif',
      DE: 'Aktive Schaltfläche',
      IT: 'Pulsante attivo',
      NL: 'Actieve knop',
      PL: 'Aktywny przycisk',
      SV: 'Aktiv knapp',
      TR: 'Aktif düğme',
    },
    lkDisabledActiveButton: {
      EN: 'Disabled Active Button',
      ES: 'Botón activo desactivado',
      PT: 'Botão ativo desativado',
      RU: 'Не активная выделенная кнопка',
      FR: 'Bouton actif désactivé',
      DE: 'Deaktivierte aktive Schaltfläche',
      IT: 'Pulsante attivo disabilitato',
      NL: 'Uitgeschakelde actieve knop',
      PL: 'Nieaktywny aktywny przycisk',
      SV: 'Inaktiverad aktiv knapp',
      TR: 'Devre dışı bırakılmış aktif düğme',
    },
    lkSimpleLink: {
      EN: 'Simple Link',
      ES: 'Enlace simple',
      PT: 'Link simples',
      RU: 'Простая ссылка',
      FR: 'Lien simple',
      DE: 'Einfacher Link',
      IT: 'Link semplice',
      NL: 'Eenvoudige link',
      PL: 'Prosty link',
      SV: 'Enkel länk',
      TR: 'Basit bağlantı',
    },
    lkDisabledLink: {
      EN: 'Disabled Link',
      ES: 'Enlace desactivado',
      PT: 'Link desativado',
      RU: 'Не активная ссылка',
      FR: 'Lien désactivé',
      DE: 'Deaktivierte Verknüpfung',
      IT: 'Link disabilitato',
      NL: 'Uitgeschakelde link',
      PL: 'Nieaktywny link',
      SV: 'Inaktiverad länk',
      TR: 'Devre dışı bırakılmış bağlantı',
    },
    lkActiveLink: {
      EN: 'Active Link',
      ES: 'Enlace activo',
      PT: 'Link ativo',
      RU: 'Активная ссылка',
      FR: 'Lien actif',
      DE: 'Aktiver Link',
      IT: 'Link attivo',
      NL: 'Actieve link',
      PL: 'Aktywny link',
      SV: 'Aktiv länk',
      TR: 'Aktif bağlantı',
    },
    lkDisabledActiveLink: {
      EN: 'Disabled Active Link',
      ES: 'Enlace activo desactivado',
      PT: 'Link ativo desativado',
      RU: 'Не активная выделенная ссылка',
      FR: 'Lien actif désactivé',
      DE: 'Deaktivierte aktive Verknüpfung',
      IT: 'Link attivo disabilitato',
      NL: 'Uitgeschakelde actieve link',
      PL: 'Nieaktywny aktywny link',
      SV: 'Inaktiverad aktiv länk',
      TR: 'Devre dışı bırakılmış aktif bağlantı',
    },
    lkCaption: {
      EN: 'Caption',
      ES: 'Leyenda',
      PT: 'Legenda',
      RU: 'Заголовок',
      FR: 'Légende',
      DE: 'Bildunterschrift',
      IT: 'Didascalia',
      NL: 'Bijschrift',
      PL: 'Napis',
      SV: 'Bildtext',
      TR: 'Başlık',
    },
    lkFileChooser: {
      EN: 'File Chooser',
      ES: 'Selector de archivos',
      PT: 'Selecionador de arquivos',
      RU: 'Выбор файла',
      FR: 'Sélecteur de fichiers',
      DE: 'Dateiauswahl',
      IT: 'Selettore di file',
      NL: 'Bestandskiezer',
      PL: 'Wybór pliku',
      SV: 'Filväljare',
      TR: 'Dosya seçici',
    },
    lkErrors: {
      EN: 'Errors',
      ES: 'Errores',
      PT: 'Erros',
      RU: 'Ошибки',
      FR: 'Erreurs',
      DE: 'Fehler',
      IT: 'Errori',
      NL: 'Fouten',
      PL: 'Błędy',
      SV: 'Fel',
      TR: 'Hatalar',
    },
    lkShowError: {
      EN: 'Show Error',
      ES: 'Mostrar error',
      PT: 'Mostrar erro',
      RU: 'Показать ошибку',
      FR: 'Afficher l\'erreur',
      DE: 'Fehler anzeigen',
      IT: 'Mostra errore',
      NL: 'Fout weergeven',
      PL: 'Pokaż błąd',
      SV: 'Visa fel',
      TR: 'Hata göster',
    },
    lkShowFatalError: {
      EN: 'Show Fatal Error',
      ES: 'Mostrar error fatal',
      PT: 'Mostrar erro fatal',
      RU: 'Показать фатальную ошибку',
      FR: 'Afficher l\'erreur fatale',
      DE: 'Schweren Fehler anzeigen',
      IT: 'Mostra errore fatale',
      NL: 'Toon fatale fout',
      PL: 'Pokaż błąd krytyczny',
      SV: 'Visa allvarligt fel',
      TR: 'Ölümcül hata göster',
    },
    lkError: {
      EN: 'Error',
      ES: 'Error',
      PT: 'Erro',
      RU: 'Ошибка',
      FR: 'Erreur',
      DE: 'Fehler',
      IT: 'Errore',
      NL: 'Fout',
      PL: 'Błąd',
      SV: 'Fel',
      TR: 'Hata',
    },
    lkSettings: {
      EN: 'Settings',
      ES: 'Configuración',
      PT: 'Configurações',
      RU: 'Настройки',
      FR: 'Paramètres',
      DE: 'Einstellungen',
      IT: 'Impostazioni',
      NL: 'Instellingen',
      PL: 'Ustawienia',
      SV: 'Inställningar',
      TR: 'Ayarlar',
    },
    lkDialogExample: {
      EN: 'Dialog Example',
      ES: 'Ejemplo de diálogo',
      PT: 'Exemplo de diálogo',
      RU: 'Пример диалога',
      FR: 'Exemple de dialogue',
      DE: 'Dialogbeispiel',
      IT: 'Esempio di dialogo',
      NL: 'Dialogvoorbeeld',
      PL: 'Przykład dialogu',
      SV: 'Dialogexempel',
      TR: 'İletişim örneği',
    },
    lkOpenDialog: {
      EN: 'Open Dialog',
      ES: 'Abrir diálogo',
      PT: 'Abrir diálogo',
      RU: 'Открыть диалог',
      FR: 'Ouvrir la boîte de dialogue',
      DE: 'Dialog öffnen',
      IT: 'Apri dialogo',
      NL: 'Open dialoog',
      PL: 'Otwórz okno dialogowe',
      SV: 'Öppna dialog',
      TR: 'İletişimi aç',
    },
    lkInputValue: {
      EN: 'Input Value',
      ES: 'Valor de entrada',
      PT: 'Valor de entrada',
      RU: 'Входное значение',
      FR: 'Valeur d\'entrée',
      DE: 'Eingabewert',
      IT: 'Valore di input',
      NL: 'Invoerwaarde',
      PL: 'Wartość wejściowa',
      SV: 'Inmatningsvärde',
      TR: 'Giriş değeri',
    },
    lkMultilangTabPanel: {
      EN: 'Multilang Tab Panel',
      ES: 'Panel de pestañas multilenguaje',
      PT: 'Painel de guias multilíngue',
      RU: 'Многоязычная панель вкладок',
      FR: 'Panneau d\'onglets multilingue',
      DE: 'Mehrsprachiges Tabellenfeld',
      IT: 'Pannello schede multilingue',
      NL: 'Multilang-tabbladpaneel',
      PL: 'Wielojęzyczny panel kart',
      SV: 'Multilang-flikpanel',
      TR: 'Çoklu dil sekme paneli',
    },
    lkMultilangTable: {
      EN: 'Multilang Table',
      ES: 'Tabla multilang',
      PT: 'Tabela multilang',
      RU: 'Мултиязычная таблица',
      FR: 'Table multilangue',
      DE: 'Mehrsprachige Tabelle',
      IT: 'Tabella multilingue',
      NL: 'Multilang-tabel',
      PL: 'Tabela wielojęzyczna',
      SV: 'Multilang-tabell',
      TR: 'Çoklu dil tablosu',
    },
    lkRepositoryTable: {
      EN: 'Repository Table',
      ES: 'Tabla de repositorio',
      PT: 'Tabela de repositório',
      RU: 'Таблица репозитория',
      FR: 'Table de référence',
      DE: 'Repository-Tabelle',
      IT: 'Tabella del repository',
      NL: 'Repository-tabel',
      PL: 'Tabela repozytorium',
      SV: 'Repository-tabell',
      TR: 'Depo tablosu',
    },
    lkMultirowTable: {
      EN: 'Multirow Table',
      ES: 'Tabla multirow',
      PT: 'Tabela multirow',
      RU: 'Многострочная таблица',
      FR: 'Table multirow',
      DE: 'Mehrzeilige Tabelle',
      IT: 'Tabella multirow',
      NL: 'Multirow-tabel',
      PL: 'Tabela wielowierszowa',
      SV: 'Multirow-tabell',
      TR: 'Çok satırlı tablo',
    },
    lkMultilangObjectTable: {
      EN: 'Multilang Object Table',
      ES: 'Tabla de objetos multilang',
      PT: 'Tabela de objetos multilang',
      RU: 'Многоязычная таблица объектов',
      FR: 'Table d\'objets multilingue',
      DE: 'Mehrsprachige Objekt-Tabelle',
      IT: 'Tabella oggetti multilingue',
      NL: 'Multilang-objecttabel',
      PL: 'Tabela obiektów wielojęzycznych',
      SV: 'Multilang-objekt-tabell',
      TR: 'Çoklu dil nesne tablosu',
    },
    lkLoaded: {
      EN: 'Loaded',
      ES: 'Cargado',
      PT: 'Carregado',
      RU: 'Загружено',
      FR: 'Chargé',
      DE: 'Geladen',
      IT: 'Caricato',
      NL: 'Geladen',
      PL: 'Załadowany',
      SV: 'Laddad',
      TR: 'Yüklendi',
    },
    lkOption: {
      EN: 'Option',
      ES: 'Opción',
      PT: 'Opção',
      RU: 'Вариант',
      FR: 'Option',
      DE: 'Option',
      IT: 'Opzione',
      NL: 'Optie',
      PL: 'Opcja',
      SV: 'Alternativ',
      TR: 'Seçenek',
    },
    lkTab: {
      EN: 'Tab',
      ES: 'Pestaña',
      PT: 'Guia',
      RU: 'Вкладка',
      FR: 'Onglet',
      DE: 'Tab',
      IT: 'Scheda',
      NL: 'Tabblad',
      PL: 'Karta',
      SV: 'Flik',
      TR: 'Sekme',
    },
    lkValue: {
      EN: 'Value',
      ES: 'Valor',
      PT: 'Valor',
      RU: 'Значение',
      FR: 'Valeur',
      DE: 'Wert',
      IT: 'Valore',
      NL: 'Waarde',
      PL: 'Wartość',
      SV: 'Värde',
      TR: 'Değer',
    },
    lkColumn: {
      EN: 'Column',
      ES: 'Columna',
      PT: 'Coluna',
      RU: 'Колонка',
      FR: 'Colonne',
      DE: 'Spalte',
      IT: 'Colonna',
      NL: 'Kolom',
      PL: 'Kolumna',
      SV: 'Kolumn',
      TR: 'Sütun',
    },
    lkRow: {
      EN: 'Row',
      ES: 'Fila',
      PT: 'Linha',
      RU: 'Строка',
      FR: 'Ligne',
      DE: 'Reihe',
      IT: 'Riga',
      NL: 'Rij',
      PL: 'Rząd',
      SV: 'Rad',
      TR: 'Satır',
    },
    lkLazyTab: {
      EN: 'Lazy Tab',
      ES: 'Pestaña perezosa',
      PT: 'Guia preguiçosa',
      RU: 'Ленивая вкладка',
      FR: 'Onglet paresseux',
      DE: 'Träge Tab',
      IT: 'Scheda pigra',
      NL: 'Lui tabblad',
      PL: 'Leniwa karta',
      SV: 'Lata flik',
      TR: 'Tembel sekme',
    },
  });
}
