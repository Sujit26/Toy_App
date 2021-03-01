class StaticPagesController < ApplicationController


    def home
        if logged_in?
            @micropost = current_user.microposts.build
            @feed_items = current_user.feed
        end
    end


    def help
        render html: "This is Help page!"
    end

    def about
        render html: "This is about page!"
    end

    def contact
    end
end
