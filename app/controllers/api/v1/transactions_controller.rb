class Api::V1::TransactionsController < ApplicationController 
    def create
        # Create new transaction
        transaction = Transaction.new(transaction_params)

        if transaction.save
            render json: {status: "Success", message: "Transaction was created successfully!", data: transaction}, status: :created
        else
            render json: transaction.errors, status: :unprocessable_entity
        end
    end

    private
    # set up strong parameter
    def transaction_params
        params.permit(:transaction_type, :receiver, :seller, :status, :trip_id, :observation)
    end
end
