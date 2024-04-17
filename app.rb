require "sinatra"
require "sinatra/reloader"

get("/") do
 erb (:home)
end

get("/dice/sides") do
  @dice=params.fetch(:num_dice).to_i
  @sides=params.fetch(:num_sides).to_i
  
  @roll_output=Array.new
  @dice.times do 
    roll= rand(1...@sides)
    @roll_output.push(roll)
  end 

erb(:roll)

end
