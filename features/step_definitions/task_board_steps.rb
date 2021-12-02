#todo
Dado('que esteja na tela para adicioar uma atividade em TO DO') do
    visit('')
end

Quando('adicioar a informação necessaria') do
  @task_name = @page.constructor_task_board.create_todo_item
  @grid_validate = @page.constructor_task_board.validate_grid_item(@task_name)
end

Entao('o item deve ser exibido na grid de listagem') do
  expect(@grid_validate.text).to have_content @task_name
end

#done
Dado('que exista uma atividade em TO DO') do
  visit('')
  @task_name = @page.constructor_task_board.create_todo_item
  @grid_validate = @page.constructor_task_board.validate_grid_item(@task_name)
end
Quando('enviar a atividade para DONE') do
  @page.constructor_task_board.create_done_item(@grid_validate)
  @page.constructor_task_board.navigate_done_page
  @grid_validate = @page.constructor_task_board.validate_grid_item(@task_name)
end

Entao('o item deve ser exibido na grid de listagem da tela DONE') do
  expect(@grid_validate.text).to have_content @task_name
end