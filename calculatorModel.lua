CalculatorModel={}


function CalculatorModel:new()
	local calculatorModel={}

	calculatorModel.calculationResult=nil

	function calculatorModel:addTwoNumbers(firstNo, secondNo)
		self.calculationResult = firstNo+secondNo
	end

	function calculatorModel:getCalculationResult()
		return self.calculationResult
	end

	return calculatorModel

end


return CalculatorModel