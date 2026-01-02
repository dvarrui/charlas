
```
Charla: "La esencia de Python"
```

# Título

# Presentación

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

# Los delimitadores de bloques

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
