import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AiScreen extends StatefulWidget {
  const AiScreen({super.key});

  @override
  State<AiScreen> createState() => _AiScreenState();
}

class _AiScreenState extends State<AiScreen> {

  final TextEditingController _textController = TextEditingController();
  final List<String> _messages = [
    'Hey, Michael. How can I assist you today?',
    'Track Location'
  ];
  final List<String> _suggestion = [
    "Hello",
    "Hey, give me this week’s insights!",
    "Consumption this week",
    "What are some healthy alternatives to alcohol?",
    "How to cope with cravings for alcohol?"
  ];



  @override
  void dispose() {
    _textController.dispose();
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const SizedBox(width: 1,),
            Image.asset('assets/images/Ellipse.png'),
            Image.asset('assets/images/Menu.png'),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 15, right: 15, bottom: 15, top: 15),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                reverse: false, // New messages at the bottom
                itemCount: _messages.length,
                itemBuilder: (context, index) {
                  return Align(
                    alignment: Alignment.centerLeft,
                    child: Container(
                      margin: const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
                      padding: const EdgeInsets.all(12),
                      decoration: const BoxDecoration(
                        color: Color(0xFFF1F2FF),
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(5),
                          topRight: Radius.circular(20),
                          bottomLeft: Radius.circular(5),
                          bottomRight: Radius.circular(5),
                        ),
                      ),
                      child: Text(_messages[index],style: GoogleFonts.openSans(color: const Color(0xFF2103C6),fontSize: 12),),
                    ),
                  );
                },
              ),
            ),
            SizedBox(height: 50,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
                itemCount: _suggestion.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          _messages.insert(0, _suggestion[index]);
                        });
                      },
                      child: Container(
                        margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 4),
                        padding: const EdgeInsets.symmetric(vertical: 0,horizontal: 12),
                        decoration: BoxDecoration(
                          border: Border.all(color: const Color(0xFF2103C6)),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Center(child: Text(_suggestion[index],style: GoogleFonts.openSans(color: const Color(0xFF2103C6),fontSize: 12),)),
                      ),
                    ),
                  );
                }
            )
              ,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 0),
              child: Card(
                elevation: 0.1,
                child: Expanded(
                  child: TextField(
                    controller: _textController,
                    decoration: InputDecoration(
                      fillColor: const Color(0xFFF6F6F6),
                      filled: true,
                      hintText: "Type a message",
                      hintStyle: GoogleFonts.openSans(fontSize: 12),
                      border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(16),
                      ),
                      contentPadding: const EdgeInsets.symmetric(vertical: 20, horizontal: 16),
                      suffixIcon: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          IconButton(
                            icon: Image.asset('assets/images/Mic.png'),
                            onPressed: () {
                              // Add microphone functionality
                              print('Microphone pressed');
                            },
                          ),
                          IconButton(
                            icon: Image.asset('assets/images/Send.png'),
                            onPressed: () {
                              final text = _textController.text.trim();
                              if (text.isNotEmpty) {
                                setState(() {
                                  _messages.insert(0, text);
                                });
                                _textController.clear();
                              }
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      resizeToAvoidBottomInset: true, // Handles keyboard appearance
    );
  }
}
