import 'package:flutter/material.dart';

class Dashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dashboard'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'Welcome back, User!',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20),
            // Calorie Tracking Cards
            Card(
              child: ListTile(
                title: Text('Calories Today'),
                subtitle: Text('1500/2000'),
                trailing: Icon(Icons.food_bank),
              ),
            ),
            SizedBox(height: 10),
            Card(
              child: ListTile(
                title: Text('Macros'),
                subtitle: Column(
                  children: <Widget>[
                    LinearProgressIndicator(
                      value: 0.7,
                      backgroundColor: Colors.grey,
                      valueColor: AlwaysStoppedAnimation<Color>(Colors.green),
                    ),
                    SizedBox(height: 5),
                    Text('70% of proteins'),
                  ],
                ),
              ),
            ),
            SizedBox(height: 10),
            // Water Intake Tracker
            Card(
              child: ListTile(
                title: Text('Water Intake'),
                subtitle: LinearProgressIndicator(
                  value: 0.5,
                  backgroundColor: Colors.grey,
                  valueColor: AlwaysStoppedAnimation<Color>(Colors.blue),
                ),
                trailing: Text('1L/2L'),
              ),
            ),
            SizedBox(height: 20),
            // Quick Action Buttons
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                ElevatedButton(
                  onPressed: () {},
                  child: Text('Log Meal'),
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: Text('Start Workout'),
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: Text('Track Weight'),
                ),
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.history), label: 'History'),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: 'Settings'),
        ],
      ),
    );
  }
}