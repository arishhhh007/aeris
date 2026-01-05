import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          // Moments / Stories horizontal row
          SizedBox(
            height: 100,
            child: ListView.separated(
              padding: const EdgeInsets.all(8),
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) => Column(
                children: [
                  CircleAvatar(radius: 28, child: Text('U\${index + 1}')),
                  const SizedBox(height: 6),
                  Text('User ${index + 1}'),
                ],
              ),
              separatorBuilder: (_, __) => const SizedBox(width: 12),
              itemCount: 8,
            ),
          ),

          // Feed
          Expanded(
            child: ListView.builder(
              itemCount: 12,
              itemBuilder: (context, index) => ListTile(
                leading: CircleAvatar(child: Text('U\${index + 1}')),
                title: Text('Feed item ${index + 1}'),
                subtitle: Text('This is a short description for feed item ${index + 1}.'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
