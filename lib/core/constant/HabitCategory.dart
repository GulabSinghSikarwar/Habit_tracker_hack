// cetg*10+subCetgory
//  eg 2*10+5=25
import 'package:flutter/foundation.dart';

enum Categories {
  none,
  Trending_Habit,
  Staying_at_home,
  Preventive_Care,
  Must_have_habits,
  Morning_routine,
  Nighttime_rituals,
  Healthy_body
}

var CategoryMap = {
  Categories.Trending_Habit: {
    "title": "Trending Habits",
    "detail": "Take a step in the right direction"
  },
  Categories.Staying_at_home: {
    "title": "Staying at home",
    "detail": "Use this time to do something new"
  },
  Categories.Preventive_Care: {
    "title": "Preventive Care",
    "detail": "Protect yourself and others"
  },
  Categories.Must_have_habits: {
    "title": "Must have habits",
    "detail": "Small effort ,big results"
  },
  Categories.Morning_routine: {
    "title": "Morning routine",
    "detail": "Get started on a productive day"
  },
  Categories.Nighttime_rituals: {
    "title": "Nighttime rituals",
    "detail": "Sleep tight for better health"
  },
  Categories.Healthy_body: {
    "title": "Healthy body",
    "detail": "The foundation of yours well-being"
  },
};

var subCategor = {
  Categories.Trending_Habit: [
    {
      "subCategoryId": "100",
      "title": "Study online",
      "detail": "A world of new discoveries awaits",
    },
    {
      "subCategoryId": "101",
      "title": "Learn a new language",
      "detail": "Think of all th thing that make you happy. Dream big !",
    },
    {
      "subCategoryId": "102",
      "title": "Read",
      "detail": "Crack a book and broaden the mind",
    },
    {
      "subCategoryId": "103",
      "title": "Drink Water",
      "detail": "Stay hydrated and flush out tokins",
    },
    {
      "subCategoryId": "104",
      "title": "Morning exercise",
      "detail": "Charge your batteries",
    },
    {
      "subCategoryId": "105",
      "title": "Wake up early",
      "detail": "Add some extra hours to your day",
    },
  ],
  Categories.Staying_at_home: [
    {
      "subCategoryId": "106",
      "title": "Host movie marathon",
      "detail": "may the Force be with you",
    },
    {
      "subCategoryId": "107",
      "title": "Play board game",
      "detail": "Turn off the TV and challenge everyone to play",
    },
    {
      "subCategoryId": "108",
      "title": "Work out",
      "detail": "Turn on Your favourite music and get your blood pumping",
    },
  ],
  Categories.Preventive_Care: [
    {
      "subCategoryId": "1009",
      "title": "Study online",
      "detail": "A world of new discoveries awaits",
    },
    {
      "subCategoryId": "109",
      "title": "Wash hands regularly",
      "detail": "Think of all th thing that make you happy. Dream big !",
    },
    {
      "subCategoryId": "110",
      "title": "Avoid touching your Face",
      "detail": "Stop illness before it starts",
    },
    {
      "subCategoryId": "111",
      "title": "Use a tissue when coughing",
      "detail": "Cover your to prevent spreading infection",
    },
    {
      "subCategoryId": "112",
      "title": "Take temperature daily",
      "detail": "keeptrack of daily temperature",
    },
  ],
  Categories.Must_have_habits: [
    {
      "subCategoryId": "113",
      "title": "Make time for myself",
      "detail": "Stop the daily rush and tune into you",
    },
    {
      "subCategoryId": "114",
      "title": "Set goals",
      "detail": "Stay motivated and focused",
    },
    {
      "subCategoryId": "115",
      "title": "Sleep for 8 hours",
      "detail": "Your body will be grateful",
    },
    {
      "subCategoryId": "116",
      "title": "Spend time with family",
      "detail": "Engage and stay connected",
    },
  ],
  Categories.Morning_routine: [
    {
      "subCategoryId": "117",
      "title": "Practice affirmations",
      "detail": "Positive thinking can transform your entire life",
    },
    {
      "subCategoryId": "118",
      "title": "Meditate",
      "detail": "Feel the zen",
    },
    {
      "subCategoryId": "119",
      "title": "Brush & floss",
      "detail": "Keep teeth and gums healthy",
    },
    {
      "subCategoryId": "120",
      "title": "Eat healthy meal",
      "detail": "Increase energy with a balanced diet",
    },
    {
      "subCategoryId": "121",
      "title": "Practice Visualization",
      "detail": "use the power of your subconcious mind",
    },
  ],
  Categories.Nighttime_rituals: [
    {
      "subCategoryId": "122",
      "title": "Reflect on the day",
      "detail": "Gain perspective and set priorities",
    },
    {
      "subCategoryId": "123",
      "title": "Block distractions",
      "detail": "Turn off gadgets and devices",
    },
    {
      "subCategoryId": "124",
      "title": "Go to sleep by 11pm",
      "detail": "Feel refreshed in the morning",
    },
    {
      "subCategoryId": "125",
      "title": "Write in my journal",
      "detail": "Look back at your day and reflect ",
    },
    {
      "subCategoryId": "126",
      "title": "Limit caffeine",
      "detail": "Try caffeine-free instead",
    },
  ],
  Categories.Healthy_body: [
    {
      "subCategoryId": "127",
      "title": "Limit fried Food",
      "detail": "Opt for baked rather than fried",
    },
    {
      "subCategoryId": "128",
      "title": "Limit sugar",
      "detail": "Replace candy with fruit",
    },
    {
      "subCategoryId": "129",
      "title": "Take vitamins ",
      "detail": "Get an immunesystem boost",
    },
  ],
};

