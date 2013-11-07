# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
#Productos
Product.create(:name => 'Cemento Gris', :description => 'Saco de 50 kg', :price => '90.32', :unit_mesure => 'Toneladas')
Product.create(:name => 'Cemento Blanco', :description => 'Saco de 50 kg', :price => '184.44', :unit_mesure => 'Toneladas')
Product.create(:name => 'Cal', :description => 'Saco de 25 kg', :price => '32.95', :unit_mesure => 'Toneladas')
Product.create(:name => 'Alambre Recocido C. 16', :description => 'Alambre recocido calibre 16', :price => '12.65', :unit_mesure => 'Kilogramo')
Product.create(:name => 'Castillo Armado 12-12-3 1/4', :description => 'Castillo armado de 3 caras de 12cm. Con tres varillas de 1/4" y estribos de varilla de 1/4"', :price => '64.48', :unit_mesure => 'Pieza')
Product.create(:name => 'Castillo Armado 10-10-3 1/4', :description => 'Castillo armado de 3 caras de 10cm. Con tres varillas de 1/4" y estribos de varilla de 1/4"', :price => '64.48', :unit_mesure => 'Pieza')
Product.create(:name => 'Castillo Armado 15-10-4 1/4', :description => 'Castillo armado de 4 caras con forma de rectangular de 10cm. X 15cm con 4 varillas de 1/4" y estribos de varilla de 1/4"', :price => '79.65', :unit_mesure => 'Pieza')
Product.create(:name => 'Castillo Armado 15-20-4 5/16', :description => 'Castillo armado de 4 caras con forma de rectangular de 15cm. X 20cm con 4 varillas de 5/16" y estribos de varilla de 1/4"', :price => '144.14', :unit_mesure => 'Pieza')
Product.create(:name => 'Clavo Std con cabeza', :description => 'Clavo est?ndar con cabeza de 2 1/2" de largo. Uso: en muro de mamposter?a y madera.', :price => '13.86', :unit_mesure => 'Kilogramo')
Product.create(:name => 'Clavo para concreto', :description => 'Clavo para concreto de 2 1/2" de largo. Uso: en concreto, castillos dalas o muros de concreto armado.', :price => '28.60', :unit_mesure => 'Kilogramo')
Product.create(:name => 'Ladrillo 12 X 24 X 2.5cm', :description => ' Ladrillo 12 X 24 X 2.5cm', :price => '2.12', :unit_mesure => 'Pieza')
Product.create(:name => 'Tablaroca tablero regular', :description => 'Tablaroca NBR de 1.22m X 2.44m de 12.7mm de espesor', :price => '71.20', :unit_mesure => 'Pieza')
Product.create(:name => 'Poste metálico calibre 26 de 410 X 3.05m', :description => 'Poste metálico calibre 26 de 410 X 3.05m', :price => '27.72', :unit_mesure => 'Pieza')
Product.create(:name => 'Poste metálico calibre 26 de 635 X 3.05m', :description => 'Poste metálico calibre 26 de 635 X 3.05m', :price => '31.79', :unit_mesure => 'Pieza')
Product.create(:name => 'Canal de amarre calibre 26 de 410 X 3.05m', :description => 'Canal de amarre calibre 26 de 410 X 3.05m', :price => '21.00', :unit_mesure => 'Pieza')
Product.create(:name => 'Canal de amarre calibre 26 de 635 X 3.05m', :description => 'Canal de amarre calibre 26 de 635 X 3.05m', :price => '31.79', :unit_mesure => 'Pieza')
Product.create(:name => 'Canaleta de carga calibre 22 de 3.05m', :description => 'Canaleta de carga calibre 22 de 3.05m', :price => '22.58', :unit_mesure => 'Pieza')
Product.create(:name => 'Canal listón calibre 26 de 3.05m', :description => 'Canal listón calibre 26 de 3.05m', :price => '22.33', :unit_mesure => 'Pieza')
Product.create(:name => 'Ángulo de amarre calibre 26 de 3.05m', :description => 'Ángulo de amarre calibre 26 de 3.05m', :price => '13.55', :unit_mesure => 'Pieza')
Product.create(:name => 'Compuesto redimix de 25kg', :description => 'Caja de redimix de 25kg', :price => '122.52', :unit_mesure => 'Caja')
Product.create(:name => 'Compuesto redimix de 6kg', :description => 'Cubete de redimix de 6kg', :price => '47.51', :unit_mesure => 'Cubeta')
Product.create(:name => 'Perfacinta rollo de 75m', :description => 'Perfacinta rollo de 75m', :price => '21.41', :unit_mesure => 'Rollo')
Product.create(:name => 'Tornillo S1 de 1" punta filosa', :description => 'Tornillo S1 de 1" punta filosa 1000 pzas.', :price => '69.19', :unit_mesure => 'Millar')
Product.create(:name => 'Tornillo farmer de 1/2" punta filosa', :description => 'Tornillo farmer de 1/2" punta filosa 1000 pzas.', :price => '116.54', :unit_mesure => 'Millar')

#Clientes
Client.create(:name => 'Javier Solorzano', :address => 'Pino Verde 23', :phone => '3123231230', :rfc => 'SOLJ761218', :zip_code => '48978')
Client.create(:name => 'Andrea Zavala', :address => 'Paseo Higueras 58', :phone => '3152002344', :rfc => 'ZAVA651018', :zip_code => '45578')
Client.create(:name => 'Hector Ramirez', :address => 'Pedro Moreno 74', :phone => '31232431230', :rfc => 'RAMH821218', :zip_code => '45970')
Client.create(:name => 'Martin Gonzalez', :address => 'Aquiles Serdan 86', :phone => '3155531260', :rfc => 'GONM5431218', :zip_code => '45778')
Client.create(:name => 'Antonio Herrera', :address => 'Obeliscos 56', :phone => '3141012486', :rfc => 'HERA810927', :zip_code => '43000')
Client.create(:name => 'Rodrigo Brambila', :address => '20 de Noviembre 45', :phone => '3151024567', :rfc => 'BRMA810819', :zip_code => '45678')
Client.create(:name => 'Vicente Zamudio', :address => 'Privada de la Alegria 72', :phone => '3123545678', :rfc => 'ZAMV790101', :zip_code => '43234')
Client.create(:name => 'Alejandra Lopez', :address => 'Miguel Hidalgo  48', :phone => '3153346784', :rfc => 'LOPA820924', :zip_code => '45673')
Client.create(:name => 'Arturo Villalvazo', :address => 'Av. Paseo de las Garzas Edf.1 23 - A', :phone => '3143312341', :rfc => 'VILA830914', :zip_code => '43213')
Client.create(:name => 'Brenda Arellano', :address => 'Profirio Diaz 54', :phone => '3147883452', :rfc => 'ARBR830417', :zip_code => '43523')
Client.create(:name => 'Adan Gomez', :address => 'Paseo de las Garzas 61', :phone => '3147868989', :rfc => 'GOMA820112', :zip_code => '43432')
Client.create(:name => 'Rocio Rosete', :address => '16 de Septiembre 332', :phone => '3153554343', :rfc => 'ROSR800202', :zip_code => '45775')
Client.create(:name => 'Ignacio Delgado', :address => '5 de Mayo 1130', :phone => '3123441212', :rfc => 'DELI790312', :zip_code => '48020')

