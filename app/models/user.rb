class User < ApplicationRecord

    validates :name, presence: true
    validates :password, presence: true
    validates :mail, presence: true, email: true

    def image_url 
        @password1= false
    end

    enum role: {administrator: 0, chef:1}
end
