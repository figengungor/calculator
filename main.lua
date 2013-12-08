local calculatorModel = require("calculatorModel")
local calculatorView = require("calculatorView")
local calculatorController = require("calculatorController")

model = calculatorModel:new()

view = calculatorView:new()
view:init()

controller = calculatorController:new()

controller:init(model, view)