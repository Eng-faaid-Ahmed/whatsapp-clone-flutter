import 'package:flutter/material.dart';

void main() {
  runApp(WhatsAppCloneApp());
}

class WhatsAppCloneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'WhatsApp Clone',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text('WhatsApp Clone'),
          bottom: TabBar(
            tabs: [
              Tab(icon: Icon(Icons.message)),
              Tab(icon: Icon(Icons.photo)),
              Tab(icon: Icon(Icons.call)),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            MessageScreen(),
            StatusScreen(),
            CallsScreen(),
          ],
        ),
      ),
    );
  }
}

class MessageScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        ListTile(
          leading: CircleAvatar(
            backgroundImage: AssetImage('assets/contact1.jpg'),
          ),
          title: Text('Faaid Ahmed'),
          subtitle: Text('Hello, how are you?'),
        ),
        ListTile(
          leading: CircleAvatar(
            backgroundImage: AssetImage('assets/contact2.jpg'),
          ),
          title: Text('Moha gurey'),
          subtitle: Text('Are you free today?'),
        ),
        ListTile(
          leading: CircleAvatar(
            backgroundImage: AssetImage('assets/contact3.jpg'),
          ),
          title: Text('Sadak Ahmed'),
          subtitle: Text('Let\'s meet tomorrow.'),
        ),
      ],
    );
  }
}

class StatusScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        ListTile(
          leading: CircleAvatar(
            backgroundImage: AssetImage('assets/status1.jpg'),
          ),
          title: Text('Faaid Ahmed'),
          subtitle: Text('2 minutes ago'),
        ),
        ListTile(
          leading: CircleAvatar(
            backgroundImage: AssetImage('assets/status2.jpg'),
          ),
          title: Text('Moha gurey'),
          subtitle: Text('5 minutes ago'),
        ),
        ListTile(
          leading: CircleAvatar(
            backgroundImage: AssetImage('assets/status3.jpg'),
          ),
          title: Text('Sadak Ahmed'),
          subtitle: Text('10 minutes ago'),
        ),
      ],
    );
  }
}

class CallsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        ListTile(
          leading: CircleAvatar(
            backgroundImage: AssetImage('assets/call1.jpg'),
          ),
          title: Text('Faaid Ahmed'),
          subtitle: Text('Yesterday, 10:20 PM'),
          trailing: Icon(Icons.call_missed),
        ),
        ListTile(
          leading: CircleAvatar(
            backgroundImage: AssetImage('assets/call2.jpg'),
          ),
          title: Text('Moha gurey'),
          subtitle: Text('Yesterday, 9:45 PM'),
          trailing: Icon(Icons.call_missed),
        ),
        ListTile(
          leading: CircleAvatar(
            backgroundImage: AssetImage('assets/call3.jpg'),
          ),
          title: Text('Sadak Ahmed'),
          subtitle: Text('Yesterday, 8:30 PM'),
          trailing: Icon(Icons.call_missed),
        ),
      ],
    );
  }
}
