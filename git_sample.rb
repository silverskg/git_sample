class User
  attr_accessor :name

  def initialize(**params)
    @name = params[:name]
    @age = params[:age]
  end

  def introduce
    if adult?
      "初めまして、私の名前は#{@name}です"
    else
      "僕は#{@name}だよ!!!"
    end
  end

  private

  def adult?
    @age >= 20
  end
end

def build_users(params)
  users = []

  params.each {|params| users << User.new(params)}

  users
end


params = [{name: "ike",age: 22}, {name: "daa",age: 28},{name: "saitou",age: 2}]
  
users = build_users(params)

users.each {|user|puts user.introduce}