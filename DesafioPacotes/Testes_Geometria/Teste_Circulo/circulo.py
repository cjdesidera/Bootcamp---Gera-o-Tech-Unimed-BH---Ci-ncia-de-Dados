import math

class Circulo:
    def __init__(self, raio, centro):
        self.raio = raio
        self.centro = centro

    def hallarArea(self):
        area = math.pi * math.pow(self.raio, 2)
        return area

    def hallarPerimetro(self):
        perimetro = 2 * math.pi * self.raio
        return perimetro

    def estaEnElCirculo(self, punto):
        if self.centro.hallarDistancia(punto) <= self.raio:
            return True
        else:
            return False