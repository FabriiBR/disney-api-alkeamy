Alkemy Challenge Ruby

`Gemas Utilizadas
- Pundit ( Authorization )
- Device ( Login Sign in Sign up)
- Jbuilder( Views JSON )
- PG ( PostgreSQL )
- Simple Token Authentication

`Rutas
- Create
- Index
- Show
- Destroy
- Update
- Search

`Validaciones
- Film 
    validates :title, uniqueness: { case_sensitive: true}
    validates :title, :genre, :directed_by, presence: true
    validates :rating, inclusion: { in: %w(1 2 3 4 5)}
- Character
    validates :name, uniqueness: true
    validates :name, :age, :history, presence: true