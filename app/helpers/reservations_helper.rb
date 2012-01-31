module ReservationsHelper

  def count(date, time)
     Reservation.find(:all, :conditions => ['res_date=? and outlet=? and res_time=?', date, @outlet, time], :select => 'sum(party) as total_patrons')
  end


end
