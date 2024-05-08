class EmployeesController < ApplicationController
  before_action :set_employee, only: [:edit, :update, :show, :destroy]
    def index
      @employees = Employee.all
      # @employee = @employees.first
    end
  
    def new
      @employee = Employee.new
    end
  
    def create
      @employee = Employee.new(employee_params)
      if @employee.save
        redirect_to employees_path, notice: 'Employee was successfully created.'
      else
        render :new
      end
    end
    def edit
      # @employee=Employee.find(params[:id])  
    end
    def update
      # @employee=Employee.find(params[:id])  
      if @employee.update(employee_params)
        redirect_to employees_path, notice: 'Employee was successfully updated.'
      else
        render :edit
      end
    end
    def show
      # @employee=Employee.find(params[:id])  
    end

    def destroy
      # @employee = Employee.find(params[:id])
      @employee.destroy
      respond_to do |format|
        format.html { redirect_to employees_path, notice: 'Employee was successfully deleted.' }
        format.js   
      end
    end

    private
  
    def employee_params
      params.require(:employee).permit(:f_name, :m_name, :surname)
    end
    def set_employee
      @employee = Employee.find(params[:id])
    rescue ActiveRecord::RecordNotFound => error
      redirect_to employees_path, notice: error
    end
  end
