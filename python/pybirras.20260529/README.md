
# PyBirras 202605

* **REPL (Read-Eval-Print Loop)**: python vs npython

````
$ python3 -V vs  npyton -V

> name = "obiwan"
> len(name)
> name = "obiwan kenobi"
> type(name)  <class 'str'>
> name.__
> name.__len__()
6
>>> name = name + " Kenobi"
>>> name
'Obiwan Kenobi'
>>> name = name.__add__(" Kenobi")
>>> name
'Obiwan Kenobi Kenobi'
>>> print(name)
Obiwan Kenobi Kenobi
>>> len(name)
20
>>>

>>> name.split()
['obiwan', 'kenobi']
>>> words = name.split()
>>> type(words)
<class 'list'>
>>> ",".join(words)
'obiwan,kenobi'
>>> "_".join(words)
'obiwan_kenobi'

>>> print(words)
['obiwan', 'kenobi']
>>> words == ['obiwan', 'kenobi']
True
>>> words is ['obiwan', 'kenobi']
False
>>> 

--

# ANEXO

Mostrar todas las fuentes de `figlet`.

```
for i in $(ls /usr/share/figlet/*.flf); do echo "Fuente: $i"; figlet -f $(basename $i .flf) "hola"; done
```