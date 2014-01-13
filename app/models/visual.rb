class Visual < ActiveRecord::Base

  belongs_to :post

  has_attached_file :upload, 
    :styles => { 
      :mini => "100x100",
      :sm => "400x300",
      :med => "1000x750",
      :lrg => "2000x15000" },
    :convert_options => {
      :mini => "-quality 85 -strip",
      :sm => "-quality 85 -strip",
      :med => "-quality 85 -strip",
      :lrg => "-quality 85 -strip" }

  validates_attachment_size :upload, :less_than => 3.megabytes

end
