
# Inicialização
ADDI $4, $0, 10       # $4 = 10 (Carrega o valor 10 no registrador $4)
ADDI $5, $0, 20       # $5 = 20 (Carrega o valor 20 no registrador $5)

# Operações aritméticas
ADD $6, $4, $5        # $6 = $4 + $5 (Soma: 10 + 20 = 30)
SUB $7, $6, $4        # $7 = $6 - $4 (Subtração: 30 - 10 = 20)

# Operações lógicas
AND $8, $4, $5        # $8 = $4 AND $5 (10 AND 20)
OR $9, $4, $5         # $9 = $4 OR $5 (10 OR 20)
XOR $10, $4, $5       # $10 = $4 XOR $5 (10 XOR 20)

# Memória
SW $6, 0($13)         # Armazena $6 na memória na posição indicada por $13 (pilha)
LW $11, 0($13)        # Carrega o valor da memória para $11 (recupera 30)

# Saltos e laço
ADDI $12, $0, 5       # $12 = 5 (Carrega contador no registrador $12)
LOOP: SUBI $12, $12, 1 # $12 = $12 - 1 (Decrementa o contador)
      BNE $12, $0, LOOP # Se $12 != 0, volta para LOOP
J END                 # Salto incondicional para o fim

# Finalização
END: NOP              # Sem operação (finaliza o programa)
