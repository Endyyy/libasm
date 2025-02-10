#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include <unistd.h>

char *ft_strdup(char *src);
char *ft_strcpy(char *dest, const char *src);
size_t ft_strlen(const char *str);
int ft_strcmp(const char *s1, const char *s2);
ssize_t ft_write(int fd, const void *buf, size_t count);
ssize_t ft_read(int fd, void *buf, size_t count);

int main() {
    // Test ft_strlen vs strlen
    char *str = "Hello, World!";
    printf("ft_strlen: %zu, strlen: %zu\n", ft_strlen(str), strlen(str));

    // Test ft_strcpy vs strcpy
    char src1[] = "Source String";
    char dest1[50];
    char dest2[50];
    ft_strcpy(dest1, src1);
    strcpy(dest2, src1);
    printf("ft_strcpy: %s, strcpy: %s\n", dest1, dest2);

    // Test ft_strdup vs strdup
    char *dup1 = ft_strdup("This is ft_strdup test");
    char *dup2 = strdup("This is strdup test");
    printf("ft_strdup: %s, strdup: %s\n", dup1, dup2);

    // Test ft_strcmp vs strcmp
    char *str1 = "Hello";
    char *str2 = "Hello";
    char *str3 = "World";
    printf("ft_strcmp: %d, strcmp: %d\n", ft_strcmp(str1, str2), strcmp(str1, str2));
    printf("ft_strcmp: %d, strcmp: %d\n", ft_strcmp(str1, str3), strcmp(str1, str3));

    // Test ft_write vs write
    char *message = "Testing ft_write and write\n";
    printf("Using write:\n");
    write(1, message, strlen(message));
    printf("Using ft_write:\n");
    ft_write(1, message, strlen(message));

    // Test ft_read vs read
    char buf1[100], buf2[100];
    printf("Enter some text for ft_read and read test:\n");

    // Read using standard read
    ssize_t bytes_read = read(0, buf1, sizeof(buf1));
    if (bytes_read > 0) {
        buf1[bytes_read] = '\0';
        printf("Read with read: %s\n", buf1);
    }

    // Read using custom ft_read
    bytes_read = ft_read(0, buf2, sizeof(buf2));
    if (bytes_read > 0) {
        buf2[bytes_read] = '\0';
        printf("Read with ft_read: %s\n", buf2);
    }

    return 0;
}
