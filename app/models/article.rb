class Article < ActiveRecord::Base

  belongs_to :author, :class_name => 'User'

  def body
    BlueCloth.new(super).to_html    
  end
end
