ActiveAdmin.register DocumentVersion do
  permit_params :app_id, :document_id, :published, :revision_date, :version
  
  form do |f|
    f.semantic_errors
    
    f.inputs do
      f.input :app
      f.input :document
      f.input :version, input_html: { autocomplete: :off }
      f.input :revision_date, input_html: { autocomplete: :off }
      f.input :published
    end
    
    f.actions
  end
end
