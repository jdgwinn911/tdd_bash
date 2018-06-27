def check_for_match(myticket, winningticket)
   my_ticket = myticket.split('')
   puts "my ticket is #{my_ticket}"
   winning_ticket = winningticket.split('')
   puts "winning ticket is #{winning_ticket}"
   matching_num = 0
   winning_ticket.each_with_index do |num, index|
        unless num == myticket[index]
            matching_num = matching_num + 1
        end
    end
    matching_num
end

def check_for_match_arr(myticketarray, winningticket)
    empty = []
    myticketarray.each do |num| 
     check_for_match(num, winningticket)
     if check_for_match(num, winningticket) == 1
        empty << num
     end 
    end
    empty
end

def winarr(myticketarray, winningticket)
    warr = []
    winningticket.each do |num|
        matches = check_for_match_arr(myticketarray, num)
        winners = 0
        matches.each do |m|
            if m == 0
                winners += 1
            end
        end
        warr << winners
    end
    warr 
end


 