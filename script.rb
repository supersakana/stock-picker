# ruby script.rb

def stock_picker (stocks)
    buy_sell = Array.new
    best_sells = Array.new

    stocks.each do |first_num, next_num|
        i = 1
        while i < stocks.length
        next_num = stocks[stocks.index(first_num) + i] 
        total = next_num.to_i - first_num.to_i
        if total > 0
            puts "#{next_num} - #{first_num} = #{total}"
            best_sells.push(total)
            end
        i += 1
        end
    end
    print best_sells
end

data = [17,3,6,9,15,8,6,1,10]
stock_picker(data)

