class AddEvent < ApplicationRecord
  extend FriendlyId
  friendly_id :nome_do_evento, use: :slugged

  def should_generate_new_friendly_id
    nome_do_evento_changed?
  end
end
