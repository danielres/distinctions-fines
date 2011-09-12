class Article < ActiveRecord::Base

  def body
    BlueCloth.new(super).to_html    
  end
end
