#include <stdio.h>

// Sumador de bytes
int main(){
    int suma = 0;
    for(int c; (c = getchar()) != EOF; suma += c);
    putchar(suma); // Funciona?? puede haber overflow
    printf("%d\n", suma);
}