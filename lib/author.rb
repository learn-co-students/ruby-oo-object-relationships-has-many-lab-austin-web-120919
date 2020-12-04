class Author

    attr_reader :name, :posts

    @@authors = []

    def initialize(name)
        @name = name
        @posts = []
    end

    # def posts
    #    # binding.pry
    #     #Post.posts

    #     @posts
    # end

    def add_post(post)
        #binding.pry
        @posts << post
        post.set_author(self)
       # binding.pry
    end

    def add_post_by_title(post_title)
        post = Post.new(post_title)
        add_post(post)
    end

    def self.post_count
        Post.all.length
    end

end