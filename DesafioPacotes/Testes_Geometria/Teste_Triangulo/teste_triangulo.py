class ClassificadorTriangulo:
    def __init__(self, l1, l2, l3):
        self.l1 = l1
        self.l2 = l2
        self.l3 = l3
        if ((self.l2 - self.l3) < self.l1 < (self.l2 + self.l3)) and ((self.l1 - self.l3) < self.l2 < (self.l1 + self.l3)) and (
                (self.l1 - self.l2) < self.l3 < (self.l1 + self.l2)):
            self.__triangulo = True
        else:
            self.__triangulo = False

    def tipo_triangulo(self):
        if self.__triangulo:
            if (self.l1 != self.l2) and (self.l1 != self.l3) and (self.l2 != self.l3):
                if self.triangulo_retangulo():
                    return "Triângulo retângulo"
                else:
                    return "Triângulo escaleno"
            elif (self.l1 == self.l2) and (self.l1 == self.l3) and (self.l2 == self.l3):
                return "Triângulo equilátero"
            else:
                if self.triangulo_retangulo():
                    return "Triângulo retângulo"
                else:
                    return "Triângulos isósceles"
        else:
            return "Não é um Triângulo"

    def triangulo_retangulo(self):
        lista = [self.l2, self.l3, self.l1]
        hipo = max(lista)
        lista.remove(hipo)
        if ((((lista[0]) ** 2) + (lista[1] ** 2)) ** (1 / 2)) == hipo:
            return True
        else:
            return False


t1 = ClassificadorTriangulo(5, 4, 3)