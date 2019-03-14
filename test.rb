stocks1 = [14, 1, 18, 23, 12, 8, 16] # 15
stocks2 = [14, 1, 18, 23, 12, 16] # 13

# def BiggestLoss(arr)
#     buy=arr[0]
#     maxLoss=0
#     arr.each do |e|
#         if e > buy
#             buy = e
#         end
#         if buy-e > maxLoss
#             maxLoss = buy-e
#         end
#     end
#     return maxLoss
# end

#
# puts(BiggestLoss(stocks1))
# puts(BiggestLoss(stocks2))
#
# puts(BiggestLoss(stocks1) == 15)
# puts(BiggestLoss(stocks2) == 13)



s="(a)(b)xcy(a)z(b)"


def occurance(str,substring)
    total=0
    newstr=str.split("").delete_if{|e| substring.include?(e) == false}
    # print(newstr)
    newstr.each_with_index do |e,i|
        if substring.length == 1
                total+=1
        else
            total += occurance(newstr[(i+1)..-1].join(""),substring[1..-1])
        end
    end
    puts(total)
    return total
end

puts(occurance(s,"ab" ))
