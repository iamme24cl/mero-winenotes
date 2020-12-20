User.destroy_all
Wine.destroy_all

chandra = User.create(:name => "Chandra", :email => "chandra@mail.com", :password => "test1")

ely = User.create(:name => "Ely", :email => "ely@mail.com", :password => "test123")

Wine.create(name: "Domaine Delaporte", varietal: "Sauvignon Blanc", appelation: "Chavignol, Sancerre", vintage: "2018", price: 35, 
image_url: "https://github.com/iamme24cl/dev-images/blob/master/sinatra-project-images/delaporte-sancerre.jpg?raw=true", 
tasting_notes: "100% Sauvignon Blanc with lots of flint and minerality. A little pear and honey on the finish." , user_id: chandra.id)

Wine.create(name: "Henri Bourgeois", varietal: "Sauvignon Blanc", appelation: "La Cote des Monts Damnes, Sancerre", vintage: "2018", 
price: 32, image_url: "https://github.com/iamme24cl/dev-images/blob/master/sinatra-project-images/henri-bourgeois-sancerre.jpg?raw=true", 
tasting_notes: "On the slightly richer side, this offers melon, lemon curd and gooseberry gelée notes lined with sea salt accents and hints of toast. 
This gets grippy midpalate, but the acidity cuts through, bringing out freshness through the finish. Best from 2022 through 2028.", user_id: chandra.id)

Wine.create(name: "Angulo Innocenti", varietal: "Malbec", appelation: "Mendoza, Argentina", vintage: "2017", price: 18, 
image_url: "https://github.com/iamme24cl/dev-images/blob/master/sinatra-project-images/innocenti-malbec.jpg?raw=true", 
tasting_notes: "With a dark, intense purple color, the wine shows rich, dark fruit flavors and delicate violet notes, very typical of the La Consulta terroir, 
making this area so appreciated for Malbec. This wine also shows freshness, balance, and perfect acidity.", user_id: chandra.id)

Wine.create(name: "Billecart Salmon", varietal: "Sparkling, Brut Reserve", appelation: "Mareuil-Sur-Ay, France", vintage: "NV", price: 60, 
image_url: "https://github.com/iamme24cl/dev-images/blob/master/sinatra-project-images/billecart-salmon-brut-reserve.jpg?raw=true", 
tasting_notes: "A fine straw-gold colour with great finesse of bubble flow and mousse. Joyful aromas of apple blossom and ripe pear. A full, defined palate 
demonstrates richness that will help to give this a long life in the cellar.Full fruit, but clean in the mouth. This cuvée contains 40% Pinot Meunier, 
30% Pinot Noir, 30% Chardonnay.", user_id: chandra.id)



