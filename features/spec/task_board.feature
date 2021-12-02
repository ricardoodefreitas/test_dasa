#language: pt

Funcionalidade: Adcionar atividade em TO DO

@add_todo
Cenario: Adicionar um item em TO DO
  Dado que esteja na tela para adicioar uma atividade em TO DO
  Quando adicioar a informação necessaria
  Entao o item deve ser exibido na grid de listagem

@add_done
Cenario: Adicionar um item em DONE
  Dado que exista uma atividade em TO DO
  Quando enviar a atividade para DONE
  Entao o item deve ser exibido na grid de listagem da tela DONE