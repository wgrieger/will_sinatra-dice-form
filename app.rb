require "sinatra"
require "sinatra/reloader"

get("/") do
 erb (:home)
end

get("/dice/sides") do
  :num_dice.times do 
    roll_output=Array.new
    roll= rand(1...:num_sides)
    roll_output.push(roll)
  end 

roll_output.each do |show|
  

end
