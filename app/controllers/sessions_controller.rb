class SessionsController < ApplicationController
    def create
    @session = session.new
    end
end