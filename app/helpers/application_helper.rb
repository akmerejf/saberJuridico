module ApplicationHelper
  def link_to_add_articles(name, f, association)
    new_object = f.object.send(association).klass.new
    id = new_object.object_id
    articles = f.fields_for(association, new_object, child_index: id) do |builder|
      render(association.to_s.singularize + "_articles", f: builder)
    end
    link_to(name, '#', class: "add_articles", data: {id: id, articles: articles.gsub("\n", "")})
  end
end