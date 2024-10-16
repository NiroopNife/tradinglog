import 'package:trading_log/data/models/menu_item.dart';

class AppTexts {
  AppTexts._();

  // Page Titles
  static const String addJournal = 'Add Journal';

  // Formfield texts
  static const String entryDate = 'Entry Date';
  static const String symbol = 'Symbol';
  static const String symbolExample = 'Ex : Reliance';
  static const String segment = 'Segment';
  static const String tradeType = 'TradeType';
  static const String chartTimeFrame = 'Chart Time Frame';
  static const String stratergy = 'Stratergy';
  static const String entryDetails = 'Entry Details';
  static const String entryCondition = 'Entry Condition';
  static const String entryNote = 'Entry Note';
  static const String quantity = 'Quantity';
  static const String price = 'Price';
  static const String exitDetails = 'Exit Details';
  static const String exitCondition = 'Exit Condition';
  static const String exitNote = 'Exit Note';
  static const String brokerage = 'Brokerage';
  static const String remark = 'Remark';

  static List<MenuItem> segments = [
    MenuItem(1, 'Equity'),
    MenuItem(2, 'Future'),
    MenuItem(3, 'Forex'),
    MenuItem(4, 'Option'),
    MenuItem(5, 'Commodity'),
    MenuItem(6, 'Currency'),
    MenuItem(7, 'Crypto Currency'),
  ];
  static List<MenuItem> typesOfTrade = [
    MenuItem(1, 'Intraday'),
    MenuItem(2, 'Positional'),
    MenuItem(3, 'Investment'),
    MenuItem(4, 'Swing'),
    MenuItem(5, 'Scalping')
  ];

  static List<MenuItem> entryConditions = [
    MenuItem(1, 'Accurate Entry'),
    MenuItem(2, 'Early Entry'),
    MenuItem(3, 'Entry without conformation'),
    MenuItem(4, 'FOMO'),
    MenuItem(5, 'Late Entry'),
    MenuItem(6, 'Revenge'),
  ];

  static List<MenuItem> exitConditions = [
    MenuItem(1, 'Accurate Exit'),
    MenuItem(2, 'Early Exit'),
    MenuItem(3, 'Exit Early then Target hit'),
    MenuItem(4, 'Exit in Fear'),
    MenuItem(5, 'Exit in Fear then Target hit'),
    MenuItem(6, 'SL hit'),
    MenuItem(7, 'SL hit then Target hit'),
    MenuItem(8, 'Target hit'),
    MenuItem(9, 'Trailing SL hit'),
    MenuItem(10, 'Trailing SL hit then Target hit'),
    MenuItem(11, 'Trailing SL hit then SL hit'),
  ];

  // Buttons
  static const String addEntry = 'Add Entry';
  static const String addExit = 'Add Exit';
  static const String addImage = 'Add Image';
  static const String save = 'Save';
}
