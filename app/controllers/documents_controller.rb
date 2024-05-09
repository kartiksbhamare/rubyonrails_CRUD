class DocumentsController<ApplicationController 
    before_action :set_document , only: [:edit, :update, :show, :destroy]
    def index
      @documents = Document.all
      # @employee = @employees.first
    end
  
    def new
      @document = Document.new
    end
  
    def create
      @document = Document.new(document_params)
      if @document.save
        redirect_to documents_path, notice: 'document was successfully created.'
      else
        render :new
      end
    end
    def edit
      # @employee=Employee.find(params[:id])  
    end
    def update
      # @employee=Employee.find(params[:id])  
      if @document.update(document_params)
        redirect_to documents_path, notice: 'document was successfully updated.'
      else
        render :edit
      end
    end
    def show
      # @employee=Employee.find(params[:id])  
    end

    def destroy
      # @employee = Employee.find(params[:id])
      @document.destroy
      respond_to do |format|
        format.html { redirect_to documents_path, notice: 'document was successfully deleted.' }
        format.js   
      end
    end

    private
  
    def document_params
      params.require(:document).permit(:name, :type, :employee_id, :image)
    end
    def set_document
      @document = Document.find(params[:id])
    rescue ActiveRecord::RecordNotFound => error
      redirect_to documents_path, notice: error
    end
end