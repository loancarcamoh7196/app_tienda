# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
brands =  [
    {
        name: 'Dior', 
        description: 'Christian Dior, S.A. (más conocida como Dior) es un minorista de ropa francés, bajo control del grupo LVMH. La compañía fue fundada por el diseñador de moda Christian Dior.
        Christian Dior, S.A. en sí controla el 42% de los activos de LVMH, que lleva otras marcas de ropa como Kenzo, Givenchy y Louis Vuitton.',
        icon:'brands/dior_809319.png'
    },
    {   
        name: 'Nike',
        description: 'Nike Inc.nota 1​ (del griego: Νίκη, Niké, diosa de la victoria ;4​ NYSE: NKE) es una empresa multinacional estadounidense dedicada al diseño, desarrollo, fabricación y comercialización de balones, calzado, ropa, equipo, accesorios y otros artículos deportivos. ',
        icon: 'brands/nike_001.png'
    },
    {
        name: 'Americanino',
        description: '',
        icon: 'brands/americanino_001.png'
    },
    {
        name: 'Converse',
        description: '',
        icon: 'brands/converse_001.png'
    },
    {
        name: 'Wados',
        description: '',
        icon: 'brands/wados_logo-1.png'
    }
]
Brand.destroy_all

brands.each do |b|
    Brand.create(
        name: b[:name],
        description: b[:description],
        icon: b[:icon]
    )
end


