import 'package:flutter/material.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          // ERIZ AI pinned at the top
          Container(
            color: Colors.indigo.shade50,
            padding: const EdgeInsets.all(12),
            child: Row(
              children: const [
                CircleAvatar(child: Icon(Icons.smart_toy)),
                SizedBox(width: 12),
                Expanded(child: Text('ERIZ AI — Ask me anything.')),
                Icon(Icons.chevron_right),
              ],
            ),
          ),

          // Chats list
          Expanded(
            child: ListView.builder(
              itemCount: 10,
              itemBuilder: (context, index) => ListTile(
                leading: CircleAvatar(child: Text('C\${index + 1}')),
                title: Text('Conversation ${index + 1}'),
                subtitle: Text('Last message preview...'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
