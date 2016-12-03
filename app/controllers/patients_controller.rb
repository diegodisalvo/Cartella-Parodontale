class PatientsController < ApplicationController
  def index
    if user_signed_in?
      if params[:search]
        # @patients = Patient.search(params[:search]).where(:users => current_user).order('last_name ASC')
        @patients = current_user.patients.search(params[:search]).order('last_name ASC')
      else
        @patients = Patient.all.order('last_name ASC')
      end
    else
      flash[:alert] = 'Devi essere registrato e accedere al tuo profilo per poter cercare i pazienti'
      redirect_to(:controller => 'home', :action => 'index')
    end
  end

  def show
    @patient = Patient.find(params[:id])
    @exams = @patient.exams.order('created_at ASC')
  end

  def new
    @patient = Patient.new
  end

  def create
    @patient = Patient.new(patient_params)
    if @patient.save
      flash[:notice] = 'Paziente salvato correttamente'
      redirect_to patient_path(@patient)
    end
  end

  def edit
    @patient = Patient.find(params[:id])
  end

  def update
    @patient = Patient.find(params[:id])
    if @patient.update_attributes(patient_params)
      flash[:notice] = "Dati paziente aggiornati"
      redirect_to patient_path(@patient)
    end
  end

  private
  def patient_params
    params.require(:patient).permit(:name, :last_name, :birth_date, :familiarity, :smoker, :last_hygiene, :anamnesis, :allergies, :intollerances, :drugs)
  end
end
