class Api::V1::DriveRoutesController < ApplicationController 
    # Show a specific drive route
    def show
        drive_route = DriveRoute.find(params[:id])
    
        if drive_route
            trips = drive_route.trips
            transactions = trips.includes(:transactions).all.map { |t| t.transactions }
            render json: {data:{
                            drive_route: drive_route,
                            trips: trips,
                            transactions: transactions}}, state: :ok
        else
        render json: {message: "Drive Route could not be found"}, status: :bad_request
        end
    end
end