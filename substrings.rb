def substring(str, dic)
    aux = str.downcase
    aux = aux.split(/[^A-Za-z]/)
    aux.delete_if{|item| item.length <=1 && item != "a"}
    
    aux.reduce(Hash.new(0)) do |result, item| 
        dic.each do |word|
        
            if item.include? word
                result[word] += 1
            end
        end
        
        result
    end

end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
puts substring("below", dictionary)
puts substring("Howdy partner, sit down! How's it going?", dictionary)
