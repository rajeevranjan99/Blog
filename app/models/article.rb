class Article < ApplicationRecord
    # include Visible
    # has_many :comments, dependent: :destroy
    # validates :title, presence: true
    # validates :body, presence: true, length: { minimum: 10}
after_destroy :log_destroy_action

  def log_destroy_action
    puts 'Article destroyed'
  end
  
end