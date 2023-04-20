class User < ApplicationRecord
    validates :name, presence: true
    after_initialize do |user|
        puts "You have initialized an object!"
    end
    after_find do |user|
        puts "You have fpound an object!"
    end
    after_touch do |user|
        puts "You have touched an object"
    end
    has_many :articles, dependent: :destroy
# end
# class Article < ApplicationRecord
#     after_destroy :log_destroy_action
  
#     def log_destroy_action
#       puts 'Article destroyed'
#     end
  end