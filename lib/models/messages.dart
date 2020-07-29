import 'package:flutter/material.dart';

import '../widgets/LFGAppBar.dart';
import '../widgets/chat_message.dart';

class Messages extends StatefulWidget {
  final String title;

  const Messages({Key key, this.title}) : super(key: key);

  @override
  _MessagesState createState() => _MessagesState();
}

class _MessagesState extends State<Messages> with TickerProviderStateMixin {
  final _textController = TextEditingController();

  final List<ChatMessage> _messages = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      body: Column(
        children: <Widget>[
          Flexible(
            child: ListView.builder(
              padding: const EdgeInsets.all(8),
              reverse: true,
              itemCount: _messages.length,
              itemBuilder: (_, int index) => _messages[index],
            ),
          ),
          const Divider(height: 1),
          _buildTextComposer(),
        ],
      ),
    );
  }

  Widget _buildTextComposer() {
    return IconTheme(
      data: IconThemeData(color: Theme.of(context).accentColor),
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 8),
        decoration: BoxDecoration(
          color: Theme.of(context).cardColor,
        ),
        child: Row(
          children: <Widget>[
            Flexible(
              child: TextField(
                controller: _textController,
                onSubmitted: _handleSubmitted,
                decoration: const InputDecoration.collapsed(hintText: 'Send a message'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 4),
              child: IconButton(
                icon: const Icon(Icons.send),
                onPressed: () => _handleSubmitted(_textController.text),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _handleSubmitted(String text) {
    _textController.clear();

    final msg = ChatMessage(
      text: text,
      animCtrl: AnimationController(
        duration: const Duration(milliseconds: 500),
        vsync: this,
      ),
    );

    setState(() {
      _messages.insert(0, msg);
    });

    msg.animCtrl.forward();
  }

  @override
  void dispose() {
    for (ChatMessage msg in _messages) {
      msg.dispose();
    }

    super.dispose();
  }
}