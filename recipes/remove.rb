users_to_delete = search :users, "deleted:true"

users_to_delete.each do |user|
  user user['id'] do
    action :remove
  end
end
