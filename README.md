#  Diana - Gemini AI Chat Assistant

**Diana** is an elegant Gemini-powered AI chat assistant crafted using Flutter. Designed for both **Flutter Web** and **Android**, it offers real-time Gemini API-based replies, animated typing indicators, smooth UI transitions, and expressive Text-to-Speech support using native voices.

---

## 🚀 Features

- 💬 **AI Chat** – Interacts using Google Gemini (Flash 2.0) API.
- 🗣️ **TTS (Text-to-Speech)** – Realistic voice playback with female voice prioritization.
- 🎨 **UI/UX Polished** – Dark-themed modern layout with glowing logo and intro screen.
- 🎞️ **Typing Animation** – Dots loader simulating AI response thinking.
- 📋 **Clipboard Copy** – Easily copy bot replies.
- 🔊 **Speak Button Animation** – Speak icon animates while reading.
- 🧠 **Stop Responding** – Cancel ongoing API call gracefully.
- 📱 **Android APK Ready** – Build works natively on physical Android devices.
- 🌐 **Web Support** – Fully functional on Flutter Web (Chrome).

---

## 🔧 Requirements

- Flutter SDK 3.13 or later
- Dart 3.x
- Android SDK + Emulator or device (Optional)
- Google Cloud API Key with **Generative Language API** enabled

---

## 🧠 Tech Stack

- `flutter_tts` for cross-platform text-to-speech
- `http` for Gemini API communication
- `flutter/material.dart` for UI
- `AnimationController`, `Tween`, `ScaleTransition` for visuals
- Gemini 2.0 Flash Model endpoint via POST

---

## 🔐 Setup Instructions

1. **Clone the project**:
   ```bash
   git clone https://github.com/yourusername/diana-chat-ai.git
   cd diana-chat-ai
