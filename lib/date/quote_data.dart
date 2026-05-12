import '../models/quote_model.dart';

List<Quote> quotes = [
  // Motivation
  Quote(
    text: "Push yourself, because no one else is going to do it for you.",
    author: "Rhyanna Watson",
    category: "Motivation",
  ),
  Quote(
    text: "Don’t stop when you’re tired. Stop when you’re done.",
    author: "Marilyn Monroe",
    category: "Motivation",
  ),
  Quote(
    text: "Great things never come from comfort zones.",
    author: "Neil Strauss",
    category: "Motivation",
  ),
  Quote(
    text: "Dream it. Wish it. Do it.",
    author: "K. Quinzel, Alexandra Aniston",
    category: "Motivation",
  ),
  Quote(
    text: "Stay hungry, stay foolish.",
    author: "Steve Jobs",
    category: "Motivation",
  ),

  // Love
  Quote(text: "Love conquers all.", author: "Virgil", category: "Love"),
  Quote(
    text: "Where there is love there is life.",
    author: "Mahatma Gandhi",
    category: "Love",
  ),
  Quote(
    text: "Love is composed of a single soul inhabiting two bodies.",
    author: "Aristotle",
    category: "Love",
  ),
  Quote(
    text: "We accept the love we think we deserve.",
    author: "Stephen Chbosky",
    category: "Love",
  ),
  Quote(
    text: "Love all, trust a few.",
    author: "William Shakespeare",
    category: "Love",
  ),

  // Success
  Quote(
    text: "Success is not final, failure is not fatal.",
    author: "Winston Churchill",
    category: "Success",
  ),
  Quote(
    text: "Don’t be afraid to give up the good to go for the great.",
    author: "John D. Rockefeller",
    category: "Success",
  ),
  Quote(
    text:
        "Success usually comes to those who are too busy to be looking for it.",
    author: "Henry David Thoreau",
    category: "Success",
  ),
  Quote(
    text: "Opportunities don’t happen, you create them.",
    author: "Chris Grosser",
    category: "Success",
  ),
  Quote(
    text: "Try not to become a man of success, but a man of value.",
    author: "Albert Einstein",
    category: "Success",
  ),

  // Life
  Quote(
    text: "Life is what happens when you’re busy making other plans.",
    author: "John Lennon",
    category: "Life",
  ),
  Quote(
    text: "Get busy living or get busy dying.",
    author: "Stephen King",
    category: "Life",
  ),
  Quote(
    text: "In the end, we only regret the chances we didn’t take.",
    author: "Lewis Carroll",
    category: "Life",
  ),
  Quote(
    text: "Life is short, and it is up to you to make it sweet.",
    author: "Sarah Louise Delany",
    category: "Life",
  ),
  Quote(
    text: "Turn your wounds into wisdom.",
    author: "Oprah Winfrey",
    category: "Life",
  ),

  // Happiness
  Quote(
    text: "Happiness depends upon ourselves.",
    author: "Aristotle",
    category: "Happiness",
  ),
  Quote(
    text: "Happiness is not by chance, but by choice.",
    author: "Jim Rohn",
    category: "Happiness",
  ),
  Quote(
    text:
        "For every minute you are angry, you lose sixty seconds of happiness.",
    author: "Ralph Waldo Emerson",
    category: "Happiness",
  ),
  Quote(
    text: "Be happy for this moment. This moment is your life.",
    author: "Omar Khayyam",
    category: "Happiness",
  ),
  Quote(
    text: "Happiness is a direction, not a place.",
    author: "Sydney J. Harris",
    category: "Happiness",
  ),

  // Inspiration
  Quote(
    text: "Believe you can and you're halfway there.",
    author: "Theodore Roosevelt",
    category: "Inspiration",
  ),
  Quote(
    text: "Act as if what you do makes a difference. It does.",
    author: "William James",
    category: "Inspiration",
  ),
  Quote(
    text: "Keep your face always toward the sunshine.",
    author: "Walt Whitman",
    category: "Inspiration",
  ),
  Quote(
    text: "Everything you can imagine is real.",
    author: "Pablo Picasso",
    category: "Inspiration",
  ),
  Quote(
    text: "Do what you can with what you have.",
    author: "Theodore Roosevelt",
    category: "Inspiration",
  ),

  // Wisdom
  Quote(
    text: "Knowing yourself is the beginning of all wisdom.",
    author: "Aristotle",
    category: "Wisdom",
  ),
  Quote(
    text: "Turn your wounds into wisdom.",
    author: "Oprah Winfrey",
    category: "Wisdom",
  ),
  Quote(
    text: "The only true wisdom is in knowing you know nothing.",
    author: "Socrates",
    category: "Wisdom",
  ),
  Quote(
    text: "Honesty is the first chapter in the book of wisdom.",
    author: "Thomas Jefferson",
    category: "Wisdom",
  ),
  Quote(
    text: "Wisdom begins in wonder.",
    author: "Socrates",
    category: "Wisdom",
  ),

  // Friendship
  Quote(
    text: "A real friend is one who walks in when the rest walk out.",
    author: "Walter Winchell",
    category: "Friendship",
  ),
  Quote(
    text:
        "Friendship is the only cement that will ever hold the world together.",
    author: "Woodrow Wilson",
    category: "Friendship",
  ),
  Quote(
    text:
        "True friendship comes when the silence between two people is comfortable.",
    author: "David Tyson",
    category: "Friendship",
  ),
  Quote(
    text: "Friends are the family we choose.",
    author: "Jess C. Scott",
    category: "Friendship",
  ),
  Quote(
    text: "A friend is someone who knows all about you and still loves you.",
    author: "Elbert Hubbard",
    category: "Friendship",
  ),

  // Education
  Quote(
    text:
        "Education is the most powerful weapon which you can use to change the world.",
    author: "Nelson Mandela",
    category: "Education",
  ),
  Quote(
    text: "An investment in knowledge pays the best interest.",
    author: "Benjamin Franklin",
    category: "Education",
  ),
  Quote(
    text: "The roots of education are bitter, but the fruit is sweet.",
    author: "Aristotle",
    category: "Education",
  ),
  Quote(
    text: "Education is not the filling of a pail, but the lighting of a fire.",
    author: "W.B. Yeats",
    category: "Education",
  ),
  Quote(
    text:
        "Live as if you were to die tomorrow. Learn as if you were to live forever.",
    author: "Mahatma Gandhi",
    category: "Education",
  ),

  // Time
  Quote(text: "Time is money.", author: "Benjamin Franklin", category: "Time"),
  Quote(
    text: "Lost time is never found again.",
    author: "Benjamin Franklin",
    category: "Time",
  ),
  Quote(
    text: "The two most powerful warriors are patience and time.",
    author: "Leo Tolstoy",
    category: "Time",
  ),
  Quote(
    text: "Time flies over us, but leaves its shadow behind.",
    author: "Nathaniel Hawthorne",
    category: "Time",
  ),
  Quote(
    text: "Better three hours too soon than a minute too late.",
    author: "William Shakespeare",
    category: "Time",
  ),
];
