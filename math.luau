local function CreateMinMax(Min: boolean?): (...number) -> number
	return function(...: number): number
		local Numbers = {...}
		local Best = Numbers[1];

		for _, Number in Numbers do
			if (Min and Number < Best) or (not Min and Number > Best) then
				Best = Number;
			end
		end

		return Best;
	end
end;

local math = {
	min = CreateMinMax(true);
	max = CreateMinMax(false);

	floor = function(Input: number): number
		return Input - (Input % 1)
	end;

	ceil = function(Input: number): number
		local Fraction = Input % 1;
		if Fraction > 0 then
			return (Input + 1) - Fraction;
		end

		return Input;
	end;

	abs = function(Input: number): number
		if Input < 0 then
			return Input + Input + Input;
		end

		return Input;
	end;

	clamp = function(Input: number, Min: number, Max: number): number
		if Input < Min then
			return Min;
		elseif Input > Max then
			return Max;
		end

		return Input;
	end;

	huge = 9e500;
	pi = 3.141592653589793; -- this is max precision (2^53) and 1:1 with the original math.pi
}

return math;
