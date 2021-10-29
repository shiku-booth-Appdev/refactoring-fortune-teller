class FortunesController < ApplicationController

  def horoscopes
    @zodiac_sign = params.fetch("the_sign")
    z_sign = @zodiac_sign.to_sym
    all_zodiacs = Zodiac.list
    this_zodiac = all_zodiacs.fetch(z_sign)
    @name = this_zodiac.fetch(:name)
    @horoscope = this_zodiac.fetch(:horoscope)

    @array_of_numbers = Array.new

    5.times do
      another_number = rand(1...100)
      
      @array_of_numbers.push(another_number)
    end

    render({ :template => "fortune_templates/fortune.html.erb" })

  end
  
end