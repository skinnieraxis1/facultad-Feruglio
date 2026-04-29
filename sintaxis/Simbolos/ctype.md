# Interfaz ctype.h
## Implementar ctype.h
### toupper && tolower -> Con precondiciones

```
int toupper(int);
int islower(int);
```

> toupper cambia las minusculas de tu **String** a mayusculas <br>
> islower verifica que está o no en minusculas 

#### Analisis

toupper -> ¿Porque hacemos int y no char? <br>
- Antes no existía el char

islower -> ¿Porque hacemos int y no bool? <br>
- En el momento en el que fue creado no había bool y para hacer la menor cantidad de cambios posibles se deja el int
- Devuelve int porque a pesar de ser mas pesado es mas facil de tratar

#### Resolución

```c
// Con precondición (Siempre la entrada deberá ser mayuscula)
char tolower(char c){return c+32}

// Sin precondición
int toLower(int c){
    if(isupper(c)) return c+32;
    return c;
}

int tolower(int c){
    if(!isupper(c)) return c;
    return c+32;
}
```

#### Test

```
static void Test(PunteroAFuncion toupper){
    assert('a'==tolower('A'));
    assert('z'==tolower('Z'));
    assert('z'==tolower('z'));
    assert('@'==tolower('@'));
}
```

***