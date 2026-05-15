# Week 7: Memory & Java

This file will help you get started with **Java programming**.

---

## How To Run Examples Using Codespaces

- Go to **your repository** (not the template repo)
- Click **Code → Codespaces → Create Codespace**
- Wait for setup (1–2 minutes first time)
- Open the terminal (`bash`)
  - ⚠️ NOT GitHub Codespace Configuration (may appear temporarily but switch to `bash`)
 
- Navigate to this folder:

```bash
cd lecture-examples/week-07-memory
```

---

### Java

Compile a Java file:

```bash
javac Main.java
```

Run the program:

```bash
java Main
```

---

## Basic Structure

Every Java program starts with a class:

```java
public class Main {
    public static void main(String[] args) {
        System.out.println("Hello, world!");
    }
}
```

- `main` is where execution begins
- `System.out.println` prints output

---

## Variables

```java
int x = 5;
double y = 3.14;
String name = "Sam";
```

Java is **statically typed**, meaning:
- every variable must have a declared type

---

## Expressions

```java
int a = 2 + 3;
int b = a * 4;
```

---

## Conditionals

```java
if (x > 0) {
    System.out.println("Positive");
} else {
    System.out.println("Not positive");
}
```

---

## Loops

```java
for (int i = 0; i < 5; i++) {
    System.out.println(i);
}
```

---

## Methods (Functions)

```java
public static int add(int a, int b) {
    return a + b;
}
```

Call it:

```java
int result = add(2, 3);
```

---

## Takeaways

- Java is **imperative and object-oriented**
- Variables store values in **memory**
- Programs run starting from `main`
- Methods allow reuse of logic
