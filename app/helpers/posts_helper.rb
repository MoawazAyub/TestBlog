module PostsHelper
	def calendar(month, year)

		cal_str =  "<table border='1'>"
		cal_str += "<tr>"
		cal_str +=	"<td>&nbsp;</td>"
		6.times do | day |
			cal_str += "<td>#{day + 1}</td>"
		end
		cal_str +=	"</tr>"
		cal_str +=  "</table>"

		return cal_str.html_safe
		
	end

	def RandomNum(val)
		sum = val + 3
	end
end
