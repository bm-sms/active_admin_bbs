ActiveAdmin.register Bbs::Category do
  form as: 'bbs_category' do |f|
    f.semantic_errors
    f.inputs
    f.actions
  end

  controller do
    private

    def permitted_params
      params.permit bbs_category: [:name]
    end
  end
end
