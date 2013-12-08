CalculatorView = {}

middleX = display.contentWidth/2

function CalculatorView:new()
	local calculatorView={}

	function calculatorView:init()
	    local firstNo = native.newTextField( 40, 85, 240, 80)

		firstNo.x = middleX
		firstNo.y = 100
		firstNo:setTextColor( 0,0,0)
		firstNo.size = 17
		firstNo.align = "center"
		firstNo.text = "1"
		calculatorView.firstNo = firstNo

		local secondNo = native.newTextField( 40, 85, 240, 80)
		secondNo.x = middleX
		secondNo.y = 200
		secondNo:setTextColor( 0,0,0)
		secondNo.size = 17
		secondNo.align = "center"
		secondNo.text = "2"

		calculatorView.secondNo = secondNo

		local result = native.newTextField( 40, 85, 240, 80)
		result.x = middleX
		result.y = 300
		result:setTextColor( 0,0,0)
		result.size = 17
		result.align = "center"

		calculatorView.result = result

		local calculateButton = display.newRect(0,0, 50,50)
		calculateButton.x = middleX
		calculateButton.y =  400


		calculatorView.calculateButton = calculateButton
		function calculatorView.calculateButton:touch(event)
			Runtime:dispatchEvent({name="onCalculateButton", target=calculatorView.calculateButton})
		end

		calculatorView.calculateButton:addEventListener("touch", calculatorView.calculateButton)
		
	end

	return calculatorView
end


return CalculatorView