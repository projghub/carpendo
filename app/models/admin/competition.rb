class Admin::Competition < Competition
  attr_accessible :end_at, :name, :start_at, :winner_id
end
