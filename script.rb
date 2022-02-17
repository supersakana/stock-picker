# ruby script.rb

def stock_picker (stocks)
    best_sells = Array.new
    buy_price = Array.new
    buy_day = Array.new

    stocks.each do |first_num, next_num|
        i = 1
        while i < stocks.length

        next_num = stocks[stocks.index(first_num) + i] 
        total = next_num.to_i - first_num.to_i

        if total > 0
        
            best_sells.push(total)
            buy_price.push(first_num)

            end
        i += 1
        end
    end
    buy_day[0] = stocks.index(buy_price[best_sells.index(best_sells.max)])
    puts buy_day
end

data = [17,3,6,9,15,8,6,1,10]
stock_picker(data)

