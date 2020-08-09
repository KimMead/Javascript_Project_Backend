class QuotesController < ApplicationController

    def index
        quotes = Quote.all 
        render json: quotes
    end 

    def create
        quote = Quote.new(quote_params) 
        if quote.save
            render json: quote, status: :accepted
        else
            render json: {errors: syllabus.errors.full_messages}, status: :unprocessible_entity
        end 
    end


    private
    def quote_params
        params.require(:quote).permit(:content, :category_id)
    end 
end