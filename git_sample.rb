class User
  attr_accessor :name

  def initialize(**params)
    @name = params[:name]
  end
end

  user1 = User.new(name: "ikeda")
  user2 = User.new(name: "tkesi")
  user3 = User.new(name: "sitou")


users = [user1,user2,user3]

users.each do |user|

  puts user.name
end