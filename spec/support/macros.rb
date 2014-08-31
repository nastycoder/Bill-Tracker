def set_user(user = Fabricate(:user))
  sign_in user
end
