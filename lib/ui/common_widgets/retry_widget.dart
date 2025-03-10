import 'package:flutter/material.dart';

class RetryWidget extends StatelessWidget {
  const RetryWidget({super.key, required this.label, required this.onRetry});
  final String label;
  final VoidCallback onRetry;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        spacing: 10,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(label, style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),

          ElevatedButton.icon(
            onPressed: onRetry,
            icon: Icon(Icons.refresh),
            label: Text('Try Again'),
          ),
        ],
      ),
    );
  }
}
