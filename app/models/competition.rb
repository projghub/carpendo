class Competition < ActiveRecord::Base
  attr_accessible :end_at, :name, :start_at, :winner_id
end
