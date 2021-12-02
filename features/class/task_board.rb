class TaskBoard < BasePage

    def create_todo_item
      task_name = Faker::DcComics.hero
      find(ELEMENT['edit_text']).send_keys(task_name)
      find(ELEMENT['add_grid'], text: 'add').click
      task_name
    end
    
    def validate_grid_item(task_name)
      grid_item = all(ELEMENT['grid'])
      (0...grid_item.count).each do |i|
        if grid_item[i].text.include? task_name
          @item = grid_item[i]
          break
        end
      end
      @item
    end
    
    def create_done_item(grid_item)
      grid_item.check
    end
    
    def navigate_done_page
      click_link 'DONE'
    end
end
