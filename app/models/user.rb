class User
  include DataMapper::Resource

  property :id, Serial
  property :email, String, unique: true, required: true
  property :password, String
  property :name, String, required: true
  property :username, String, unique: true, required: true
end
