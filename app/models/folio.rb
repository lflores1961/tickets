class Folio < ApplicationRecord

  def self.next_folio
    nuevo = Folio.first
    nuevo.numero_folio += 1
    nuevo.save!
  end

  def self.get_folio
    Folio.first.numero_folio
  end

end
