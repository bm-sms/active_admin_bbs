ActiveAdmin.register Bbs::Avatar do
  index do
    column 'ID', :id
    column 'avatar', :avatar do |o|
      image_tag(o.avatar.url(:medium))
    end

    actions
  end

  show do |r|
    attributes_table do
      row :avatar do
        image_tag(r.avatar.url(:medium))
      end

      row :url do
        r.avatar.url
      end

      row :url_medium do
        r.avatar.url(:medium)
      end

      row :url_thumb do
        r.avatar.url(:thumb)
      end

      active_admin_comments
    end
  end

  form multipart: true, as: 'bbs_avatar' do |f|
    f.semantic_errors
    f.inputs Bbs::Avatar do
      f.input :avatar, as: :file
      f.actions
    end
  end

  controller do
    private

    def permitted_params
      params.permit bbs_avatar: [:avatar]
    end
  end
end
