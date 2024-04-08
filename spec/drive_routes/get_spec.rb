require "rails_helper"

RSpec.describe "Drive Routes", type: :request do
    before do 
        truck = Vehicle.create( classification:"TRUCK", brand:"SCANIA", year: 2013, color: "RED", fuel:"DIESEL", identification_plate: "FHFN30")

        driver = Driver.create(name:"PEDRO", last_name:"PASCAL", email:"pedro.pascal@gmail.com", phone:56900000000, contractor_company: "Transportes PASCAL S.A.")

        drive_route = DriveRoute.create(name: "RUTA COSTERA", start_date: "2020-02-02".to_date, limit_date: "2020-02-28".to_date, status_route: "PAVED", company: "MALL NACIONAL", vehicle_id: 1, driver_id: 1)

        trip1 = Trip.create(origin: "Santiago", destiny: "Melipilla", start_date: "2020-02-02".to_date, end_date: "2020-02-02".to_date, stops: 0, status: "Finalizado", drive_route_id: 1, priority: 1)

        trip2 = Trip.create(origin: "Melipilla", destiny: "Chocalan", start_date: "2020-02-02".to_date, end_date: "2020-02-02".to_date, stops: 0, status: "Finalizado", drive_route_id: 1, priority: 2)

        trip3 = Trip.create(origin: "Chocalan", destiny: "San Pedro", start_date: "2020-02-02".to_date, end_date: "2020-02-03".to_date, stops: 1, status: "Finalizado", drive_route_id: 1, priority: 3)

        trip4 = Trip.create(origin: "San Pedro", destiny: "Pichilemu", start_date: "2020-02-03".to_date, end_date: "2020-02-03".to_date, stops:0 , status: "Finalizado", drive_route_id: 1, priority: 4)

        trip5 = Trip.create(origin: "Pichilemu", destiny: "Curico", start_date: "2020-02-03".to_date, end_date: "2020-02-04".to_date, stops:1 , status: "Finalizado", drive_route_id: 1, priority: 5)

        trip6 = Trip.create(origin: "curico", destiny: "La Serena", start_date: "2020-02-04".to_date, end_date: nil, stops:2 , status: "En Camino", drive_route_id: 1, priority: 6) 

        transaction1 = Transaction.create(transaction_type: "Retiro", receiver: "Jefe Bodega 1", seller: "Vendedor 1", status: "Retiro Completo", trip_id: 1, observation: "Tiempo de espera de 1 hora", transaction_date: "2020-02-02 14:00".to_time)

        transaction2 = Transaction.create(transaction_type: "Entrega", receiver: "Jefe Bodega 1", seller: "Vendedor 1", status: "Despacho Completo", trip_id: 2, observation: "Container entregado en bodega", transaction_date: "2020-02-02 15:00".to_time)

        transaction3 = Transaction.create(transaction_type: "Retiro", receiver: "Jefe Bodega 2", seller: "Vendedor 2", status: "No Retirado", trip_id:3, observation: "Proveedor cerrado", transaction_date: "2020-02-03 13:00".to_time)

        transaction4 = Transaction.create(transaction_type:"Entrega", receiver: "Jefe Bodega 2", seller: "Vendedor 2", status: "No Entregado", trip_id: 4, observation: "Sin carga para entregar", transaction_date: "2020-02-03 15:00".to_time)

        transaction5 = Transaction.create(transaction_type: "Retiro", receiver: "Jefe Mayorista 1", seller: "Vendedor 3", status: "Parcialmente Retirado", trip_id: 5, observation: "Solo se retira 1 de 2 ramplas", transaction_date: "2020-02-03 16:00".to_time)

        transaction6 = Transaction.create(transaction_type: "Entrega", receiver: "Jefe Mayorista 1", seller: "Vendedor 3", status: "Parcialmente Entregado", trip_id: 6, observation: "Solo se entrega 1 de 2 ramplas", transaction_date: nil)
    end

    scenario "Get all data from drive routes endpoint" do
        get "http://localhost:3000/api/v1/drive_routes/1"
        expect(response).to have_http_status(:success)
        drive_route = JSON.parse(response.body)
        expect(drive_route).to  be_present
    end


end
