class Person
  def initialize(args)
    @name = args[:name]
  end

  def first_initial
    @name.chars.first
  end

end