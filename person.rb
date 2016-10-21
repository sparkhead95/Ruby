class Person
attr_reader :name
attr_reader :age

def initialize(name,age)
self.age = age
@name = name
end
def age = (val)
raise ArgumentError, "Argument is not numeric" unless vall.is_a? Numeric (if val >= 0 && val <= 120)
@age = val
else
raise ArgumentError, "Must be between 0 and 120"
end
end
end

