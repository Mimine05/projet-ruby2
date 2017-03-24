class HomeController < ApplicationController
    def index
        @users = User.where(:role => 'Particulier')
    end
end
