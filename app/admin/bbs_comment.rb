ActiveAdmin.register Bbs::Comment do
  form as: 'bbs_comment' do |f|
    f.semantic_errors
    f.inputs
    f.actions
  end

  filter :id
  filter :title
  filter :body

  controller do
    private

    def permitted_params
      params.permit bbs_comment: [:title, :body]
    end
  end
end
