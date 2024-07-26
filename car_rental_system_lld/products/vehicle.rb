# frozen_string_literal: true

class Vehicle
  attr_accessor :vehicle_id,
                :vehicle_number,
                :vehicle_type,
                :company_name,
                :model_name,
                :km_driven,
                :manufacturing_date,
                :average,
                :cc,
                :daily_rental_cost,
                :hourly_rental_cost,
                :no_of_seats,
                :status

  def set_vehicle_id(id)
    @vehicle_id = id
  end

  def set_vehicle_number(vehicle_number)
    @vehicle_number = vehicle_number
  end

  def set_vehicle_type(vehicle_type)
    @vehicle_type = vehicle_type
  end

  def set_company_name(company_name)
    @company_name = company_name
  end

  def set_model_name(model_name)
    @model_name = model_name
  end

  def set_km_driven(km_driven)
    @km_driven = km_driven
  end

  def set_manufacturing_date(manufacturing_date)
    @manufacturing_date = manufacturing_date
  end

  def set_average(average)
    @average = average
  end

  def set_cc(cc)
    @cc = cc
  end

  def set_daily_rental_cost(daily_rental_cost)
    @daily_rental_cost = daily_rental_cost
  end

  def set_hourly_rental_cost(hourly_rental_cost)
    @hourly_rental_cost = hourly_rental_cost
  end

  def set_no_of_seats(no_of_seats)
    @no_of_seats = no_of_seats
  end

  def set_status(status)
    @status = status
  end
end
