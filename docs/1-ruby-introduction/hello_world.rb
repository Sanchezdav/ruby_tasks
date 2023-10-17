# Automaticamente agrega una linea nueva al final del mensaje
puts "Hello world!"

# No agrega nueva linea, el siguiente print lo imprimira en la misma linea
print "Hello world! 1 "
print "Hello world! 2"

puts "\n\n #### Imprimiendo un arreglo #### \n\n"

# Convierte todo a string usando to_s e imprime cada item en una linea nueva
puts [1,2]
puts "Imprimiendo un arreglo con valores nulos, convirtiendo los nulos como espacios en blanco"
puts [1, nil, nil, 2]

# Imprime el arreglo en una sola linea
print [1,2]

puts "\n\n #### Usando Pretty Printing #### \n\n"

# Pretty Printing imprime hashes y arreglos de una mejor forma
pp [1,2, nil, nil, 3]

puts "\n\n #### Usando P #### \n\n"

# Muestra los objetos de una forma mas detallada/cruda y nos sirve para debuggear
# o si quieres saber los valores correctos de los objetos
p "Hello \n world!"
