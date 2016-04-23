class Item < ActiveRecord::Base
  def self.search(search)
    if search
      @items= Item.where(["name LIKE ?","%#{search}%"])
    else
      all
    end
  end
end
