class CreateAdminService
  def call
    user = User.find_or_create_by!(email: 'example@example.com') do |user|
        user.password = 'pas5word'
        user.password_confirmation = 'pas5word'
        user.admin!
      end
  end
end
