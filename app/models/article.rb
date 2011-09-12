class Article < ActiveRecord::Base

  belongs_to :author, :class_name => 'User'
  
  validates :body, :presence => true

  validates :status_code, :presence => true
  
  scope :published, :conditions => { :status_code => 1 }
  

  
  def body
    BlueCloth.new(super).to_html.html_safe  
  end
  
  def intro
    body.split('<!--more-->')[0]
  end
  
  def status
    if    status_code == 0
      'draft'
    elsif status_code == 1
      'published'
    end
  end
  
  
end
