def substring(str, dic)
  aux = str.downcase
  aux = aux.split(/[^A-Za-z]/)
  aux.delete_if { |item| item.length <= 1 && item != 'a' }

  aux.each_with_object(Hash.new(0)) do |item, result|
    dic.each do |word|
      result[word] += 1 if item.include? word
    end
  end
end

dictionary = %w[below down go going horn how howdy it i low own part partner sit]
puts substring('below', dictionary)
puts substring("Howdy partner, sit down! How's it going?", dictionary)
