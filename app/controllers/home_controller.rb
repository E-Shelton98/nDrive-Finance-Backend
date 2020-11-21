class HomeController < ApplicationController
    def index
        render json: {hello: "hello", status: 200}
    end
end