require './person'
class Trish < Person
  def initialize(name)
    super(name)
    @responses = [
    "I don't work here."
    ]
  end
end
