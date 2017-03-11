class User < ApplicationRecord
    # Include default devise modules. Others available are:
    # :confirmable, :lockable, :timeoutable and :omniauthable
    devise :database_authenticatable, :registerable,
    :recoverable, :rememberable, :trackable, 
    :validatable, :authentication_keys => {email: true, login: false}

    def login=(login)
        @login = login
    end

    def login
        @login || self.username || self.email
    end
end
