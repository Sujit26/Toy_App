class StaticPagesController < ApplicationController

    def index
    end

    def home
        render html:  "<h1>hello<h1>"
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
