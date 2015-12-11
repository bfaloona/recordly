module Recordly
  class App < Padrino::Application
    use ConnectionPoolManagement
    register Padrino::Mailer
    register Padrino::Helpers
    register Padrino::Warden

    Warden::Strategies.add(:password) do
      def valid?
        params["email"] || params["password"]
      end

      def authenticate!
        u = User.authenticate(params["email"], params["password"])
        u.nil? ? fail!("Could not log in") : success!(u)
      end
    end

    Warden::Manager.serialize_into_session do |user|
      user.id
    end

    Warden::Manager.serialize_from_session do |id|
      User.find(id)
    end

    enable :sessions

  end
end
