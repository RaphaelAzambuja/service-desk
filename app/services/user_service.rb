class UserService
  def initialize(user_repository)
    @user_repository = user_repository
  end

  def find_all_users
    @user_repository.find_all
  end

  def find_user(id)
    @user_repository.find_by_id(id)
  end

  def create_user(params)
    @user_repository.create(params)
  end

  def update_user(params)
    @user_repository.update(params)
  end

  def inactive_user(id)
    user = @user_repository.find_by_id(id)
    user.update(deleted_at: Time.now)
  end

  def active_user(id)
    user = @user_repository.find_by_id(id)
    user.update(deleted_at: nil)
  end
end
