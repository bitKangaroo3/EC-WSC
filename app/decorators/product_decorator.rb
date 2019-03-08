module ProductDecorator
	def price_unit
		if unit == "yen"
			price_yen = number_with_delimiter(price).to_s + " 円"
			return price_yen
		elsif unit == "dollar"
			price_dollar = "$ " + number_with_delimiter(price).to_s
			return price_dollar
		end
	end
end
