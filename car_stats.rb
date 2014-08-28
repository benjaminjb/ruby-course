class CarStats
  @@color_counter_hash = Hash.new(0)
  @@sorted_popularity_key_array = []

  def self.calc_top_color(cars)
    self.color_counter_hash_builder(cars)  
    @@color_counter_hash.key(@@sorted_popularity_key_array.last)
  end

  def self.calc_bottom_color(cars)
    self.color_counter_hash_builder(cars)
    @@color_counter_hash.key(@@sorted_popularity_key_array[0])
  end

  def self.color_counter_hash_builder(cars)
    @@color_counter_hash.clear
    cars.each { |car| @@color_counter_hash[car.color] += 1 }
    @@sorted_popularity_key_array = @@color_counter_hash.values.sort
  end

  # instead of line 18, see min_by and max_by
  # hash = {:a=>1,:b=>2,:c=>3}
  # hash.min_by {|key,val| val} #=> [:a,1]
  # hash.max_by {|key,val| val} #=> [:c,3]

end