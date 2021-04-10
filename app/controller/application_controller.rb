
class ApplicationController < Sinatra::Base

    configure do
        set :public_folder, 'public'
        set :views, 'app/views'
        enable :sessions
        set :session_secret, "classroom-lv"
    end

    get '/' do
        "Hello World!"
    end

    helpers do

        def logged_in?
            !!session[:email]
        end

        def login(email)
            session[:email] = email
        end
        
        def logout
            session.clear
        end
    end


end