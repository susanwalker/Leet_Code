def longest_common_prefix(strs)
  prefix = ''
  candidate = ''

  return prefix if strs.empty?

  strs[0].chars.each do |char|
    candidate << char
    valid = strs.all? { |str| str.start_with?(candidate) }
    # do and end replace with {} and space

    break unless valid

    prefix << char
  end

  prefix
end