List<Map> allHabitsMap = [
  {
    "subCategoryId": "127",
    "title": "Limit fried Food",
    "detail": "Opt for baked rather than fried",
  },
  {
    "subCategoryId": "128",
    "title": "Limit sugar",
    "detail": "Replace candy with fruit",
  },
  {
    "subCategoryId": "129",
    "title": "Take vitamins ",
    "detail": "Get an immunesystem boost",
  },
  {
    "subCategoryId": "122",
    "title": "Reflect on the day",
    "detail": "Gain perspective and set priorities",
  },
  {
    "subCategoryId": "123",
    "title": "Block distractions",
    "detail": "Turn off gadgets and devices",
  },
  {
    "subCategoryId": "124",
    "title": "Go to sleep by 11pm",
    "detail": "Feel refreshed in the morning",
  },
  {
    "subCategoryId": "125",
    "title": "Write in my journal",
    "detail": "Look back at your day and reflect ",
  },
  {
    "subCategoryId": "126",
    "title": "Limit caffeine",
    "detail": "Try caffeine-free instead",
  },
  {
    "subCategoryId": "117",
    "title": "Practice affirmations",
    "detail": "Positive thinking can transform your entire life",
  },
  {
    "subCategoryId": "118",
    "title": "Meditate",
    "detail": "Feel the zen",
  },
  {
    "subCategoryId": "119",
    "title": "Brush & floss",
    "detail": "Keep teeth and gums healthy",
  },
  {
    "subCategoryId": "120",
    "title": "Eat healthy meal",
    "detail": "Increase energy with a balanced diet",
  },
  {
    "subCategoryId": "121",
    "title": "Practice Visualization",
    "detail": "use the power of your subconcious mind",
  },
  {
    "subCategoryId": "113",
    "title": "Make time for myself",
    "detail": "Stop the daily rush and tune into you",
  },
  {
    "subCategoryId": "114",
    "title": "Set goals",
    "detail": "Stay motivated and focused",
  },
  {
    "subCategoryId": "115",
    "title": "Sleep for 8 hours",
    "detail": "Your body will be grateful",
  },
  {
    "subCategoryId": "116",
    "title": "Spend time with family",
    "detail": "Engage and stay connected",
  },
  {
    "subCategoryId": "1009",
    "title": "Study online",
    "detail": "A world of new discoveries awaits",
  },
  {
    "subCategoryId": "109",
    "title": "Wash hands regularly",
    "detail": "Think of all th thing that make you happy. Dream big !",
  },
  {
    "subCategoryId": "110",
    "title": "Avoid touching your Face",
    "detail": "Stop illness before it starts",
  },
  {
    "subCategoryId": "111",
    "title": "Use a tissue when coughing",
    "detail": "Cover your to prevent spreading infection",
  },
  {
    "subCategoryId": "112",
    "title": "Take temperature daily",
    "detail": "keeptrack of daily temperature",
  },
  {
    "subCategoryId": "106",
    "title": "Host movie marathon",
    "detail": "may the Force be with you",
  },
  {
    "subCategoryId": "107",
    "title": "Play board game",
    "detail": "Turn off the TV and challenge everyone to play",
  },
  {
    "subCategoryId": "108",
    "title": "Work out",
    "detail": "Turn on Your favourite music and get your blood pumping",
  },
  {
    "subCategoryId": "100",
    "title": "Study online",
    "detail": "A world of new discoveries awaits",
  },
  {
    "subCategoryId": "101",
    "title": "Learn a new language",
    "detail": "Think of all th thing that make you happy. Dream big !",
  },
  {
    "subCategoryId": "102",
    "title": "Read",
    "detail": "Crack a book and broaden the mind",
  },
  {
    "subCategoryId": "103",
    "title": "Drink Water",
    "detail": "Stay hydrated and flush out tokins",
  },
  {
    "subCategoryId": "104",
    "title": "Morning exercise",
    "detail": "Charge your batteries",
  },
  {
    "subCategoryId": "105",
    "title": "Wake up early",
    "detail": "Add some extra hours to your day",
  },
];
