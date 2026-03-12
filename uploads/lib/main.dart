import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: TwoColumnCV(),
    );
  }
}

class TwoColumnCV extends StatelessWidget {
  const TwoColumnCV({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // LEFT COLUMN
              Expanded(
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
                    SizedBox(height: 10),
                    Text("Name: Rachel Toronga"),
                    Text("Mobile Developer"),

                    SizedBox(height: 20),
                    Divider(thickness: 5, color: Colors.blue),

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
