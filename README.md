# 🛍️ Otex — Flutter E-Commerce App (Preview)

[![Flutter](https://img.shields.io/badge/Flutter-Framework-blue?logo=flutter)](https://flutter.dev)
[![Dart](https://img.shields.io/badge/Dart-Language-0175C2?logo=dart)](https://dart.dev)
[![Build](https://github.com/moazsalem/moazsalem-flutter-task/actions/workflows/main.yml/badge.svg)](https://github.com/moazsalem/moazsalem-flutter-task/actions)
[![GitHub stars](https://img.shields.io/github/stars/moazsalem/moazsalem-flutter-task?style=social)](https://github.com/moazsalem/moazsalem-flutter-task/stargazers)

---

## 📄 Overview

**Otex** is a modern **Flutter e-commerce application** showcasing a **clean architecture** with a modular structure.  
It demonstrates key e-commerce features like deal browsing, advanced filtering, and subscription management.  
This version was built as a **preview submission for the IT Legend application task**.

---

## ✨ Features

- 🏷️ **Home Screen:** Displays active deals with title, price, discount, and seller details.  
- 🗂️ **Catalog Browsing:** Explore ads across categories and subcategories.  
- 🔍 **Filtering:** Apply filters by category, price, or payment method (UI implementation).  
- 💳 **Subscription Plans:** Compare multiple plans with perks and pricing tiers.  
- 🌐 **Localization:** Supports **English** and **Arabic** out of the box.  
- 💾 **Local Database:** Uses **SQLite (sqflite)** seeded from JSON files for offline browsing.  

---


## 📱 App Preview

| 🏠 Home Screen | 💳 Subscription Plans | 🎯 Filter Screen  |
|----------------|----------------|-----------------------|
| <img width="300" alt="Home1" src="https://github.com/user-attachments/assets/1e10011b-9c74-42bc-b0c2-5f205ebc5a0e" /> | <img width="300" alt="Subscription1" src="https://github.com/user-attachments/assets/143dca33-5d94-4d0a-9a71-24fc6a5b9b83" /> | <img width="300" alt="Filter1" src="https://github.com/user-attachments/assets/075bdb6a-0506-465f-a752-c12d6c8bf0c8" /> |
| <img width="300"  alt="Home2" src="https://github.com/user-attachments/assets/993690aa-d139-4134-aaff-72c4e9e2198e" /> | <img width="300" alt="Subscription2" src="https://github.com/user-attachments/assets/8f0dfe72-8049-4b0a-89e7-2b5a31610483" /> | <img width="300" alt="Filter2" src="https://github.com/user-attachments/assets/db41cd67-2bc0-4c4f-a27c-da4c7815aa06" /> |

---

## 🎨 Design Reference

The **Otex app** is built based on the official **Figma design**, implementing nearly **pixel-perfect alignment**, **adaptive layouts**, and **fully responsive UI** across screen sizes.

📁 **Figma Design:** [View on Figma](https://www.figma.com/design/wmYbwHRjj9MFDYcZ6QANvd/Otex-App-Test?node-id=0-1&p=f&t=GkQnttFaWkTqUhRZ-0)  

> 🧠 The UI adapts seamlessly between mobile, tablet, and large-screen devices using responsive units powered by **flutter_screenutil** and flexible layout components.

---

## 🏗️ Project Structure

Feature-first architecture for maintainability and scalability:

<details>
  <summary>📂 Project Structure (click to expand)</summary>

```plaintext
      lib/
      ├── core/
      │   ├── db/
      │   ├── dependency_injection/
      │   ├── error/
      │   ├── navigation/
      │   ├── shared_widgets/
      │   ├── theme/
      │   └── utils/
      ├── features/
      │   ├── ads/
      │   │   ├── data/
      │   │   ├── domain/
      │   │   └── presentation/
      │   ├── catalog/
      │   │   ├── data/
      │   │   ├── domain/
      │   │   └── presentation/
      │   ├── main/
      │   │   └── presentation/
      │   └── user/
      │       ├── data/
      │       ├── domain/
      │       └── presentation/
      ├── l10n/
      ├── app.dart
      └── main.dart
 ```
</details>

---

## 📦 Dependencies

| Purpose | Packages |
|----------|-----------|
| 🧠 **State Management** | [flutter_bloc](https://pub.dev/packages/flutter_bloc) |
| 🧭 **Routing** | [go_router](https://pub.dev/packages/go_router) |
| ⚙️ **Dependency Injection** | [get_it](https://pub.dev/packages/get_it), [injectable](https://pub.dev/packages/injectable) |
| 🗄️ **Database** | [sqflite](https://pub.dev/packages/sqflite) |
| 🧮 **Value Equality** | [equatable](https://pub.dev/packages/equatable) |
| 🧰 **Code Generation** | [freezed](https://pub.dev/packages/freezed), [json_serializable](https://pub.dev/packages/json_serializable), [injectable](https://pub.dev/packages/injectable) |
| 🧩 **Functional Programming** | [fpdart](https://pub.dev/packages/fpdart) |
| 🎨 **UI & Scaling** | [flutter_screenutil](https://pub.dev/packages/flutter_screenutil), [flutter_svg](https://pub.dev/packages/flutter_svg) |
| 🌍 **Localization** | [intl](https://pub.dev/packages/intl) |

---

## 🚀 Getting Started

1. **Install Flutter**  
   → [Official Installation Guide](https://docs.flutter.dev/get-started/install)

2. **Clone the Repository**
   ```bash
   git clone https://github.com/moazsalem/moazsalem-flutter-task.git
   cd moazsalem-flutter-task
   ```
3. **Install Dependencies**

   ```bash
   flutter pub get
   ```

4. **Run Code Generation** (for `freezed`, `injectable`, `json_serializable`)

   ```bash
   flutter pub run build_runner build --delete-conflicting-outputs
   ```

5. **Run the App**

   ```bash
   flutter run
   ```

---

## 🔄 CI/CD

This project uses **GitHub Actions** for automated **Continuous Integration and Deployment**.

Each tag pushed to `main` triggers:

* ✅ Build and test jobs
* 📦 Android APK build
* 🚀 Automatic GitHub release

Workflow location:
`.github/workflows/main.yml`

---

## 🤝 Contributing

Contributions, issues, and feature requests are welcome!
Feel free to check the [issues page](https://github.com/moazsalem/moazsalem-flutter-task/issues).

> Please follow [Conventional Commits](https://www.conventionalcommits.org/en/v1.0.0/) and ensure your PR includes tests when relevant.

---
⭐ If you like this project, don’t forget to **star the repo** to show support!
