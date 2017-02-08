ActiveAdmin.register Avatar do
  index do
    column 'ID', :id
    column 'avatar', :avatar do |o|
      image_tag(o.image.url(:medium))
    end

    actions
  end

  show do |r|
    attributes_table do
      row :avatar do
        image_tag(r.image.url(:medium))
      end

      row :url do
        r.image.url
      end

      row :url_medium do
        r.image.url(:medium)
      end

      row :url_thumb do
        r.image.url(:thumb)
      end

      active_admin_comments
    end
  end

  form multipart: true, as: 'avatar' do |f|
    f.semantic_errors
    f.inputs Bbs.config.avatar_class_name do
      f.input :image, as: :file
      f.actions
    end
  end

  controller do
    private

    def permitted_params
      params.permit avatar: [:image]
    end
  end
end
