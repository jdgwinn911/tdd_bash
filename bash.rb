def check_for_match(myticket, winningticket)
   my_ticket = myticket.split('')
   puts "my ticket is #{my_ticket}"
   winning_ticket = winningticket.split('')
   puts "winning ticket is #{winning_ticket}"
   matching_num = 0
   winning_ticket.each_with_index do |num, index|
    puts "num is #{num} and index is #{index} "
        if num == myticket[index]
            matching_num = matching_num + 1
        end
    end
    matching_num
end

def check_for_match_arr(myticketarray, winningticket)
end
# def end_result(check_for_match(myticket, winningticket))
# end


 