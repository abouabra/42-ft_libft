# ft_libft

## Description

ft_libft is a project at 42 School (École 42) that involves creating a library of useful C functions. This library, named `libft`, contains implementations of various standard C library functions as well as additional utility functions. The purpose of this project is to gain a deeper understanding of programming concepts in C and to build a personal library that can be reused in future projects.

## Installation
To use the `libft` library in your projects, follow these steps:

1. Clone the ft_libft repository: `git clone https://github.com/abouabra/42-ft_libft.git`
2. Navigate to the ft_libft directory: `cd ft_libft`
3. Compile the library using the provided Makefile: `make`.
This will generate the `libft.a` static library file.
4. Link `libft.a` to your project at compile time. You can do this by including the library in your compilation command or by adding it to your project's Makefile.

## Usage
To use the functions provided by the libft library, include the `libft.h` header file in your source code:

## Example
```c
#include <stdio.h>
#include "libft.h"

int main() {
    char *str = "Hello, world!";
    int len = ft_strlen(str);
    printf("Length of string: %d\n", len);
    return 0;
}
```

1. Compile your source code with the `libft.a` library:
```sh
gcc -o example example.c -L. -lft
```

2. Run the compiled program:
```sh
./example
```

3. The output should be:
```
Length of string: 13
```

## Documentation

The `libft` library is organized into several categories of functions:

### Part 1 - Libc Functions

These functions are implementations of standard C library functions:

| Function    | Description                                        |
|-------------|----------------------------------------------------|
| ft_memset   | Sets the first n bytes of the memory area pointed to by s to the specified value. |
| ft_bzero    | Sets the first n bytes of the memory area pointed to by s to zero. |
| ft_memcpy   | Copies n bytes from memory area src to memory area dest. |
| ft_memmove  | Copies n bytes from memory area src to memory area dest, handling overlap correctly. |
| ft_memchr   | Locates the first occurrence of c in the first n bytes of the memory area pointed to by s. |
| ft_memcmp   | Compares the first n bytes of memory areas s1 and s2. |
| ft_strlen   | Calculates the length of the string pointed to by s, excluding the terminating null byte. |
| ft_strlcpy  | Copies up to size - 1 characters from the NULL-terminated string src to dst, NULL-terminating the result. |
| ft_strlcat  | Appends the NULL-terminated string src to the end of dst. It will append at most size - strlen(dst) - 1 bytes, NULL-terminating the result. |
| ft_strchr   | Locates the first occurrence of c in the string pointed to by s. |
| ft_strrchr  | Locates the last occurrence of c in the string pointed to by s. |
| ft_strnstr  | Locates the first occurrence of the NULL-terminated string needle in the string haystack, where not more than len characters are searched. |
| ft_strncmp  | Compares at most the first n bytes of two strings s1 and s2. |
| ft_atoi     | Converts the initial portion of the string pointed to by str to int representation. |
| ft_isalpha  | Checks if the character c is an alphabetic character (a-z or A-Z). |
| ft_isdigit  | Checks if the character c is a decimal digit (0-9). |
| ft_isalnum  | Checks if the character c is alphanumeric (a-z, A-Z, or 0-9). |
| ft_isascii  | Checks if the character c is a 7-bit ASCII character. |
| ft_isprint  | Checks if the character c is a printable character (including space). |
| ft_toupper  | Converts the character c to uppercase. |
| ft_tolower  | Converts the character c to lowercase. |
| ft_calloc   | Allocates memory for an array of nmemb elements of size bytes each and initializes the memory to zero. |
| ft_strdup   | Duplicates the string pointed to by src, including the terminating null byte, using malloc. |

### Part 2 - Additional Functions

These functions are additional utility functions:

| Function      | Description                                           |
|---------------|-------------------------------------------------------|
| ft_substr     | Allocates and returns a substring of the string s.    |
| ft_strjoin    | Concatenates two strings.                             |
| ft_strtrim    | Allocates and returns a copy of the string s1 without the specified set of characters at the beginning and end. |
| ft_split      | Splits a string into an array of strings using a delimiter. |
| ft_itoa       | Converts an integer to a string.                      |
| ft_strmapi    | Applies the function f to each character of the string passed as argument by giving its index as first argument to create a new string. |
| ft_putchar_fd | Outputs the character c to the given file descriptor. |
| ft_putstr_fd  | Outputs the string s to the given file descriptor.    |
| ft_putendl_fd | Outputs the string s to the given file descriptor, followed by a newline. |
| ft_putnbr_fd  | Outputs the integer n to the given file descriptor.   |

### Bonus Part

These functions are bonus functions:

these functions are using the following structure (linked list):

```c
typedef struct s_list
{
    void *content;
    struct s_list *next;
} t_list;
```


| Function        | Description                                          |
|-----------------|------------------------------------------------------|
| ft_lstnew       | Allocates and returns a new element.                 |
| ft_lstadd_front | Adds the element new at the beginning of the list.   |
| ft_lstsize      | Counts the number of elements in a list.             |
| ft_lstlast      | Returns the last element of the list.                |
| ft_lstadd_back  | Adds the element new at the end of the list.         |
| ft_lstdelone    | Deletes and frees the given element.                 |
| ft_lstclear     | Deletes and frees the given element and every successor of that element, using the function del and free(3). |
| ft_lstiter      | Iterates the list lst and applies the function f to the content of each element. |
| ft_lstmap       | Iterates the list lst and applies the function f to the content of each element. Creates a new list resulting of the successive applications of the function f. |

### Personal Functions

These are additional personal functions:

| Function     | Description                                         |
|--------------|-----------------------------------------------------|
| ft_printf    | Implementation of printf function.                  |
| get_next_line| Reads a line from a file descriptor.                |

## Final Note

The `libft` library is a work in progress and will be updated with additional functions and improvements over time. If you have any suggestions or feedback, please feel free to open an issue or submit a pull request.
