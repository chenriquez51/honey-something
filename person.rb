class Person

  def initialize(name)
    @name = name
    @responses = [
    "Hello."
    ]
  end

  def response
    return "#{@name}: #{@responses.sample}"
  end
end
