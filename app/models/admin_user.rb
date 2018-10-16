class AdminUser < ApplicationRecord
  has_and_belongs_to_many :pages
  has_many :section_edits
  has_many :sections, through: :section_edits

  # def me #infinite loop if all asociations are working
  #   self.sections.first.page.admin_users.first.me
  # end
end
