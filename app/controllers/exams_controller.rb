class ExamsController < ApplicationController
  def index
    @exams = Exam.all
  end

  def show
    @exam = Exam.find(params[:id])
  end

  def new
    @patient = Patient.find(params[:patient_id])
    @exam = Exam.new
  end

  def create
    @patient = Patient.find(params[:patient_id])
    @exam = Exam.new(exam_params)
    @patient.exams << @exam
    if @exam.save
      flash[:notice] = "Exam created"
      redirect_to patient_path(@patient)
    end

  end

  private
    def exam_params
      params.require(:exam).permit(:e18 => [], :e17 => [], :e16 => [], :e15 => [], :e14 => [], :e13 => [], :e12 => [], :e11 => [], :e21 => [], :e22 => [], :e23 => [], :e23 => [], :e24 => [], :e25 => [], :e26 => [], :e27 => [], :e28 => [], :e48 => [], :e47 => [], :e46 => [], :e45 => [], :e44 => [], :e43 => [], :e42 => [], :e41 => [], :e31 => [], :e32 => [], :e33 => [], :e34 => [], :e35 => [], :e36 => [], :e37 => [], :e38 => [])
    end
end
