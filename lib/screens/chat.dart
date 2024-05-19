/*


import 'package:flutter/material.dart';
class ChatScreen extends StatelessWidget {
  static const String screenRoute='chat_screen';
  const ChatScreen({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.yellow[900],
        title: Row(
          children: [
            Image.asset("images/logo.png",
            height: 25,
            ),
            const SizedBox(width: 10,),
            const Text("Message me",
            style: TextStyle(
              color: Colors.white,
            ),
            ),
          ],
        ),
        actions: [
          IconButton(
              onPressed: (){
                //add logout function here
              },
              icon: const Icon(Icons.close),
          ),
        ],
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            //Container(),
            Container(
              decoration: const BoxDecoration(
                border: Border(
                  top: BorderSide(
                    color: Colors.orange,
                    width: 2,
                  ),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Expanded(
                      child:TextField(
                        onChanged: (value){},
                        decoration: const InputDecoration(
                          contentPadding: EdgeInsets.symmetric(
                            vertical: 10,
                            horizontal: 20,
                          ),
                          hintText: "Write your message here....",
                          border: InputBorder.none,
                        ),
                      ),
                  ),
                  TextButton(
                      onPressed: (){},
                      child: Text(
                        'Send',
                        style: TextStyle(
                          color: Colors.blue[800],
                          fontSize: 18,
                        ),
                      ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

*/


import 'package:flutter/material.dart';

class ChatScreen extends StatelessWidget {
  static const String screenRoute = 'chat_screen';
  const ChatScreen({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.yellow[900],
        title: Row(
          children: [
            Image.asset(
              "images/logo.png",
              height: 25,
            ),
            const SizedBox(width: 10),
            const Text(
              "Message me",
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ],
        ),
        actions: [
          IconButton(
            onPressed: () {
              //add logout function here
            },
            icon: const Icon(Icons.close),
          ),
        ],
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // Placeholder for messages list
            //Flexible(
            /*child:*/ Container(
              color: Colors.grey[200],
              /*child: ListView(
                  children: const [
                    ListTile(
                      title: Text('User 1: Hello!'),
                    ),
                    ListTile(
                      title: Text('User 2: Hi there!'),
                    ),
                    // Add more messages here
                  ],
                ),*/
            ),
            //),
            Container(
              decoration: const BoxDecoration(
                border: Border(
                  top: BorderSide(
                    color: Colors.orange,
                    width: 2,
                  ),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    child: TextField(
                      onChanged: (value) {},
                      decoration: const InputDecoration(
                        contentPadding: EdgeInsets.symmetric(
                          vertical: 10,
                          horizontal: 20,
                        ),
                        hintText: "Write your message here....",
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      'Send',
                      style: TextStyle(
                        color: Colors.blue[800],
                        fontSize: 18,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
