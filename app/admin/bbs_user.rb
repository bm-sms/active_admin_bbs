ActiveAdmin.register Bbs::User do
  form as: 'bbs_user' do |f|
    f.semantic_errors

    f.input :email

    f.inputs do
      f.has_many :profile, new_record: false do |p|
        p.input :avatar_url
        p.input :nickname
      end
    end

    f.actions
  end

  controller do
    private

    def permitted_params
      params.permit bbs_user: [:email, profile_attributes: [:avatar_url, :nickname]]
    end
  end
end
