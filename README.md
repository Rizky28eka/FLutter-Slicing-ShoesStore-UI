# 👟 SoleSphere - Premium Sneaker Shop UI

![Flutter](https://img.shields.io/badge/Flutter-%2302569B.svg?style=for-the-badge&logo=Flutter&logoColor=white)
![Dart](https://img.shields.io/badge/dart-%230175C2.svg?style=for-the-badge&logo=dart&logoColor=white)

---

### 📌 1. Project Title & Description

* **Project Name**: SoleSphere (SneakerShop UI)
* **Description**: A premium mobile e-commerce application for sneakers, offering a modern shopping experience with a highly aesthetic user interface.
* **Objective**: To provide a high-quality UI/UX demo for a sneaker shop using Flutter and Provider state management.

---

### 📌 2. Overview / Background

* **Background**: Many shopping applications suffer from confusing navigation or rigid designs.
* **Why this project was created**: To demonstrate that mobile applications can be minimalist yet remain functional and responsive.
* **Solution**: Combining smooth animations (Hero animations), intuitive navigation, and a complete shopping flow from product selection to order tracking.

---

### 📌 3. Features

* **Shopping Flow**:
    * 🔍 **Advanced Search**: Find your favorite sneakers with search suggestion features.
    * 🛒 **Cart Management**: Add/remove items with automatic total price calculation.
    * 💳 **Checkout Process**: Complete payment flow from address selection to payment method.
* **User Management**:
    * 👤 **User Profile**: Manage personal information, address book, and payment methods.
    * 📦 **Order Tracking**: Monitor real-time shipping status via a visual timeline.
* **Additional Pages**:
    * 🔔 Notifications, Settings (Dark Mode toggle), Help & Support, and Privacy Policy.

---

### 📌 4. Tech Stack

* **Framework**: Flutter (Dart)
* **State Management**: Provider (ChangeNotifier)
* **UI Components**: Google Nav Bar, Material Icons
* **Data Storage**: Local state (Mock data)

---

### 📌 5. System Architecture

* **Architecture**: Uses the **Provider** pattern to decouple business logic (Models) from the view (Pages).
* **Structure**: UI component modularization for efficient reusability.

---

### 📌 6. Installation Guide

* **Requirements**: Flutter SDK (latest version), Dart SDK.
* **Step-by-step**:
    1. **Clone Repo**:
       ```bash
       git clone https://github.com/rizky28eka/SneakerShop-UI.git
       ```
    2. **Install Dependencies**:
       ```bash
       flutter pub get
       ```
    3. **Run Project**:
       ```bash
       flutter run
       ```

---

### 📌 7. Usage

* **User Flow**:
    1. Enter via **Intro Page**.
    2. Explore products on **Shop Page** or use **Search**.
    3. View product details and add to **Cart**.
    4. Go to **Cart** to perform **Checkout**.
    5. Monitor orders in **Order History** and **Order Tracking**.

---

### 📌 8. Folder Structure

```text
lib/
├── components/       # Reusable UI widgets (ShoeTile, CartItem, etc.)
├── models/           # Data models (Shoe) and state logic (Cart Provider)
├── pages/            # 20+ Main application pages (Shop, Search, Checkout, etc.)
└── images/           # Product asset images
```

---

### 📌 9. Roadmap / Future Development

* [ ] Backend Integration (Firebase / Supabase)
* [ ] Real Authentication System (Login/Register)
* [ ] Push Notifications for order status updates
* [ ] Real Payment Gateway integration (Stripe/Midtrans)

---

### 📌 10. License

This project is licensed under the **MIT License**.

---

### 📌 11. Author / Credits

* **Rizky Eka** - *Lead Developer*
* **Contact**: [GitHub](https://github.com/rizky28eka)

---

🔥 **Pro Tip**: This application runs best on an iOS Simulator or Android Emulator with high graphics performance to showcase the smooth animations.
