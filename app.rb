require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    @name = params[:name]
    "#{@name.reverse}"
  end

  get '/square/:number' do
    @number = Integer(params[:number])
    "#{@number ** 2}"
  end

  get '/say/:number/:phrase' do
    @number = Integer(params[:number])
    @phrase = params[:phrase]
    # @number.times do
    #   "#{@phrase}"
    #   binding.pry
    (1..@number).map do
      "#{@phrase} "
    end
    ## works because if you return an integer (instead of an array) it will interpret this as an error message
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @word1 = params[:word1]
    @word2 = params[:word2]
    @word3 = params[:word3]
    @word4 = params[:word4]
    @word5 = params[:word5]
    "#{@word1} #{@word2} #{@word3} #{@word4} #{@word5}."
  end

  get '/:operation/:number1/:number2' do
    @operation = params[:operation]
    @number1 = Integer(params[:number1])
    @number2 = Integer(params[:number2])
    if @operation == "add"
      "#{@number1 + @number2}"
    elsif @operation == "subtract"
      "#{@number1 - @number2}"
    elsif @operation == "multiply"
      "#{@number1 * @number2}"
    elsif @operation == "divide"
      "#{@number1 / @number2}"
    end
  end


end