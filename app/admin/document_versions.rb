ActiveAdmin.register DocumentVersion do
  permit_params :app_id, :content, :document_id, :published, :revision_date, :version
  
  form do |f|
    f.semantic_errors
    
    f.inputs do
      f.input :app, input_html: { class: "select2" }
      f.input :document, input_html: { class: "select2" }
      f.input :content, as: :quill_editor
      f.input :version, input_html: { autocomplete: :off }
      f.input :revision_date, input_html: { autocomplete: :off }
      f.input :published
    end
    
    f.actions
  end
end
