class Category < ApplicationRecord
	has_many :subcategories, dependent: :destroy
	accepts_nested_attributes_for :subcategories, allow_destroy: true
	has_many :projects, dependent: :destroy
	accepts_nested_attributes_for :projects, allow_destroy: true
	has_many :industries, dependent: :destroy
	accepts_nested_attributes_for :industries, allow_destroy: true
end
