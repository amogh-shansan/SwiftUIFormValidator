# SwiftUIFormValidator

![GitHub Pages](https://github.com/amogh-shansan/SwiftUIFormValidator/actions/workflows/deploy-docs.yml/badge.svg)

A reusable, protocol-based Swift package for form validation in SwiftUI. Includes full DocC documentation and demo apps.

---

## 📦 Installation

Add the following to your Xcode project using **Swift Package Manager**:

```
https://github.com/amogh-shansan/SwiftUIFormValidator.git
```

Supports:

- iOS 15.0+
- macOS 10.15+

---

## 🚀 Features

- ✅ `ValidationRule` protocol for custom validators
- 📦 Built-in rules: `NonEmptyRule`, `EmailFormatRule`, `MinLengthRule`, `MatchFieldRule`
- 🧠 Central `FormValidator` class to manage form values & errors
- 🔁 Live validation on change or submit
- 🧪 Fully testable and modular

---

## 🛠 Usage

```swift
import SwiftUIFormValidator

@StateObject private var validator = FormValidator()

.onAppear {
    validator.setRules(for: "email", rules: [
        AnyValidationRule(NonEmptyRule()),
        AnyValidationRule(EmailFormatRule())
    ])
}
```

---

## 📚 Documentation

Latest docs: [https://amogh-shansan.github.io/SwiftUIFormValidator/](https://amogh-shansan.github.io/SwiftUIFormValidator/)

Published using GitHub Actions and Swift-DocC.

---

## 💻 Demo Apps

| Demo       | Description                          |
|------------|--------------------------------------|
| `DemoApp`  | Minimal login screen with validation |
| `SignupApp`| Styled signup form with error styling and live validation |

These apps are in the root folder for reference.

---

## 🛠 GitHub Pages Deployment

This repo uses a GitHub Action (`deploy-docs.yml`) to auto-publish documentation to the `gh-pages` branch on every push to `main`.

---

## 🧾 License

MIT

---

Built with ❤️ by [@amogh-shansan](https://github.com/amogh-shansan)
