import string


def listaAlfa():

  print(list(string.ascii_uppercase).index(letra)+1)



letra = str(input('Digite uma letra: ')).upper()

print(f'A letra {letra} encontra-se a posição: ')

listaAlfa()