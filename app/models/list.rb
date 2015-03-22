class List < ActiveRecord::Base
  # attr_accessible :title, :body
  has_many :movies
  has_many :notifications

  def self.previous
    List.all[-2].movies
  end

  def self.current
    List.last.movies
  end

  def self.change?
    if List.previous == List.current
      false
    else
      true
    end
  end

  def self.notify_movies_removed
    List.previous.each do |movie|
      if !List.current.include?(movie)
        Notification.create(message: "#{movie} has been removed from Netflix instant.", type: "removed", list_id: List.last.id)
      end
    end
  end

  def self.notify_movies_added
    List.current.each do |movie|
      if !List.previous.include?(movie)
        Notification.create(message: "#{movie} has been added to Netflix instant!", type: "added", list_id: List.last.id)
      end
    end
  end

end
