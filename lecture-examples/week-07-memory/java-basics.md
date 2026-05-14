# Week 8: Java Basics

This file will help you get started with **Java programming** in your Codespace.

---

## How To Run Java Code

1. Go to **your repository** (not the template repo)
2. Click <b>Code → Codespaces → Create Codespace</b>
3. Wait for setup 
4. Open the terminal (e.g., ```bash```)
5. Navigate to this folder:

```bash
cd lecture-examples/week-07-memory
```

6. Compile a Java file:

```bash
javac Main.java
```

7. Run the program:

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

## Key Takeaways

- Java is **imperative and object-oriented**
- Variables store values in **memory**
- Programs run starting from `main`
- Methods allow reuse of logic
