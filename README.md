# String Modifier CLI Tool

A simple and flexible command-line tool written in Swift that helps you **reformat lists of strings** into different styles.
Whether you need plain line-separated text, quoted items, or automatically numbered/alphabetized lists, this tool saves time by generating them instantly.

---

## ✨ Features

* Convert comma-separated strings into different formats
* Support for plain lists, quoted lists (`" "` or `' '`), and enumerated lists (numbered or alphabetized)
* Multiple formatting styles (14 in total)
* Easy to install and run from terminal

---

## 🔧 Installation

### Clone and Build

Select directory where you want to clone and run following commands.

```bash
git clone https://github.com/Prem-Agravat-iOS/StringModifierCLI.git
cd string-modifier
swift build -c release

For Mac and Linux user
cp .build/release/StringModifier /usr/local/bin

For Windows user
copy the full path of directory which contains .exe file, for example: D:\StringModifierCLI\StringModifier\.build\release
Add this to environment variable
Close the terminal
```

Now you can run `StringModifier` from anywhere.

---

## 🚀 Usage

Run the tool in your terminal:

```bash
StringModifier 'comma-separated string' --option 'option you want to format'
```

---

## 📚 Format Options

Here are the available formats:

1. **Line-separated**

   ```
   Climate Change
   Greenwashing
   TWA(Truth without Apology)
   Mission 2030
   ```

2. **Double-quoted, line-separated**

   ```
   "Climate Change"
   "Greenwashing"
   "TWA(Truth without Apology)"
   "Mission 2030"
   ```

3. **Single-quoted, line-separated**

   ```
   'Climate Change'
   'Greenwashing'
   'TWA(Truth without Apology)'
   'Mission 2030'
   ```

4. **Numbered list**

   ```
   1.Climate Change
   2.Greenwashing
   3.TWA(Truth without Apology)
   4.Mission 2030
   ```

5. **Numbered with double quotes**

   ```
   1."Climate Change"
   2."Greenwashing"
   3."TWA(Truth without Apology)"
   4."Mission 2030"
   ```

6. **Numbered with single quotes**

   ```
   1.'Climate Change'
   2.'Greenwashing'
   3.'TWA(Truth without Apology)'
   4.'Mission 2030'
   ```

7. **Alphabetized (A, B, C...)**

   ```
   A.Climate Change
   B.Greenwashing
   C.TWA(Truth without Apology)
   D.Mission 2030
   ```

8. **Alphabetized with double quotes**

   ```
   A."Climate Change"
   B."Greenwashing"
   C."TWA(Truth without Apology)"
   D."Mission 2030"
   ```

9. **Alphabetized with single quotes**

   ```
   A.'Climate Change'
   B.'Greenwashing'
   C.'TWA(Truth without Apology)'
   D.'Mission 2030'
   ```

10. **Alphabetized (a, b, c...)**

  ```
  a.Climate Change
  b.Greenwashing
  c.TWA(Truth without Apology)
  d.Mission 2030
  ```

11.  **Alphabetized lowercase with double quotes**

  ```
  a."Climate Change"
  b."Greenwashing"
  c."TWA(Truth without Apology)"
  d."Mission 2030"
  ```

12.  **Alphabetized lowercase with single quotes**

  ```
  a.'Climate Change'
  b.'Greenwashing'
  c.'TWA(Truth without Apology)'
  d.'Mission 2030'
  ```

13.  **Inline, double-quoted**

  ```
  "Climate Change", "Greenwashing", "TWA(Truth without Apology)", "Mission 2030"
  ```

14.  **Inline, single-quoted**

  ```
  'Climate Change', 'Greenwashing', 'TWA(Truth without Apology)', 'Mission 2030'
  ```

---

## 📝 Example

**Input:**

```
Climate Change, Greenwashing, TWA(Truth without Apology)
```

**Choose Option 2 → Output:**

```
"Climate Change"
"Greenwashing"
"TWA(Truth without Apology)"
```

---

## 📄 License

This project is open-source under the **MIT License**.
Feel free to use, modify, and share.
