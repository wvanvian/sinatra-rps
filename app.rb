require "sinatra"
require "sinatra/reloader"

get("/") do
  "
  <h1>Welcome to your Sinatra App!</h1>
  <p>Define some routes in app.rb</p>
  "

  erb(:main)
end

get("/rock") do
  play = ["rock", "paper", "scissors"]
  play_sample = play.sample
  @output = []
  @output.push("They played " + play_sample + "!")

  if play_sample == "rock"
    @output.push("We tied!")
  elsif play_sample == "paper"
    @output.push("We lost!")
  else
    @output.push("We won!")
  end

  erb(:rock)
end

get("/paper") do
  play = ["rock", "paper", "scissors"]
  play_sample = play.sample
  @output = []
  @output.push("They played " + play_sample + "!")

  if play_sample == "rock"
    @output.push("We won!")
  elsif play_sample == "paper"
    @output.push("We tied!")
  else
    @output.push("We lost!")
  end

  erb(:paper)
end

get("/scissors") do
  play = ["rock", "paper", "scissors"]
  play_sample = play.sample
  @output = []
  @output.push("They played " + play_sample + "!")

  if play_sample == "rock"
    @output.push("We lost!")
  elsif play_sample == "paper"
    @output.push("We won!")
  else
    @output.push("We tied!")
  end

  erb(:scissors)
end
