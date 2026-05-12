import 'dart:math';
import 'package:flutter/material.dart';
import '../date/quote_data.dart';
import '../models/quote_model.dart';
import '../widgets/catagory_dialog.dart';
import '../widgets/quote_card.dart';
import '../widgets/new_quote_button.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  Quote? currentQuote;
  String? selectedCategory;

  late AnimationController _controller;
  late Animation<double> _animation;

  List<String> categories = [
    "Motivation",
    "Love",
    "Success",
    "Happiness",
    "Life",
    "Inspiration",
    "Wisdom",
    "Education",
    "Friendship",
    "Time",
  ];

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 500),
    );

    _animation = CurvedAnimation(parent: _controller, curve: Curves.easeIn);

    getRandomQuote();
  }

  void getRandomQuote() {
    final random = Random();

    List<Quote> filteredQuotes;

    if (selectedCategory == null) {
      filteredQuotes = quotes;
    } else {
      filteredQuotes = quotes
          .where((q) => q.category == selectedCategory)
          .toList();
    }

    setState(() {
      currentQuote = filteredQuotes[random.nextInt(filteredQuotes.length)];
    });

    _controller.forward(from: 0);
  }

  void openCategoryDialog() {
    showDialog(
      context: context,
      builder: (_) => CategoryDialog(
        categories: categories,
        onSelected: (category) {
          setState(() {
            selectedCategory = category;
          });
          getRandomQuote();
        },
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Random Quotes Generator"),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,

        //  CATAGORY BUTTON
        leading: IconButton(
          icon: const Icon(Icons.grid_view_rounded),
          onPressed: openCategoryDialog,
        ),
      ),
      extendBodyBehindAppBar: true,

      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xFF141E30), Color(0xFF243B55)],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                if (currentQuote != null)
                  FadeTransition(
                    opacity: _animation,
                    child: ScaleTransition(
                      scale: _animation,
                      child: QuoteCard(quote: currentQuote!),
                    ),
                  ),

                const SizedBox(height: 40),

                NewQuoteButton(onPressed: getRandomQuote),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
