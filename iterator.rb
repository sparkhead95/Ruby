def greet(*names)
	case names.length
	when 0
		"How sad!"
	when 1
		"Hello #{names}. Just the one!"
	when 2..5
		"Hello #{names.join(', ')}."
	when 5..10
		"#{names.length} students."
	else
		"Wow #{names.length} students!? Fifty yeah?!"
	end
end
