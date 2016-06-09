1. Models:

	rails g model User first_name:string last_name:string
	rails g model Friendship user:references friend:references

	User Model:
		class User < ActiveRecord::Base
			has_many :friendships
			has_many :friends,  class_name: "User",
					   			foreign_key: "friend_id",
					   			through: :friendships
		end
	
	Friendship Model:
		class Friendship < ActiveRecord::Base
  			belongs_to :user
  			belongs_to :friend, class_name: "User"
		end



2. User.first => Works

3. User.first.friends => Works

4.  I have no idea how to perform this action.  =/