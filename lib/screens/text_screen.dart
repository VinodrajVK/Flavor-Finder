import 'package:flavor_finder/models/text_input.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class TextScreen extends ConsumerStatefulWidget {
  const TextScreen({super.key});

  @override
  ConsumerState<TextScreen> createState() => _TextScreen();
}

class _TextScreen extends ConsumerState<TextScreen> {
  final key = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    TextInput input_data = TextInput();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add Lost Item'),
        backgroundColor: const Color.fromARGB(255, 177, 232, 228),
      ),
      body: SingleChildScrollView(
        child: Form(
          key: key,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(
                height: 10,
              ),
              Column(
                children: [
                  const ListTile(
                    leading: Icon(Icons.title),
                    title: Text("Enter List of Ingredients Available"),
                  ),
                  Container(
                    margin:
                        const EdgeInsets.only(left: 10, right: 10, bottom: 10),
                    child: TextFormField(
                      decoration: const InputDecoration(
                        labelText: 'List Of Ingredients',
                      ),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Atleast one Ingredient Required';
                        }
                        return null;
                      },
                      onSaved: (value) {
                        input_data.ingredients = value!;
                      },
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Column(
                children: [
                  const ListTile(
                    leading: Icon(Icons.title),
                    title: Text("Select Diet"),
                  ),
                  DropdownButton(
                      items: Diet.values
                          .map(
                            (e) => DropdownMenuItem(
                              child: Text(e.toString()),
                            ),
                          )
                          .toList(),
                      onChanged: (value) {
                        input_data.diet = value.toString();
                      }),
                ],
              ),
              Column(
                children: [
                  const ListTile(
                    leading: Icon(Icons.title),
                    title: Text("Select Course"),
                  ),
                  DropdownButton(
                      items: Course.values
                          .map(
                            (e) => DropdownMenuItem(
                              child: Text(e.toString()),
                            ),
                          )
                          .toList(),
                      onChanged: (value) {
                        input_data.course = value.toString();
                      }),
                ],
              ),
              Column(
                children: [
                  const ListTile(
                    leading: Icon(Icons.description),
                    title: Text("Enter Time Available"),
                  ),
                  Container(
                    margin:
                        const EdgeInsets.only(left: 10, right: 10, bottom: 10),
                    child: TextFormField(
                      decoration: const InputDecoration(
                        labelText: 'Time',
                      ),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Please enter a time';
                        }
                        return null;
                      },
                      onSaved: (value) {
                        input_data.time = value!;
                      },
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              ElevatedButton(
                onPressed: () {},
                child: const Text('Submit'),
              ),
              const SizedBox(
                height: 10,
              )
            ],
          ),
        ),
      ),
    );
  }
}
