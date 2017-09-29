# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

List.destroy_all
User.destroy_all
Task.destroy_all
Task.create( name: "Comer anticuchos", photo: "https://upload.wikimedia.org/wikipedia/commons/thumb/1/11/PinchosAmericanos.jpg/200px-PinchosAmericanos.jpg")
Task.create( name: "Comer Empanadas", photo: "https://upload.wikimedia.org/wikipedia/commons/thumb/9/94/Empanadas_salte%C3%B1as_1.jpg/200px-Empanadas_salte%C3%B1as_1.jpg")
Task.create( name: "Bailar Pie de Cueca", photo: "https://upload.wikimedia.org/wikipedia/commons/thumb/4/42/Cueca_en_La_Moneda.jpg/220px-Cueca_en_La_Moneda.jpg")
Task.create( name: "Tomar Terremoto", photo: "http://ekladata.com/-4uUgNnUnj18o7nC6Xu7xwskno4.png")
Task.create( name: "Comer Asado", photo: "https://es.globalvoicesonline.org/wp-content/uploads/2013/10/Asado-estaca-Ros_035.jpg")
Task.create( name: "Elevar Volantines", photo: "https://i.ytimg.com/vi/0r6tsB3HgKk/maxresdefault.jpg")
Task.create( name: "Ir al rodeo", photo: "http://www.purocaballo.cl/imagen/1464020585.jpg")
Task.create( name: "Ir a las Fondas", photo: "http://olimpicastereo.com.co/wp-pics/uploads/2014/08/IMG_20140803_142141.jpg")
