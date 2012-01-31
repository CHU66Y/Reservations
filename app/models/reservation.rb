class Reservation < ActiveRecord::Base

default_scope :order => "res_time" 


end
 