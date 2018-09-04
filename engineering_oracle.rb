require './person.rb'
class EngineeringOracle < Person
  def initialize(name)
    super(name)
    @responses = [
    "What are you talking about?! Everything is awesome.",
    "Have you tried turning it on and off again?",
    "Is it plugged in?",
    "Did you ask someone else?",
    "You should ask someone else.",
    ]
  end
end
