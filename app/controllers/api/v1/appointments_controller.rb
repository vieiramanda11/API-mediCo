class Api::V1::AppointmentsController < ApplicationController
  include CurrentUserConcern

  def index
    @appointments = Appointment.all
    render json: @appointments
  end

  def create
    if @current_user
      @appointment = @current_user.appointments.build(appointment_params)
      if @appointment.save
        render json: @appointment
      else
        render json: { status: 401 }
      end
    end
  end

  private

    def appointment_params
      params.require(:appointment).permit(:time, :date, :user_id, :doctor_id)
    end
end
