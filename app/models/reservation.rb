class Reservation < ActiveRecord::Base

validates :res_date, :res_time, :party, :patron_id, :last_name, :first_name, :supervisor, :presence => true
validates_numericality_of :party, :only_integer => true, :message => "- Please Enter a Numberic Value"

default_scope :order => "res_time" 


end
 