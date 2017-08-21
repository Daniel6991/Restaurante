class User < ApplicationRecord
  # Definir relaciones
  has_many :items, dependent: :destroy
  has_many :bids, dependent: :destroy

  # Validar presencia de nombre y correo electrónico
  validates :name, :email, presence: true

  # Validar cantidad de créditos del usuario
  validates :credits,            
            presence: true,
            numericality: { greater_than_or_equal_to: 0.0 }
            
            validates :password, presence: true, length: { minimum: 8 }
  has_secure_password # esto hará uso de la gema que gemos instalado antes

  # Validar que el correo sea único
  validates :email, uniqueness: true
end
class User < ApplicationRecord
  # ...

  after_create do
    self.user_token ||= UserToken.create
  end
end