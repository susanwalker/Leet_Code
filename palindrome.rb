# @param {Integer} x
# @return {Boolean}
def is_palindrome(x)

  if -2**31 <= x && x <= 2**31 -1
    if x.to_s.reverse == x.to_s
      return true
    end
  end

  return false
end
