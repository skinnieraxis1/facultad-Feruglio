#include <stdio.h>

int main(){
    printf(longitud("Hola"));
}

unsigned longitud(const char *s){
    return 
        *s == '\0' ? 0
        : 1 + length(s+1);
}

Bool IsPalabraVacio(const char *s){
    return *s == '\0';
}

void Concatenacion(const char *s, const char *x){
    return 
        x == '\0' ? return
        : s == '\0' ? x  
        : Concatenacion(*s);
}