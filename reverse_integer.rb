# @param {Integer} x
# @return {Integer}
def reverse(x)
  negative = x < 0

  if -2**31 <= x && x <= 2**31 -1
    answer = x.to_s.reverse.to_i
  else
    return 0
  end

  if -2**31 <= answer && answer <= 2**31 -1
    if negative
      return answer * -1
    else
      return answer
    end
  else
    return 0
  end
end
