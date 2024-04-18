# frozen_string_literal: true

def create_user(email, password)
  user = User.new(email:, password:)
  user.skip_confirmation!
  user.save
end

def create_artist(name)
  artist = Artist.new(name:)
  artist.save
end

def create_event(date, duration, artist)
  event = Event.new(date:, duration:, artist:)
  event.save
end

create_user('vaillant.jeremy@dev-crea.com', 'yopyop')
create_artist('tagada')
create_event(Date.new(2025, 12, 1), 1.day, Artist.find_by(name: 'tagada'))
