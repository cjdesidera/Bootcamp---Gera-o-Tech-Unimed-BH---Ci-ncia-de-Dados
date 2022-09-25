while True: 
    try: 
        #TODO:  Programe aqui dentro as condições necessárias para satisfazer o problema
        #e imprima a saída de acordo com a situação das pernas do papagaio
        
        res = input()
        if('Perna Esquerda' == res):
            print('inglês')
        elif('Perna Direita' == res):
            print('francês')
        elif('Nenhuma' == res):
            print('português')
        else:
            print('caiu')
    except EOFError: 
        break