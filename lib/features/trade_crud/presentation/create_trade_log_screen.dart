import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:trading_log/core/utils/constants/constants.dart';
import 'package:trading_log/core/utils/utils.dart';
import 'package:trading_log/core/widgets/widgets.dart';
import 'package:trading_log/features/trade_crud/presentation/widgets/widgets.dart';

class CreateTradeLogScreen extends ConsumerStatefulWidget {
  static CreateTradeLogScreen builder(
          BuildContext context, GoRouterState state) =>
      const CreateTradeLogScreen();

  const CreateTradeLogScreen({super.key});

  @override
  _CreateTradeLogScreenState createState() => _CreateTradeLogScreenState();
}

class _CreateTradeLogScreenState extends ConsumerState<CreateTradeLogScreen> {
  final _formKey = GlobalKey<FormState>();
  final _symbolController = TextEditingController();
  final _entryDateTimeController = TextEditingController();
  final _entryQuantityController = TextEditingController();
  final _entryPriceController = TextEditingController();
  final _entryNoteController = TextEditingController();
  final _exitDateTimeController = TextEditingController();
  final _exitQuantityController = TextEditingController();
  final _exitPriceController = TextEditingController();
  final _exitNoteController = TextEditingController();

  bool _isEntryExpanded = false;
  bool _isExitExpanded = false;

  void _toggleEntryExpansion(int index) {
    setState(() {
      _isEntryExpanded = !_isEntryExpanded;
    });
  }

  void _toggleExitExpansion(int index) {
    setState(() {
      _isExitExpanded = !_isExitExpanded;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      floatingActionButton: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(AppSizes.lg),
          shape: BoxShape.rectangle,
          color: AppColors.accent,
        ),
        child: TextButton(
          onPressed: () {
            if (_formKey.currentState!.validate()) {
              _formKey.currentState!.save();
            }
          },
          style: TextButton.styleFrom(
            padding: const EdgeInsets.all(AppSizes.md),
          ),
          child: const Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(Icons.save, color: AppColors.white),
              SizedBox(width: 4),
              Text(AppTexts.save, style: TextStyle(color: AppColors.white, fontSize: AppSizes.fontSizeMd)),
            ],
          ),
        ),
      ),
      body: Form(
        key: _formKey,
        child: ListView(
          padding: const EdgeInsets.all(AppSizes.md),
          children: [
            CustomTextFormField(
              controller: _symbolController,
              hintText: AppTexts.symbol,
              validator: (value) {
                return Validators.validateField(value);
              },
              suggestionText: AppTexts.symbolExample,
            ),
            const Gap(height: AppSizes.md),
            const TradeTypeFields(),
            const Gap(height: AppSizes.md),
            ExpansionPanelList(
              elevation: 0,
              expansionCallback: (int index, bool isExpanded) {
                _toggleEntryExpansion(index);
              },
              children: [
                ExpansionPanel(
                  headerBuilder: (BuildContext context, bool isExpanded) {
                    return const ListTile(
                      title: Text(AppTexts.entryDetails),
                    );
                  },
                  body: EntryExitCard(
                    type: TradeType.entry,
                    dateTimeController: _entryDateTimeController,
                    quantityController: _entryQuantityController,
                    priceController: _entryPriceController,
                    noteController: _entryNoteController,
                  ),
                  backgroundColor: AppColors.white,
                  isExpanded: _isEntryExpanded,
                ),
              ],
            ),
            const Gap(height: AppSizes.md),
            ExpansionPanelList(
              elevation: 0,
              expansionCallback: (int index, bool isExpanded) {
                _toggleExitExpansion(index);
              },
              children: [
                ExpansionPanel(
                  headerBuilder: (BuildContext context, bool isExpanded) {
                    return const ListTile(
                      title: Text(AppTexts.exitDetails),
                    );
                  },
                  body: EntryExitCard(
                    type: TradeType.exit,
                    dateTimeController: _exitDateTimeController,
                    quantityController: _exitQuantityController,
                    priceController: _exitPriceController,
                    noteController: _exitNoteController,
                  ),
                  backgroundColor: AppColors.white,
                  isExpanded: _isExitExpanded,
                ),
              ],
            ),
            const Gap(height: AppSizes.md),
            const AddImage(imageName: AppImages.candleStricks),
            const Gap(height: AppSizes.md),
          ],
        ),
      ),
    );
  }
}
