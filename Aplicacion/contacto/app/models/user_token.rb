class User < ApplicationRecord
  # ...
  has_one :user_token, dependent: :destroy

  # Acceso directo al attributo `token` de `user_token`
  delegate :token, to: :user_token
  # Ahora, `user.user_token.token`puede ser accedido como `user.token`.
end
class UserToken < ApplicationRecord
  belongs_to :user
   validates :user, presence: true
end
class UserToken < ApplicationRecord
  # ...

  def self.generate_unique_secure_token
    "my_api_#{super}"
  end
end
