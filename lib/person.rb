class Person

  attr_accessor :name, :birthday, :hair_color, :eye_color, :height, :wrist_size, :glove_size, :pant_length, :pant_width, :weight, :handed, :complexion, :t_shirt_size
  # attr_accessor :weight, :handed, :complexion, :t_shirt_size
  # attr_accessor :wrist_size, :glove_size, :pant_length, :pant_width

  def initialize (attributes)
    attributes.each do |key, value|
      self.class.attr_accessor(key)
      self.send("#{key}=", value)
      # send mehod mass assigns the value of each key/value pair to its associaed key
    end
  end

end
