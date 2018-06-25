def check_for_match(myticket, winningticket)
   myticket = myticket.split('')
   winningticket = winningticket.split('')
   matching_num = 0
   winningticket.each_with_index do |num, index|
    if num == myticket[index]
        matching_num += 1
    end
end
matching_num
end

