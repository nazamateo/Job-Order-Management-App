Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get "/joborders", to: "job_orders#index"
  get "/joborders/new", to:"job_orders#new"
  post "/joborders", to: "job_orders#create"
  get "/joborders/number=:job_order_number", to: "job_orders#show_job_order_number"
  get "/joborders/service=:service", to: "job_orders#show_service"
  get "/joborders/edit/number=:job_order_number", to: "job_orders#edit"
  put "/joborders", to: "job_orders#put"

  # delete "/joborders/delete/number=:job_order_number", to: "job_orders#destroy"




  # get "/joborders/department=:department", to: "job_orders#show_department"
  # get "/joborders/month=:created_at_month", to: "job_orders#show_created_at_month"
  # get "/joborders/year=:created_at_year", to: "job_orders#show_created_at_year"

  # get "/joborders/&month=:created_at_month&year=:created_at_year&service=:service", to: "job_orders#show_created_at_month_year_service"
  # get "/joborders/&year=:created_at_year&service=:service", to: "job_orders#show_created_at_year_service"
end
