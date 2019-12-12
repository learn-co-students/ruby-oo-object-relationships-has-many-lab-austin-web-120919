class Post

    attr_reader :title, :author

    @@all = []

    def initialize(new_post)
        #binding.pry
        @title = new_post
        @@all << self
       # binding.pry
    end

    def self.all
        @@all
       # binding.pry
    end

    def author=(author)
        #binding.pry
        @author = author
        #binding.pry
        author.add_post(self)
    end

    def set_author(author)
        @author = author
    end

    def author_name
        #binding.pry
        @author ? @author.name : nil
    end

end