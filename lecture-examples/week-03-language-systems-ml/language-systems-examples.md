# Week 3: Programming Language Implementation & SML

This file contains examples and explanations to help you understand how programming languages are executed behind the scenes.

---

## Key Idea

When you write code in an IDE, a sequence of steps transforms your program into something the computer can execute.

---

## Classical Compilation Process (C, C++, Fortran)

```
                                                                                               Library Code
                                                                                                     ↓
----------                  ----------                               ----------                  ----------                ----------
| Editor | → Source File → | Compiler | → Assembly Language File → | Assembler | → Object Code → | Linker | → Executable → | Loader |
----------                  ----------                               ----------                  ----------                ----------
```

### Components

- **Editor** → where you write code  
- **Compiler** → translates high-level code to low-level code  
- **Assembler** → converts assembly to machine code  
- **Linker** → combines object files and libraries  
- **Loader** → loads program into memory  

---

## Alternative: Java / C#

```
                                                                                                        Library Code
                                                                                                             ↓
----------                  ----------                                    ----------                     ----------
| Editor | → Source File → | Compiler | → Virtual Machine Source Code → | Assembler | → VM Object Code → | Loader |
----------                  ----------                                    ----------                     ----------
```

Key difference:
- No traditional linker
- Programs are linked at runtime inside a **virtual machine**

---

## Alternative: Interpreted Languages (e.g., Lisp)

```
----------                    ---------- 
| Editor | → Source File → | Interpreter |
----------                    ---------- 
```

- No compilation step
- Code is executed directly

---

## Compiler vs Interpreter

### Compiler
- Translates entire program before execution
- Produces efficient code
- Runs faster after compilation

### Interpreter
- Executes code line-by-line
- Easier to test and debug
- Slower execution

---

## Compiler Phases

```
   Source Program                           Parse Trees (ASTs)
        ↓                       ↓                    ↓                   ↓
    ----------              ----------           ----------          ---------- 
| Syntax Analysis | → | Semantic Analysis | → | Optimization | → | Code Generation | → Translated Program
    ----------              ----------           ----------          ----------  
```

### Syntax Analysis
- Checks structure (grammar)
- Builds parse trees

### Semantic Analysis
- Checks meaning (types, variables, etc.)

### Optimization
- Improves performance

### Code Generation
- Produces machine-level code

---

## Example: High-Level to Assembly

High-level:
```
net := gross - costs
```

Assembly:
```
load gross, r1
load costs, r2
sub r1, r2, r1
store r1, net
```

---

## Try It Yourself

Translate:

```
volume := (length * width) * height
```

Think:
- What order should operations happen?
- Which registers will you use?

---

## Takeaways

- Programs go through multiple stages before execution
- Different languages use different execution models
- Syntax and semantics are both critical in translation
