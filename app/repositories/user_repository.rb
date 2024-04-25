class UserRepository
  def find_all
    User.where(deleted_at: nil)
  end

  def find_by_id(id)
    User.find(id)
  end

  def create(params)
    User.create(params)
  end

  def update(params)
    User.update(params)
  end
end