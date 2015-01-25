module Taggable
  require 'set'
  attr_accessor :tags

  def taggable_setup
    @tags = Set.new
  end

  def add_tag(tag)
    @tags << tag
  end

  def remove_tag(tag)
    @tags.delete(tag)
  end
end

class TaggableString < String
  include Taggable
  def initialize(*args)
    super
    taggable_setup
  end
  def to_s
    t = " "
    for a in @tags
      t += a.to_s + ", "
    end
    t = t[0 .. -3]
    super + " author: " + t
  end
end
s = TaggableString.new('It was the best of times, it was the worst of times.')
s.add_tag 'dickens'
s.add_tag 'quotation'
s.tags # =>    #<Set: {"dickens", "quotation"}>

puts s.to_s