def stock_picker (stocks)
    best_sells = Array.new
    buy_price = Array.new
    sell_price = Array.new
    buy_sell = Array.new

    stocks.each do |first_num, next_num|
        i = 1
        while i < stocks.length

        next_num = stocks[stocks.index(first_num) + i] 
        total = next_num.to_i - first_num.to_i

        best_sells.push(total)
        buy_price.push(first_num)
        sell_price.push(next_num)
        
        i += 1
        end
    end

    buy_sell[0] = stocks.index(buy_price[best_sells.index(best_sells.max)])
    buy_sell[1] = stocks.index(sell_price[best_sells.index(best_sells.max)])
   
    p buy_sell
    p stocks
end

data = [17,3,6,9,15,8,6,1,10].shuffle
stock_picker(data)

