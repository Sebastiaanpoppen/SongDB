class Artist < ApplicationRecord
has_many :songs
has_many :photos

filterrific(
    default_filter_params: { sorted_by: 'name_asc' },
    available_filters: [
      :sorted_by,
    ]
  )

  scope :sorted_by, lambda { |sort_key|
  }

  def self.options_for_sorted_by
     [
       ['Name (a-z)', 'name_asc'],
       ['Name (z-a)', 'name_desc'],
     ]
   end




end
