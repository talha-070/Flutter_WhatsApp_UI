import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  static const String id = 'HomeScreen';
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('WhatsApp'),
          bottom: const TabBar(tabs: [
            Tab(
              child: Icon(Icons.camera_alt),
            ),
            Tab(
              child: Text('Chat'),
            ),
            Tab(
              child: Text('Status'),
            ),
            Tab(
              child: Text('Calls'),
            )
          ]),
          actions: [
            const Icon(Icons.search),
            const SizedBox(
              width: 10,
            ),
            PopupMenuButton(
                icon: const Icon(Icons.more_vert_outlined),
                itemBuilder: (context) => [
                      const PopupMenuItem(
                        value: 1,
                        child: Text('New Group'),
                      ),
                      PopupMenuItem(
                        value: 2,
                        child: Text('Settings'),
                      ),
                      const PopupMenuItem(
                        value: 3,
                        child: Text('Logout'),
                      ),
                    ]),
            SizedBox(
              width: 15,
            ),
          ],
        ),
        body: TabBarView(children: [
          Text('Camera'),
          ListView.builder(
              itemCount: 50,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage(
                        'https://images.pexels.com/photos/3586798/pexels-photo-3586798.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
                  ),
                  title: Text('Naomi'),
                  subtitle: Text('Hello'),
                  trailing: Text(DateTime.now().hour.toString() +
                      ':' +
                      DateTime.now().minute.toString()),
                );
              }),
          ListView.builder(
              itemCount: 50,
              itemBuilder: (context, index) {
                if (index == 0) {
                  return Column(
                    children: [
                      ListTile(
                        leading: Container(
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border:
                                  Border.all(width: 3, color: Colors.green)),
                          child: CircleAvatar(
                            backgroundImage: NetworkImage(
                                'https://images.pexels.com/photos/1040881/pexels-photo-1040881.jpeg?auto=compress&cs=tinysrgb&w=400'),
                          ),
                        ),
                        title: Text('Your Status'),
                        subtitle: Text('Tap to add status update'),
                      ),
                      Divider(
                        thickness: 5,
                        indent: 20,
                        endIndent: 20,
                      )
                    ],
                  );
                } else if (index > 0 && index < 5) {
                  return ListTile(
                    leading: Container(
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(width: 3, color: Colors.green)),
                      child: CircleAvatar(
                        backgroundImage: NetworkImage(
                            'https://images.pexels.com/photos/428364/pexels-photo-428364.jpeg?auto=compress&cs=tinysrgb&w=400'),
                      ),
                    ),
                    title: Text('Leo'),
                    subtitle: Text('10 minutes ago'),
                  );
                } else {
                  return ListTile(
                    leading: Container(
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(width: 3, color: Colors.green)),
                      child: CircleAvatar(
                        backgroundImage: NetworkImage(
                            'https://images.pexels.com/photos/415829/pexels-photo-415829.jpeg?auto=compress&cs=tinysrgb&w=400'),
                      ),
                    ),
                    title: Text('Nami'),
                    subtitle: Text('20 minutes ago'),
                  );
                }
              }),
          ListView.builder(
              itemCount: 50,
              itemBuilder: (context, index) {
                if (index % 2 == 0) {
                  return ListTile(
                    leading: CircleAvatar(
                      backgroundImage: NetworkImage(
                          'https://images.pexels.com/photos/3586798/pexels-photo-3586798.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
                    ),
                    title: Text('Naomi'),
                    subtitle: Text(DateTime.now().hour.toString() +
                        ':' +
                        DateTime.now().minute.toString()),
                    trailing: Icon(Icons.call),
                  );
                } else {
                  return ListTile(
                    leading: CircleAvatar(
                      backgroundImage: NetworkImage(
                          'https://images.pexels.com/photos/1998865/pexels-photo-1998865.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
                    ),
                    title: Text('Sarah'),
                    subtitle: Text(DateTime.now().hour.toString() +
                        ':' +
                        DateTime.now().minute.toString()),
                    trailing: Icon(Icons.video_call),
                  );
                }
              }),
        ]),
      ),
    );
  }
}
