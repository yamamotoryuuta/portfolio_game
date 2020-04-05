require './games/brave'
require './games/monster'
require './games/games_controller'
require './games/input_name'

games_controller = GamesController.new
input_name = InputName.new

input_name.input_name

brave = Brave.new(name: input_name.push_name, hp: 500, offense: 150, defense: 100)
slime = Monster.new(name: "スライム", hp: 250, offense: 200, defense: 100)

games_controller.battle(brave: brave, monster: slime)