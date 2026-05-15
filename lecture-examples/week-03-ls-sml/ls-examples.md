# Week 3: Programming Language Implementation & SML

This file contains examples and explanations to help you understand how programming languages are executed behind the scenes.

When you write code in an IDE, a sequence of steps transforms your program into something the computer can execute.

---

## Classical Sequence (C, C++, Fortran)

```
                                                                                               Library Code
                                                                                                     ↓
----------                  ----------                               ----------                  ----------                ----------
| Editor | → Source File → | Compiler | → Assembly Language File → | Assembler | → Object Code → | Linker | → Executable → | Loader |
----------                  ----------                               ----------                  ----------                ----------
```

- **Editor** → where you write code  
- **Compiler** → translates high-level code to low-level code  
- **Assembler** → converts assembly to machine code  
- **Linker** → combines object files and libraries  
- **Loader** → loads program into memory  

---

## Alternative (Java, C#)

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

## Alternative (Lisp)

```
----------                    ---------- 
| Editor | → Source File → | Interpreter |
----------                    ---------- 
```

- No compilation step
- Code is executed directly

---

## Compiler vs Interpreter

**Compiler**
- Translates entire program before execution
- Produces efficient code
- Runs faster after compilation

**Interpreter**
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

**Syntax Analysis**
- Checks structure (grammar)
- Builds parse trees

**Semantic Analysis**
- Checks meaning (types, variables, etc.)

**Optimization**
- Improves performance

**Code Generation**
- Produces machine-level code

---

## Compilation Example

Consider the following assembly language:

```
load address,reg
add reg,reg,reg
sub reg,reg,reg
mul reg,reg,reg
store reg,address
```

- `address` is name of a static variable (whose actual address filled in by loader)
- A `reg` is name of an integer register (special extra-fast memory location inside processor)
- `r1`, `r2`, `r3` are three integer registers
- `load` loads integer from the given memory address into given register
- `add` adds second register to first register and places result in third register
- `sub` subtracts second register from first register and places the result in third register
- `mul` multiplies the register by second register and places result in third register
- `store` stores integer from the given register at given memory address

Translate `3*2+5`:

```
load 3,r1
load 2,r2
mul r1,r2,r1
load 5,r2
add r1,r2,r1
```

Translate `result := offset + (width * n)`:

```
load width,r1
load n,r2
mul r1,r2,r1
load offset,r2
add r2,r1,r1
store r1,result
```

---

### Try It Yourself

Translate:

```
net := gross - costs
```

Translate:

```
volume := (length * width) * height
```

Ask Yourself:
- What order should operations happen?
- Which registers will you use?

---

## Takeaways

- Programs go through multiple stages before execution
- Different languages use different execution models
- Syntax and semantics are both critical in translation
