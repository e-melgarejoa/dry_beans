require "rails_helper"

RSpec.describe "Transactions", type: :request do
    before do 
        truck = Vehicle.create( classification:"TRUCK", brand:"SCANIA", year: 2013, color: "RED", fuel:"DIESEL", identification_plate: "FHFN30")

        driver = Driver.create(name:"PEDRO", last_name:"PASCAL", email:"pedro.pascal@gmail.com", phone:56900000000, contractor_company: "Transportes PASCAL S.A.")

        drive_route = DriveRoute.create(name: "RUTA COSTERA", start_date: "2020-02-02".to_date, limit_date: "2020-02-28".to_date, status_route: "PAVED", company: "MALL NACIONAL", vehicle_id: 1, driver_id: 1)

        trip1 = Trip.create(origin: "Santiago", destiny: "Melipilla", start_date: "2020-02-02".to_date, end_date: "2020-02-02".to_date, stops: 0, status: "Finalizado", drive_route_id: 1, priority: 1)

    end

    scenario "Sends a post request to create a transaction" do

        post "http://localhost:3000/api/v1/transactions", params: {transaction_type: "Retiro",receiver: "Receptor 2", seller: "Vendedor 2", status: "Retiro Completo", trip_id: 1, observation: "No hay novedad"}

        expect(response).to have_http_status(:success)
        transaction = JSON.parse(response.body)
        expect(transaction["status"]).to eq("Success")
    end


end
