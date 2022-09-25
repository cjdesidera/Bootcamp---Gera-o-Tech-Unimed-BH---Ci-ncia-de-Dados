salario = int(input('Digite o valor do salário: '))

if (salario <= 600.00):
  s = salario * 1.17
  r = s - salario
  p = 17
elif (salario >= 600.01 and salario<= 900.00):
  s = salario * 1.13
  r = s - salario
  p = 13
elif (salario >= 900.01 and salario <= 1500.00):
  s = salario * 1.12
  r = s - salario
  p = 12
elif (salario >= 1500.01 and salario <= 2000.00):
  s = salario * 1.10
  r = s - salario
  p = 10
else:
  s = salario * 1.05
  r = s - salario
  p = 5

print(f"Novo salário: {s:.2f}")
print(f"Reajuste ganho: {r:.2f}")
print(f"Em percentual: {p} %")