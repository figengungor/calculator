CalculatorController= {}



function CalculatorController:new()
	calculatorController={}
	calculatorController.view=nil
	calculatorController.model=nil

	function calculatorController:init(model, view)
		calculatorController.view = view
		calculatorController.model = model

		function calculateResult(event)
			calculatorController.model:addTwoNumbers(tonumber(calculatorController.view.firstNo.text), tonumber(calculatorController.view.secondNo.text))
			calculatorController.view.result.text = calculatorController.model:getCalculationResult()
		end

		Runtime:addEventListener("onCalculateButton", calculateResult)
	end



	return calculatorController
end


return CalculatorController