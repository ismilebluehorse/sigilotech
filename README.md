
# 💰 Finley Spending App

A beautiful, modern, and responsive Flutter application for visualizing spending across various categories. Built using MVC architecture and powered by GetX for efficient state management and routing.

---

## 🧱 Project Structure

This app follows the **MVC (Model-View-Controller)** pattern:

lib/
├── controller/ # Business logic with GetX Controllers
├── model/ # Data models (SpendingCategory, etc.)
├── view/ # UI widgets and screens
│ ├── pages/ # Screens (e.g., SpendingScreen, SplashScreen)
│ ├── widgets/ # Reusable components (AppBar, BottomBar, etc.)
│ └── Coordinates/ # Custom Routing and routes etc.
│ 
├── utils/ # Helper functions (icons, formatters)
└── main.dart # Entry point



---

## 🧪 Features

✅ Responsive UI (mobile & tablet)  
✅ Dynamic category grid with animated progress bars  
✅ Categorized spend tracking (under/over/threshold)  
✅ Custom splash screen  
✅ Custom top & bottom navigation bars  
✅ MVC architecture for scalable codebase  
✅ Built-in route management with GetX

---

## 📦 Dependencies

| Package      | Purpose                          |
|--------------|----------------------------------|
| `get`        | State management & routing       |
| `flutter`    | Core SDK                         |

---

## 🚀 Getting Started

### 1. Clone the repository

```bash
git clone https://github.com/ismilebluehorse/sigilotech
cd sigilotech


## For Run
- flutter pub get
- flutter run



## For build apk
- flutter build apk --split-per-abi --no-tree-shake-icons



## 📥 Download APK

👉 [**Download Latest APK**](https://drive.google.com/file/d/1XmTtOv5ljY9xqdI_jhhxLkkFq7JX-PDv/view?usp=sharing)
