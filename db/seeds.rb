# Seed User
user = User.find_or_initialize_by(email: 'fa@gmail.com')
user.password = '123456'
user.password_confirmation = '123456'
user.save

# Seed Characters
mulan = Character.find_or_initialize_by(name: 'Fa Mulan', age: '16', history: 'Está inspirada en la legendaria Hua Mulan del poema chino Balada de Mulan. Está incluida en la lista oficial de Princesas Disney.')
rapun = Character.find_or_initialize_by(name: 'Rapunzel', age: '18', history: 'Basada en el cuento de los Hermanos Grimm')
jasmi = Character.find_or_initialize_by(name: 'Jasmin', age: '15', history: 'Princesa de Aladino y la lampara maravillosa')

mulan.save!
rapun.save!
jasmi.save!

#Seed Films
film1 = Film.find_or_initialize_by(title: 'Mulan', release_date: '1998', directed_by: 'Tony Bancroft & Barry Cook', rating: '4', genre:'Animation')
film2 = Film.find_or_initialize_by(title: 'Enredados', release_date: '2010', directed_by: 'Glen Keane', rating: '4', genre: 'Animation')
film3 = Film.find_or_initialize_by(title: 'Aladdin', release_date: '1992', directed_by: 'Ron Clements & John Msuker', rating: '5', genre: 'Animation')

film1.save!
film2.save!
film3.save!

#Seed Casting
cast1 = Casting.find_or_initialize_by(character_id: mulan.id, film_id: film1.id, actor: 'Liu Yifei')
cast2 = Casting.find_or_initialize_by(character_id: rapun.id, film_id: film2.id, actor: 'Mandy Moore')
cast3 = Casting.find_or_initialize_by(character_id: jasmi.id, film_id: film3.id, actor: 'Linda Larking')

cast1.save
cast2.save
cast3.save