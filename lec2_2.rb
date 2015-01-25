module Person
  attr_accessor :name
  attr_accessor :height
  attr_accessor :weight
  def to_s
    "Person[" + @name + ", height = " + @height + ", weight =" + weight + "]"
  end
end

module Student
  include Person
  attr_accessor :major
  attr_accessor :hometown
  def to_s
    "Student[" + @name + ", height = " + @height +
        ", weight = " + weight + ", major = " + major +
        ", hometown = " + hometown + "]"
  end
end

module Employee
  attr_accessor :title
  attr_accessor :wage
  include Person
  # def to_s
  #   "Employee[" + @name + ", height = " + @height +
  #       ", weight = " + weight + ", title = " + title +
  #       ", wage = " + wage+ "]"
  # end
end

class TeachingAssistant
  include Student
  include Employee
  def to_s
    "TeachingAssistant[" + @name + ", height = " + @height +
        ", weight = " + weight + ", \n   major = " + major +
        ", hometown = " + hometown + ", title = " + title +
        ", wage = " + wage + "]"
  end
end

john = TeachingAssistant.new();
john.name = "John"
john.height = "6 ft. 2 in."
john.weight = "180 lbs."
john.major = "CS"
john.hometown = "Springfield"
john.title = "busboy"
john.wage = "$7.25/hr."
puts john.to_s

