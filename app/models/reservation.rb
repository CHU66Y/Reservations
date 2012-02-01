class Reservation < ActiveRecord::Base

validates :res_date, :res_time, :party, :patron_id, :last_name, :first_name, :supervisor, :presence => true


default_scope :order => "res_time" 


end
 