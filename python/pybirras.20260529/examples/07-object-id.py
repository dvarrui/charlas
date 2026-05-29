
print("==> Object ID")
print(' - ID: id1 - id2')
print("   * Same object      == 0")
print("   * Diferent objects != 0")
print(' - Format: desc | id1 - id1 | var1 == var2')

print("\n==> Example1: str")

var1 = "obiwan"
var2 = "obiwan"
id1 = id(var1)
id2 = id(var2)

print(" - ", var1, ",", var2, "|", id1 - id2, "|", var1 == var2)

var2 += " "
var2 = var2.strip()
id2 = id(var2)
print(" - ", var1, ",", var2, "|", id1 - id2, "|", var1 == var2)

print("\n==> Example2: int")

var1 = 55
var2 = 55
id1 = id(var1)
id2 = id(var2)
print(" - ", var1, ",", var2, "|", id1 - id2, "|", var1 == var2)

var1 = 355
var2 = 355
id1 = id(var1)
id2 = id(var2)
print(" - ", var1, ",", var2, "|", id1 - id2, "|", var1 == var2)

# $ python3
#
# >>> var1 = 300
# >>> var2 = 300
# >>> id(var1)
# 140502986994192
# >>> id(var2)
# 140502986990864
# >>> 
