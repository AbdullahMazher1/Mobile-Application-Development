import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Accounts'),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start, // Adjust alignment
          children: <Widget>[
            const SizedBox(height: 16.0),
            Row(
              children: const [
                Icon(
                  Icons.account_circle,
                  size: 60.0,
                  color: Colors.blue,
                ),
                SizedBox(width: 8.0),
                Text(
                  'Accounts',
                  style: TextStyle(
                    fontSize: 24.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16.0),
            const Text(
              'Add another account - so you can switch between them easily.',
              style: TextStyle(
                fontSize: 16.0,
              ),
            ),
            const SizedBox(height: 16.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  'Your Accounts',
                  style: TextStyle(
                    fontSize: 12.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'Manage Accounts',
                  style: TextStyle(
                    fontSize: 12.0,
                    color: Colors.blue,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16.0),
            Column(
              children: const [
                Row(
                  children: [
                    CircleAvatar(
                      radius: 20.0,
                      backgroundImage: AssetImage('assets/images/a.jpg'),
                    ),
                    Text('Abd.sialvi64@gmail.com'), // Add text for Circle A
                  ],
                ),
                SizedBox(width: 16.0),
                Row(
                  children: [
                    CircleAvatar(
                      radius: 20.0,
                      backgroundImage: AssetImage('assets/images/b.jpg'),
                    ),
                    Text('ahmad.sialvi64@gmail.com'), // Add text for Circle B
                  ],
                ),
                SizedBox(width: 16.0),
                Row(
                  children: [
                    CircleAvatar(
                      radius: 20.0,
                      backgroundImage: AssetImage('assets/images/c.jpg'),
                    ),
                    Text('gulami.sialvi64@gmail.com'), // Add text for Circle C
                  ],
                ),
              ],
            ),
            const SizedBox(height: 16.0),
            ElevatedButton.icon(
              onPressed: () {
                // Add functionality for the button here
              },
              icon: const Icon(Icons.add),
              label: const Text('Add Another'),
            ),
          ],
        ),
      ),
    );
  }
}
