class Reservation < ActiveRecord::Base

default_scope :order => "res_date ASC"


end
 