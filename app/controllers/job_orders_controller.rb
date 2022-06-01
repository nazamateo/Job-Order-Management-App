class JobOrdersController < ApplicationController

    def index
        @job_orders = JobOrder.all
    end
    
    def new
        @date_today = date_today("%a, %d %b %Y")
    end

    def create
        JobOrder.create service: params[:service], department: params[:department].upcase, description: params[:description], remarks_as_of: Date.today , created_at_month: date_today("%m"), created_at_year: date_today("%Y"), created_at_day: date_today("%d")
        redirect_to action: "show_job_order_number", job_order_number: JobOrder.last.job_order_number
    end

    def show_job_order_number
        @job_orders = JobOrder.where "job_order_number = ?", params[:job_order_number] 
    end
    
    def show_service
        @job_orders = JobOrder.where "service = ?", params[:service]
    end

    def edit
        @jo = JobOrder.find_by job_order_number: params[:job_order_number]
    end

    def put
        JobOrder.find_by(job_order_number: params[:job_order_number]).update classification: params[:classification], engineering_unit: params[:engineering_unit], status: params[:status], remarks: params[:remarks], remarks_as_of: Date.today
        redirect_to action: "show_job_order_number", job_order_number: params[:job_order_number], notice: "Job Order edit successful!"
    end

    def date_today(str)
        Date.today.strftime(str)
    end

        # def destroy
    #     @jo = JobOrder.find_by job_order_number: params[:job_order_number]
    #     @jo.destroy
    # end
    
    # def show_department
    #     @job_orders = JobOrder.where "department = ?", params[:department]
    # end

    # def show_created_at_month
    #     @job_orders = JobOrder.where "created_at_month = ?", params[:created_at_month]
    # end
    
    # def show_created_at_year
    #     @job_orders = JobOrder.where "created_at_year = ?", params[:created_at_year]
    # end

    # def show_created_at_month_year_service
    #     @job_orders = JobOrder.where "created_at_month = ? AND created_at_year = ? AND service = ?",  params[:created_at_month], params[:created_at_year], params[:service]
    # end
    
    # def show_created_at_year_service
    #     @job_orders = JobOrder.where "created_at_year = ? AND service = ?", params[:created_at_year], params[:service]
    # end
end