ActiveAdmin.register Document do
  permit_params :title, :slug
  
  form do |f|
    f.semantic_errors
    
    f.inputs do
      f.input :title, input_html: { autocomplete: :off }
      f.input :slug, input_html: { autocomplete: :off }
    end
    
    f.actions
  end
end
