ActiveAdmin.register Bbs::Topic do
  form as: 'bbs_topic' do |f|
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
      params.permit bbs_topic: [:title, :body]
    end
  end
end
