# 🖨️ Ft_Printf - 42 School Project

Welcome to **ft_printf**! 🎉 This is the second project of **Rank 1** at 42 School, where we recreate the famous C library function `printf`. This project teaches us about variadic functions, format specifiers, and how to handle different data types in C.

This implementation supports all the mandatory conversion specifiers and provides a solid foundation for understanding how printf works under the hood. 🚀

---

### 📂 Project Structure

ft_printf/
├── include/ft_printf.h    # Header file (.h)  
├── src/                   # All source files (.c)  
│   ├── ft_printf.c        # Main printf function  
│   ├── ft_printchar.c     # Character printing  
│   ├── ft_printnbr.c      # Integer printing  
│   ├── ft_printstr.c      # String printing  
│   ├── ft_printptr.c      # Pointer printing  
│   ├── ft_printhex.c      # Hexadecimal printing  
│   └── ft_printuns.c      # Unsigned integer printing  
├── libft/                 # Libft library  
├── .gitignore  
├── Makefile               # Makefile to compile the project  
└── README.md              # This file  

---

### 📜 Implemented Features

#### 🎯 Supported Format Specifiers
- **`%c`** - Character: Prints a single character
- **`%s`** - String: Prints a string of characters
- **`%p`** - Pointer: Prints a pointer address in hexadecimal format
- **`%d`** - Decimal: Prints a signed decimal integer
- **`%i`** - Integer: Prints a signed decimal integer
- **`%u`** - Unsigned: Prints an unsigned decimal integer
- **`%x`** - Hexadecimal (lowercase): Prints an unsigned integer in lowercase hexadecimal
- **`%X`** - Hexadecimal (uppercase): Prints an unsigned integer in uppercase hexadecimal
- **`%%`** - Percent: Prints a literal percent sign

#### 🔧 Core Functions
- **`ft_printf`**: Main function that mimics the behavior of printf
- **`ft_printchar`**: Handles character output (%c)
- **`ft_printstr`**: Handles string output (%s)  
- **`ft_printnbr`**: Handles signed integer output (%d, %i)
- **`ft_printuns`**: Handles unsigned integer output (%u)
- **`ft_printhex`**: Handles hexadecimal output (%x, %X)
- **`ft_printptr`**: Handles pointer address output (%p)

---

## 🛠️ How to Use

### 📦 Compilation

To compile the library, run the following command in the root of the project:

```bash
make
```

This will generate a `libftprintf.a` file that you can link in your projects.

### 🧩 Include in Your Project

To use ft_printf in your project, include the header file and link the library:

```c
#include "ft_printf.h"
```

And compile your project with:

```bash
gcc -Wall -Wextra -Werror -Iinclude -L. -lftprintf your_program.c -o your_program
```

### 💡 Usage Example

```c
#include "ft_printf.h"

int main(void)
{
    int num = 42;
    char *str = "Hello, World!";
    char c = 'A';
    void *ptr = &num;
    
    ft_printf("Character: %c\n", c);
    ft_printf("String: %s\n", str);
    ft_printf("Integer: %d\n", num);
    ft_printf("Unsigned: %u\n", (unsigned int)num);
    ft_printf("Hex (lower): %x\n", num);
    ft_printf("Hex (upper): %X\n", num);
    ft_printf("Pointer: %p\n", ptr);
    ft_printf("Percent: %%\n");
    
    return (0);
}
```

---

## 🎯 Key Learning Objectives

- **Variadic Functions**: Understanding how to work with functions that accept a variable number of arguments
- **Format Parsing**: Learning to parse and interpret format specifiers
- **Data Type Conversion**: Converting different data types to their string representations
- **Memory Management**: Proper handling of memory and avoiding leaks
- **Modularity**: Building a well-structured, modular codebase

---

## ✅ Project Requirements

- ✅ Implement `ft_printf` function
- ✅ Support all mandatory format specifiers: `c`, `s`, `p`, `d`, `i`, `u`, `x`, `X`, `%`
- ✅ Return the number of characters printed
- ✅ Handle edge cases (NULL pointers, etc.)
- ✅ No memory leaks
- ✅ Compile with `-Wall -Wextra -Werror`

---

## 🚀 Technical Details

This implementation uses:
- **Variadic arguments** (`va_list`, `va_start`, `va_arg`, `va_end`)
- **Custom helper functions** for each format specifier
- **Modular design** for easy maintenance and testing
- **Integration with libft** for utility functions

---

*Made with ❤️ at 42 Madrid*