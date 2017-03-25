class HomeController < ApplicationController
    def index
        @users = User.where(:role => 'Particulier')
        @entreprises = User.where(:role => 'Entreprise')
    end
end
