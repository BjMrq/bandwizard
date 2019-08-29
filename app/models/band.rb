class Band < ApplicationRecord
  has_many :band_photos
  has_many :needed_instruments
  has_many :instruments, through: :needed_instruments
  has_many :style_bands
  has_many :styles, through: :style_bands
  has_many :ffavorite_band_artists
  has_many :favorite_artists, through: :favorite_band_artists
  belongs_to :user
  accepts_nested_attributes_for :band_photos

  has_many :starred_bands
  # search
  scope :instrument, -> (instrument) { where instrument: instrument }
  scope :style, -> (style) { where style: style }
  scope :address, -> (address) { where address: address }
end
