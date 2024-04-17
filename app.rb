require "sinatra"
require "sinatra/reloader"

get("/") do
 erb (:home)
end

get("/process_roll") do
  @dice=params.fetch(:dice).to_i
  @sides=params.fetch(:sides).to_i
  
  @roll_output=Array.new
  @dice.times do 
    roll= rand(1..@sides)
    @roll_output.push(roll)
  end 

erb(:roll)

end
