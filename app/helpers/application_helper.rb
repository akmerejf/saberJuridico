module ApplicationHelper

  def link_to_remove_item(name, f)
    f.hidden_field(:_destroy) + link_to_function(name, "remove_item(this)")
    
  end

  def link_to_add_item(name, f, association)
    new_object = f.object.send(association).klass.new
    id = new_object.object_id
    items = f.fields_for(association, new_object, child_index: id) do |builder|
    render( "novo_artigo", f: builder)
    end
    link_to(name, '#', class: "add_item", data: {id: id, items: items.gsub("\n", "")})
  end

end