json.extract! ticket, :id, :order_number, :order_date, :client_id, :equipment_descrip, :equipment_password, :equipment_state, :observations, :diagnostic, :cost, :created_at, :updated_at
json.url ticket_url(ticket, format: :json)
