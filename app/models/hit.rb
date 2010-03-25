class Hit
  def self.current
    $redis.get("current_hits").to_i
  end
  
  def self.increment
    $redis.incr('current_hits')
  end
end