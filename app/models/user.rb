class User < ApplicationRecord
  rolify
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

      def self.current
        Thread.current[:user]
      end
      def self.current=(user)
             Thread.current[:user] = user.id
      end
end
