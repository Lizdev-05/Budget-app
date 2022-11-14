class UsersController < ApplicationController
    def index
        @user = Users.all
    end

    def show
    end