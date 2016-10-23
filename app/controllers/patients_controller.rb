class PatientsController < ApplicationController
  def index
    if params[:search]
      @patients = Patient.search(params[:search]).order('last_name ASC')
    else
      @patients = Patient.all.order('last_name ASC')
    end
  end

  def show
    @patient = Patient.find(params[:id])
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
  end

  private
  def patient_params
    params.require(:patient).permit(:name, :last_name, :birth_date, :familiarity, :smoker, :last_hygiene, :anamnesis, :allergies, :intollerances, :drugs)
  end
end
