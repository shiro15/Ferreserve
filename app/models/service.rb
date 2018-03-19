class Service < ActiveRecord::Base
	belongs_to :ship
	belongs_to :route

  class << self
    def search(query)
      rel = order("id")
      if query.present?
        rel = rel.where("start_date LIKE ? AND route LIKE ? AND car_num >= ? AND taken_room >= ?",
          "%#{query}%", "%#{query}%", "%#{query}%", "%#{query}%", "%#{query}%",)
      end
      rel
    end
  end
end
