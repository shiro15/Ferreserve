class ReservationsController < ApplicationController

  def index
  end

  def show
  end

  def new
    @user = current_user
    @reservation = Reservation.new(service_id: params[:service_id])
  end

  def create
    @reservation = Reservation.new(reservation_params)
    if @reservation.save
      redirect_to @reservation, notice: "予約が完了しました。"
    else
      render "new"
    end
  end

  def destroy
  end

  private
  def reservation_params
    attrs = [:service_id, :user_id, :people_num, :kids_num, :meal, :car, :room_num]
    params.require(:reservation).permit(attrs)
  end
end
