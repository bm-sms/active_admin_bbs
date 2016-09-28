ActiveAdmin.register Bbs::Avatar do
  form multipart: true, as: 'bbs_avatar' do |f|
    f.semantic_errors
    f.inputs Bbs::Avatar do
      f.input :avatar, as: :file
    end
    f.actions
  end

  controller do
    private

    def permitted_params
      params.permit bbs_avatar: [:avatar]
    end
  end
end
