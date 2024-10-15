import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

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
  late String name;
  late String category;
  late String status;
  String? imagePath;

  @override
  void initState() {
    super.initState();
    name = '';
    category = '';
    status = 'Active';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Form(
        key: _formKey,
        child: ListView(
          padding: const EdgeInsets.all(16.0),
          children: [
            TextFormField(
              initialValue: name,
              decoration: const InputDecoration(labelText: 'Name'),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter a name';
                }
                return null;
              },
              onSaved: (value) => name = value!,
            ),
            const SizedBox(height: 16),
            Text('Status:', style: Theme.of(context).textTheme.headlineSmall),
            RadioListTile<String>(
              title: const Text('Active'),
              value: 'Active',
              groupValue: status,
              onChanged: (value) => setState(() => status = value!),
            ),
            RadioListTile<String>(
              title: const Text('Inactive'),
              value: 'Inactive',
              groupValue: status,
              onChanged: (value) => setState(() => status = value!),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {},
              child: const Text('Select Image'),
            ),
            if (imagePath != null) Image.asset(imagePath!, height: 100),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                if (_formKey.currentState!.validate()) {
                  _formKey.currentState!.save();
                }
              },
              child: const Text('Add'),
            ),
          ],
        ),
      ),
    );
  }
}
