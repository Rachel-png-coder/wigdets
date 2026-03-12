import 'package:flutter/material.dart';

void main() {
  // Entry point of the Flutter app
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
     // MaterialApp is the root widget of the app
    return const MaterialApp(
      debugShowCheckedModeBanner: false, // Removes the debug banner
      home: TwoColumnCV(), // Sets the main screen widget
    );
  }
}

class TwoColumnCV extends StatelessWidget {
  const TwoColumnCV({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Scaffold provides basic visual layout structure
      body: SingleChildScrollView(
        // Makes the page scrollable in case content overflows
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // LEFT COLUMN
              Expanded(
                // Expanded ensures the column takes up half the horizontal space
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      "Profile",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 10), // Space between title and text
                    Text("Name: Rachel Toronga"),
                    Text("Mobile Developer"),

                    SizedBox(height: 20),
                    Divider(thickness: 5, color: Colors.blue), // Horizontal line

                    SizedBox(height: 20),

                    Text(
                      "Skills",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text("• Flutter"),
                    Text("• Dart"),
                    Text("• Firebase"),
                  ],
                ),
              ),

               // Vertical divider between left and right columns
              const VerticalDivider(thickness: 5, width: 40),

              // RIGHT COLUMN
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      "Education",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text("BSc in Computer Science"),
                    Text("ALU"),

                    SizedBox(height: 20),
                    Divider(thickness: 5, color: Colors.blue),

                    SizedBox(height: 20),

                    Text(
                      "Experience",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text("Mobile App Developer Intern"),
                    Text("Built Flutter applications"),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
