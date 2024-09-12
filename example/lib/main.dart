import 'package:sciconix/sciconix.dart';

import 'package:flutter/material.dart';
import 'dart:math' as math;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<SciconixModel> icons = [
    // Add more icons as needed
  ];
  late TextEditingController _searchController;

  @override
  void initState() {
    super.initState();
    _searchController = TextEditingController();
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  List<SciconixModel> get _filteredIcons {
    final query = _searchController.text.toLowerCase();
    if (query.isEmpty) return icons;
    return icons
        .where((icon) =>
            icon.code.toLowerCase().contains(query) ||
            icon.id.toLowerCase().contains(query))
        .toList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.primary,
        title: AnimatedAtomWidget(color: Colors.lightBlue, size: 40),
        actions: [
          Container(
            width: 200, // Adjust this value as needed
            padding: EdgeInsets.symmetric(vertical: 8),
            child: TextField(
              controller: _searchController,
              decoration: InputDecoration(
                hintText: 'Search icons...',
                fillColor: Colors.white,
                filled: true,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                  borderSide: BorderSide.none,
                ),
                contentPadding:
                    EdgeInsets.symmetric(horizontal: 16, vertical: 0),
                suffixIcon: Icon(Icons.search),
              ),
              onChanged: (_) => setState(() {}),
            ),
          ),
          SizedBox(width: 16), // Add some spacing
        ],
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(50),
          child: Container(
            color: Theme.of(context).colorScheme.primary,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ElevatedButton(
                    onPressed: () {},
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                          'flutter pub add sciconix',
                          style: TextStyle(
                              color: Theme.of(context)
                                  .colorScheme
                                  .onPrimaryContainer),
                        ),
                        SizedBox(width: 10),
                        Icon(
                          Icons.copy,
                          color:
                              Theme.of(context).colorScheme.onPrimaryContainer,
                        ),
                      ],
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                          'import "package:sciconix/sciconix.dart"',
                          style: TextStyle(
                              color: Theme.of(context)
                                  .colorScheme
                                  .onPrimaryContainer),
                        ),
                        SizedBox(width: 10),
                        Icon(
                          Icons.copy,
                          color:
                              Theme.of(context).colorScheme.onPrimaryContainer,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
      body: GridView.builder(
        padding: EdgeInsets.all(16),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          crossAxisSpacing: 16,
          mainAxisSpacing: 16,
        ),
        itemCount: _filteredIcons.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {},
            child: Card(
              elevation: 4,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomPaint(
                    painter: _filteredIcons[index].painter,
                    size: Size(60, 60),
                  ),
                  SizedBox(height: 8),
                  Text(
                    _filteredIcons[index].code,
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

class AnimatedAtomWidget extends StatefulWidget {
  final Color color;
  final double size;

  const AnimatedAtomWidget({Key? key, required this.color, required this.size})
      : super(key: key);

  @override
  _AnimatedAtomWidgetState createState() => _AnimatedAtomWidgetState();
}

class _AnimatedAtomWidgetState extends State<AnimatedAtomWidget>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 5),
    )..repeat();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _controller,
      builder: (_, __) {
        return CustomPaint(
          size: Size(widget.size, widget.size),
          painter: AtomIconPainter(
              color: widget.color, angle: _controller.value * 2 * math.pi),
        );
      },
    );
  }
}

class AtomIconPainter extends CustomPainter {
  final Color color;
  final double angle;

  AtomIconPainter({required this.color, required this.angle});

  @override
  void paint(Canvas canvas, Size size) {
    final centerX = size.width / 2;
    final centerY = size.height / 2;
    final radius = size.width * 0.4;

    final nucleusPaint = Paint()
      ..color = color.withOpacity(0.5)
      ..style = PaintingStyle.fill;

    final electronPaint = Paint()
      ..color = color.withOpacity(0.25)
      ..style = PaintingStyle.fill;

    // Draw nucleus
    canvas.drawCircle(Offset(centerX, centerY), radius * 0.25, nucleusPaint);

    // Draw electrons
    for (int i = 0; i < 12; i++) {
      final electronAngle = angle + 2 * math.pi * i / 12;
      final x = centerX + radius * math.cos(electronAngle);
      final y = centerY + radius * math.sin(electronAngle);
      canvas.drawCircle(Offset(x, y), radius * 0.05, electronPaint);
    }

    // Draw electron trails (optional)
    final trailPaint = Paint()
      ..color = color.withOpacity(0.1)
      ..style = PaintingStyle.stroke
      ..strokeWidth = 2;

    for (int i = 0; i < 3; i++) {
      final orbitAngle = 2 * math.pi * i / 3;
      canvas.drawCircle(Offset(centerX, centerY), radius, trailPaint);
      canvas.save();
      canvas.translate(centerX, centerY);
      canvas.rotate(orbitAngle);
      canvas.translate(-centerX, -centerY);
      canvas.drawOval(
        Rect.fromCenter(
            center: Offset(centerX, centerY),
            width: size.width * 0.8,
            height: size.height * 0.5),
        trailPaint,
      );
      canvas.restore();
    }
  }

  @override
  bool shouldRepaint(AtomIconPainter oldDelegate) =>
      color != oldDelegate.color || angle != oldDelegate.angle;
}
