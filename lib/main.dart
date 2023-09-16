// import 'package:flutter/material.dart';

// void main() {
//   runApp(PersonalProfileApp());
// }

// class PersonalProfileApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text('My Profile'),
//         ),
//         body: Center(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: <Widget>[
//               CircleAvatar(
//                 radius: 75,
//                 backgroundImage: AssetImage('assets/abc.jpg'),
//               ),
//               SizedBox(height: 20),
//               Text(
//                 'Syeda Gulshan Ara',
//                 style: TextStyle(
//                   fontSize: 24,
//                   fontWeight: FontWeight.bold,
//                 ),
//               ),
//               Text('You are not Beautiful. Just your age is beautiful'),
//               SizedBox(height: 20),
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   Icon(Icons.email),
//                   SizedBox(width: 10),
//                   Text('syneha16@gmail.com'),
//                 ],
//               ),
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   Icon(Icons.phone),
//                   SizedBox(width: 10),
//                   Text('01764413706'),
//                 ],
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';

void main() {
  runApp(StorytellingApp());
}

class StorytellingApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Interactive Storytelling App',
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Story Library'),
      ),
      body: LibraryScreen(),
    );
  }
}

class LibraryScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        StoryCard(
          title: 'The Adventure Begins',
          author: 'John Doe',
          imageUrl: 'assets/adventure.jpg',
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => StoryDetailsScreen()),
            );
          },
        ),
        // Add more StoryCard widgets for other stories in the library.
      ],
    );
  }
}

class StoryCard extends StatelessWidget {
  final String title;
  final String author;
  final String imageUrl;
  final VoidCallback onTap;

  StoryCard({
    required this.title,
    required this.author,
    required this.imageUrl,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Card(
        child: Column(
          children: <Widget>[
            Image.asset(
              imageUrl,
              height: 200,
              fit: BoxFit.cover,
            ),
            ListTile(
              title: Text(title),
              subtitle: Text('By $author'),
            ),
          ],
        ),
      ),
    );
  }
}

class StoryDetailsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Story Details'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            // Add interactive elements such as text, images, audio, and more.
            // You may want to use packages like audioplayers, flutter_swiper, etc.
          ],
        ),
      ),
    );
  }
}