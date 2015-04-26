class Snack < ActiveRecord::Base
  has_many :orders

  def self.snacks
    all.order(:name).collect{|s| [s.name, s.id]}
  end
end
