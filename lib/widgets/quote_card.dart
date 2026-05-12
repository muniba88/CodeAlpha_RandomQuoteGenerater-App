import 'dart:ui';
import 'package:flutter/material.dart';
import '../models/quote_model.dart';

class QuoteCard extends StatelessWidget {
  final Quote quote;

  const QuoteCard({super.key, required this.quote});

  //  CATEGORY ICON FUNCTION
  IconData getCategoryIcon(String category) {
    switch (category) {
      case "Motivation":
        return Icons.local_fire_department;
      case "Love":
        return Icons.favorite;
      case "Success":
        return Icons.emoji_events;
      case "Happiness":
        return Icons.sentiment_satisfied_alt;
      case "Life":
        return Icons.self_improvement;
      case "Inspiration":
        return Icons.lightbulb;
      case "Wisdom":
        return Icons.psychology;
      case "Education":
        return Icons.school;
      case "Friendship":
        return Icons.people;
      case "Time":
        return Icons.access_time;
      default:
        return Icons.category;
    }
  }

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
        child: Container(
          padding: const EdgeInsets.all(25),
          decoration: BoxDecoration(
            color: Colors.white.withOpacity(0.1),
            borderRadius: BorderRadius.circular(20),
            border: Border.all(color: Colors.white.withOpacity(0.2)),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              //  CATEGORY BADGE
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 12,
                  vertical: 6,
                ),
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.2),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(
                      getCategoryIcon(quote.category),
                      color: Colors.orange, // same fixed color
                      size: 16,
                    ),
                    const SizedBox(width: 5),
                    Text(
                      quote.category,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 15),

              //  QUOTE TEXT
              Text(
                "\"${quote.text}\"",
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                  fontStyle: FontStyle.italic,
                ),
              ),

              const SizedBox(height: 15),

              //  AUTHOR
              Align(
                alignment: Alignment.centerRight,
                child: Text(
                  "- ${quote.author}",
                  style: const TextStyle(fontSize: 16, color: Colors.white70),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
