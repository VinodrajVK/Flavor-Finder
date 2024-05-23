import 'dart:ffi';

import 'package:avatar_glow/avatar_glow.dart';
import 'package:flavor_finder/models/text_input.dart';
import 'package:flavor_finder/screens/recipe_list_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:speech_to_text/speech_to_text.dart' as stt;

class TextScreen extends ConsumerStatefulWidget {
  const TextScreen({super.key});

  @override
  ConsumerState<TextScreen> createState() => _TextScreen();
}

class _TextScreen extends ConsumerState<TextScreen> {
  final key = GlobalKey<FormState>();
  final TextEditingController ingredientsController = TextEditingController();
  final TextEditingController hoursController = TextEditingController();
  final TextEditingController minutesController = TextEditingController();

  stt.SpeechToText _speech = stt.SpeechToText();
  bool _isListening = false;
  String _recognizedText = '';
  TextEditingController? _activeController;

  @override
  void initState() {
    super.initState();
    _initSpeech();
  }

  void _initSpeech() async {
    bool available = await _speech.initialize(
      onStatus: (status) {
        print('Speech recognition status: $status');
      },
      onError: (error) {
        print('Speech recognition error: $error');
      },
    );

    if (available) {
      print('Speech recognition is available');
    } else {
      print('Speech recognition is not available');
    }
  }

  void _startListening(TextEditingController controller) async {
    if (!_isListening) {
      bool available = await _speech.initialize(
        onStatus: (status) {
          print('Speech recognition status: $status');
        },
        onError: (error) {
          print('Speech recognition error: $error');
        },
      );

      if (available) {
        setState(() {
          _isListening = true;
          _activeController = controller;
          _recognizedText = ''; // Clear previous text when you start listening
        });

        _speech.listen(
          onResult: (result) {
            // Update _recognizedText but don't update the controller here
            setState(() {
              _recognizedText = result.recognizedWords;
            });
          },
        );
      }
    }
  }

  void _stopListening() async {
    if (_isListening) {
      await _speech.stop();
      setState(() {
        _isListening = false;
        _activeController?.text = _recognizedText; // Update the text field
        _activeController = null;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    TextInput input_data = TextInput();
    return Scaffold(
      appBar: AppBar(
        title: Text('Recipe Input'),
        centerTitle: true,
        backgroundColor: Colors.green,
      ),
      body: SingleChildScrollView(
        child: Form(
          key: key,
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Card(
                  elevation: 4,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const ListTile(
                          leading: Icon(Icons.restaurant_menu),
                          title: Text("Enter List of Ingredients Available"),
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: TextFormField(
                                controller: ingredientsController,
                                decoration: const InputDecoration(
                                  labelText: 'List Of Ingredients',
                                ),
                                validator: (value) {
                                  if (value!.isEmpty) {
                                    return 'At least one Ingredient Required';
                                  }
                                  return null;
                                },
                                onSaved: (value) {
                                  input_data.ingredients = value!;
                                },
                              ),
                            ),
                            AvatarGlow(
                              animate: _isListening &&
                                  _activeController == ingredientsController,
                              glowColor: Colors.blue,
                              //endRadius: 25.0,
                              duration: const Duration(milliseconds: 2000),
                              //repeatPauseDuration:
                              // const Duration(milliseconds: 100),
                              repeat: true,
                              child: GestureDetector(
                                onLongPressStart: (details) {
                                  if (_activeController ==
                                      ingredientsController) {
                                    _stopListening();
                                  } else {
                                    if (_activeController != null) {
                                      _stopListening();
                                    }
                                    _startListening(ingredientsController);
                                  }
                                },
                                onLongPressEnd: (details) {
                                  _stopListening();
                                },
                                child: CircleAvatar(
                                  backgroundColor: Colors.blue,
                                  radius: 20.0,
                                  child: Icon(
                                    _isListening &&
                                            _activeController ==
                                                ingredientsController
                                        ? Icons.mic
                                        : Icons.mic_none,
                                    color: Colors.white,
                                    size: 24.0,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 16),
                Card(
                  elevation: 4,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const ListTile(
                          leading: Icon(Icons.title),
                          title: Text("Select Diet"),
                        ),
                        DropdownButton(
                          hint: Text('Select Cuisine'),
                          isExpanded: true,
                          items: Diet.values
                              .map(
                                (e) => DropdownMenuItem(
                                  value: e,
                                  child: Text(e.toString().split('.').last),
                                ),
                              )
                              .toList(),
                          onChanged: (value) {
                            setState(() {
                              input_data.diet = value.toString();
                            });
                          },
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 16),
                Card(
                  elevation: 4,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const ListTile(
                          leading: Icon(Icons.restaurant),
                          title: Text("Select Course"),
                        ),
                        DropdownButton(
                          hint: Text('Select Course'),
                          isExpanded: true,
                          items: Course.values
                              .map(
                                (e) => DropdownMenuItem(
                                  value: e,
                                  child: Text(e.toString().split('.').last),
                                ),
                              )
                              .toList(),
                          onChanged: (value) {
                            setState(() {
                              input_data.course = value.toString();
                            });
                          },
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 16),
                Card(
                  elevation: 4,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const ListTile(
                          leading: Icon(Icons.schedule),
                          title: Text("Enter Time Available"),
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: TextFormField(
                                controller: hoursController,
                                keyboardType: TextInputType.number,
                                decoration: const InputDecoration(
                                  labelText: 'Hours',
                                ),
                                validator: (value) {
                                  if (value!.isEmpty) {
                                    return 'Please enter hours';
                                  }
                                  return null;
                                },
                                onSaved: (value) {
                                  input_data.time =
                                      '${(int.parse(value!) * 60 + int.parse(minutesController.text))}';
                                },
                              ),
                            ),
                            SizedBox(width: 16),
                            Expanded(
                              child: TextFormField(
                                controller: minutesController,
                                keyboardType: TextInputType.number,
                                decoration: const InputDecoration(
                                  labelText: 'Minutes',
                                ),
                                validator: (value) {
                                  if (value!.isEmpty) {
                                    return 'Please enter minutes';
                                  }
                                  return null;
                                },
                                onSaved: (value) {
                                  input_data.time =
                                      '${hoursController.text}h ${value}m';
                                },
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 16),
                ElevatedButton(
                  onPressed: () {
                    if (key.currentState!.validate()) {
                      key.currentState!.save();
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => RecipeList(),
                      ));
                      // Perform the submit action with input_data
                    }
                  },
                  child: const Text('Submit'),
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                    textStyle: TextStyle(fontSize: 18),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
