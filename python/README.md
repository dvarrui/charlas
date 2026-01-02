
# "La esencia de Python"

# Presentación

# Filosofía informática

![](images/filosofia-informatica.png)

# Definición

Definición de "esencia": Lo más importante y característico de una cosa.

¿Cúal es la esencia de Python?

# Esencia

"   "

# ABC

* Lenguaje de programación
* Desarrollado en los Países Bajos por Leo Geurts, Lambert Meertens y Steven Pemberton.
* Imperativo, de propósito general, interactivo, estructurado, de alto nivel y está 
* Destinado a la enseñanza o la creación de prototipos.
* Pensado para ser utilizado en lugar de BASIC, Pascal o AWK.

Guido van Rossum trabajó con ABC y le influyó para el diseño de Python.

# ABC - ejemplo

```
HOW TO RETURN words document:
   PUT {} IN collection
   FOR line IN document:
      FOR word IN split line:
         IF word not.in collection:
            INSERT word IN collection
   RETURN collection
```

Las características:
* Solo cinco tipos de datos básicos
* No requiere declaración de variables
* Precisión arbitraria, Listas y cadenas de tamaño ilimitado, y otras características que admiten la ortogonalidad y la facilidad de uso para los principiantes.
* **La anidación de instrucciones se indica mediante sangría**

# Zen de Python

* "Explícito es mejor que implícito."
* "La legibilidad es importante."
* "Debería haber una, y preferiblemente solo una, manera obvia de hacerlo."

# Los bloques en C: delimitadores

```c
long long factorial(int n) {
    if (n == 0 || n == 1) {
        return 1;
    }
    return n * factorial(n - 1);
}
```

```c
long long factorial(int n) 
{
    if (n == 0 || n == 1) 
    {
        return 1;
    }
    return n * factorial(n - 1);
}
```

```c
long long factorial(int n) 
{
if (n == 0 || n == 1) 
{
return 1;
}
return n * factorial(n - 1);
}
```

```c
long long factorial(int n) 
{ if (n == 0 || n == 1) { return 1; } return n * factorial(n - 1); }
```

```c
long long factorial(int n) 
{ if (n == 0 || n == 1) 
    { return 1; } 
  return n * factorial(n - 1); }
```

# Tokens programa C

```c
long long factorial(int n) {
    if (n == 0 || n == 1) { 
        return 1; 
    }
    return n * factorial(n - 1);
}
```

| Tipo            | Tokens                        | Cantidad |
| --------------- | ----------------------------- | -------- |
| Identificadores | factorial(x2), n(x5)          | 7        |
| Keywords        | if, return(x2)                | 3        |
| Literales       | 0, 1(x3)                      | 4        |
| Operadores      | ==(x2), ||, *, -              | 5        |
| Tipado          | long(x2), int                 | 3        |
| Delimitadores   | (x3, )x3, ;(x2), {(x2), )(x2) | 12       |

Total de tokens = 34
Total de tokens - tipo = 31
Total de tokens - tipo - delimitadores = 19

# Tokens programa Python (v1)

```python
def factorial(n):
    if n == 0 or n == 1:
        return 1
    return n * factorial(n - 1)
```

| Tipo            | Tokens                          | Cantidad |
| --------------- | ------------------------------- | -------- |
| Identificadores | factorial(x2), n(x5)            | 7        |
| Keywords        | def, if, return(x2)             | 4        |
| Literales       | 0, 1(x3)                        | 4        |
| Operadores      | ==(x2), or, *, -                | 5        |
| Tipado          |                                 | 0        |
| Delimitadores   | :(x2), (x2, )x2                 | 6        |

Total de tokens = 26
Total de tokens - tipo = 26
Total de tokens - tipo - delimitadores = 20

# Tokens programa Python (v2)

Los tabuladores/espacios funcionan como tokens cuando tienen un significado o función diferente a la separador. Esto es, marcar/definir los bloques.

```python
def factorial(n):
    if n == 0 or n == 1:
        return 1
    return n * factorial(n - 1)
```

| Tipo            | Tokens                          | Cantidad |
| --------------- | ------------------------------- | -------- |
| Identificadores | factorial(x2), n(x5)            | 7        |
| Keywords        | def, if, return(x2)             | 4        |
| Literales       | 0, 1(x3)                        | 4        |
| Operadores      | ==(x2), or, *, -                | 5        |
| Tipado          |                                 | 0        |
| Delimitadores   | :(x2), (x2, )x2, sangrado(x3)   | 9        |

Total de tokens = 29
Total de tokens - tipo = 29
Total de tokens - tipo - delimitadores = 20

# Ejemplo "New Python"

"Idea loca": cambiar la esencia de Python y modificar los límites de los bloques.

```
def factorial(n)
  if n == 0 or n == 1
    return 1
  end

  return n * factorial(n - 1)
end
```

| Tipo            | Tokens                          | Cantidad |
| --------------- | ------------------------------- | -------- |
| Identificadores | factorial(x2), n(x5)            | 7        |
| Keywords        | def, if, return(x2)             | 4        |
| Literales       | 0, 1(x3)                        | 4        |
| Operadores      | ==(x2), or, *, -                | 5        |
| Tipado          |                                 | 0        |
| Delimitadores   | end(x2), (x2, )x2               | 6        |

Total de tokens = 26
Total de tokens - tipo = 26
Total de tokens - tipo - delimitadores = 20

# Resumen

| Lenguaje    | Total tokens | Tipado | Delimitadores |
| ----------- | ------------ | ------ | ------------- |
| C           | 34           | 3      | 12            |
| Python (v1) | 26           | -      | 6             |
| Python (v2) | 29           | -      | 9             |
| New python  | 26           | -      | 6             |

# HCI

Interacción humano-máquina.

# npython

No es "New python"

Es "No python"
