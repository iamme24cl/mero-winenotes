User.destroy_all
Wine.destroy_all

chandra = User.create(:name => "Chandra", :email => "chandra@mail.com", :password => "test1")

ely = User.create(:name => "Ely", :email => "ely@mail.com", :password => "test123")

Wine.create(
  name: "Domaine Delaporte", 
  varietal: "Sauvignon Blanc", 
  appelation: "Chavignol, Sancerre", 
  vintage: "2018", 
  price: 35, 
  image_url: "https://github.com/iamme24cl/dev-images/blob/master/sinatra-project-images/delaporte-sancerre.jpg?raw=true", 
  tasting_notes: "100% Sauvignon Blanc with lots of flint and minerality. A little pear and honey on the finish." , 
  user_id: chandra.id
)

Wine.create(
  name: "Henri Bourgeois", 
  varietal: "Sauvignon Blanc", 
  appelation: "La Cote des Monts Damnes, Sancerre", 
  vintage: "2018", 
  price: 32, 
  image_url: "https://github.com/iamme24cl/dev-images/blob/master/sinatra-project-images/henri-bourgeois-sancerre.jpg?raw=true", 
  tasting_notes: "On the slightly richer side, this offers melon, lemon curd and gooseberry gelée notes lined with sea salt accents and hints of toast. 
  This gets grippy midpalate, but the acidity cuts through, bringing out freshness through the finish. Best from 2022 through 2028.", 
  user_id: chandra.id
)

Wine.create(
  name: "Angulo Innocenti", 
  varietal: "Malbec", 
  appelation: "Mendoza, Argentina", 
  vintage: "2017", 
  price: 18, 
  image_url: "https://github.com/iamme24cl/dev-images/blob/master/sinatra-project-images/innocenti-malbec.jpg?raw=true", 
  tasting_notes: "With a dark, intense purple color, the wine shows rich, dark fruit flavors and delicate violet notes, very typical of the La Consulta terroir, 
  making this area so appreciated for Malbec. This wine also shows freshness, balance, and perfect acidity.", 
  user_id: chandra.id
)

Wine.create(
  name: "Billecart Salmon", 
  varietal: "Sparkling, Brut Reserve", 
  appelation: "Mareuil-Sur-Ay, France", 
  vintage: "NV", 
  price: 60, 
  image_url: "https://github.com/iamme24cl/dev-images/blob/master/sinatra-project-images/billecart-salmon-brut-reserve.jpg?raw=true", 
  tasting_notes: "A fine straw-gold colour with great finesse of bubble flow and mousse. Joyful aromas of apple blossom and ripe pear. A full, defined palate 
  demonstrates richness that will help to give this a long life in the cellar.Full fruit, but clean in the mouth. This cuvée contains 40% Pinot Meunier, 
  30% Pinot Noir, 30% Chardonnay.", 
  user_id: chandra.id
)

Wine.create(
  name: "Pierre Peters", 
  varietal: "Sparkling, Blancs de Balncs", 
  appelation: "Le Mesnil sur Oger", 
  vintage: "NV", 
  price: 50, 
  image_url: "https://github.com/iamme24cl/dev-images/blob/master/sinatra-project-images/pierre-peters-blanc-de-blancs.jpg?raw=true", 
  tasting_notes: "Fragrant, with floral and mineral accents, this vibrant blanc de blancs shows tropical hints of passion fruit and guava layered with salted 
  almond and honey notes. Finely knit, featuring a lasting, delicate finish.", 
  user_id: chandra.id
)

Wine.create(
  name: "Robert Weil", 
  varietal: "Riesling", 
  appelation: "‘Kiedrich Turmberg,’ Rheingau", 
  vintage: "2915", 
  price: 32, 
  image_url: "https://github.com/iamme24cl/dev-images/blob/master/sinatra-project-images/robert-weil-riesling.jpg?raw=true", 
  tasting_notes: "Big and strapping, with plenty of fresh acidity behind the apple, grapefruit and green peach flavors. Mineral and slate details show midpalate, 
  bolstered by explosive notes of dried tropical fruits. Hints of white chocolate and cream emerge on the elegant finish.", 
  user_id: chandra.id
)

Wine.create(
  name: "Bernhard Ott", 
  varietal: "Gruner Veltliner", 
  appelation: "‘Am Berg,’ Wagram", 
  vintage: "2018", 
  price: 18, 
  image_url: "https://github.com/iamme24cl/dev-images/blob/master/sinatra-project-images/bernhard-ott-gruner.jpg?raw=true", 
  tasting_notes: "Lemon zest, white pepper and salty yeast on the nose promise complexity. The palate is juicy and imbues that salty, 
  yeasty core with juicy pear and orange peel freshness. This is rounded but fresh with a lovely, long salty finish. ", 
  user_id: chandra.id
)

Wine.create(
  name: "Willakenzie", 
  varietal: "Pinot Gris", 
  appelation: "Willamette Valley, Oregon", 
  vintage: "2017", 
  price: 32, 
  image_url: "https://github.com/iamme24cl/dev-images/blob/master/sinatra-project-images/willakenzie-pinot-gris.jpg?raw=true", 
  tasting_notes: "Complex and expressive, offering notes of citrus blossom, honeydew melon, Asian pear and hints of minerality. 
  This wine is fresh and vibrant but sufficiently creamy to achieve wonderful harmony and balance.", 
  user_id: chandra.id
)

Wine.create(
  name: "Walter Hansel", 
  varietal: "Chardonnay", 
  appelation: "‘Russian River Valley", 
  vintage: "2016", 
  price: 40, 
  image_url: "https://github.com/iamme24cl/dev-images/blob/master/sinatra-project-images/walter-hansel-chardonnay.jpg?raw=true", 
  tasting_notes: "Opens slowly to lovely aromas of warm peaches and apricots with accents of toast, roasted almonds and honey. 
  The medium-bodied palate is silky, super concentrated, layered and fresh, cut through with uplifting mineral character and finishing 
  very, very long. Gorgeous!", 
  user_id: chandra.id
)

Wine.create(
  name: "Failla", 
  varietal: "Chardonnay", 
  appelation: "Fort Ross-Seaview", 
  vintage: "2017", 
  price: 45, 
  image_url: "https://github.com/iamme24cl/dev-images/blob/master/sinatra-project-images/failla-chardonnay.jpg?raw=true", 
  tasting_notes: "xotic notes of lemon curd, quince, and orchard fruits. It’s rounded, beautifully textured, has nicely integrated acidity, 
  and flawless balance.", 
  user_id: chandra.id
)

Wine.create(
  name: "Flowers", 
  varietal: "Chardonnay", 
  appelation: "Sonoma Coast", 
  vintage: "2017", 
  price: 45, 
  image_url: "https://github.com/iamme24cl/dev-images/blob/master/sinatra-project-images/flowers-chardonnay.jpg?raw=true", 
  tasting_notes: "Subtle notes of ripe pears, allspice and applesauce with pineapple and lemon juice sparks plus a hint of baking bread. 
  Medium-bodied, elegant and refreshing, it has a lovely creaminess to the texture and touch of nutmeg on the savory finish.", 
  user_id: chandra.id
)

Wine.create(
  name: "Tyler", 
  varietal: "Chardonnay", 
  appelation: "‘Dierberg Vineyard,’ SMV", 
  vintage: "2017", 
  price: 40, 
  image_url: "https://github.com/iamme24cl/dev-images/blob/master/sinatra-project-images/tyler-chardonnay.jpg?raw=true", 
  tasting_notes: "eatures warm white peaches, Greek yogurt, crushed stone and lime peel scents with notions of pie crust and a light 
  framing of spice. Light to medium-bodied, it's purely fruited with juicy acidity and a long, mineral-driven and textured finish.", 
  user_id: chandra.id
)

Wine.create(
  name: "Zena Crown Vineyard", 
  varietal: "Pinot Noir", 
  appelation: "‘Conifer,’ Eola-Amity Hills", 
  vintage: "2015", 
  price: 60, 
  image_url: "https://github.com/iamme24cl/dev-images/blob/master/sinatra-project-images/zena-crown-pinot.jpg?raw=true", 
  tasting_notes: "Cinnamon stick, clove, ripe black cherries and black berries with notions of dried leaves and underbrush plus touches of charcuterie. 
  Medium-bodied, it's got wonderful layers of ripe black fruits, earth and spice, framed by fine, grainy tannins and great freshness, finishing long 
  and savory with just a touch of heat.", 
  user_id: chandra.id
)

Wine.create(
  name: "Beaux Freres", 
  varietal: "Pinot Noir", 
  appelation: "Willamette Valley", 
  vintage: "2017", 
  price: 50, 
  image_url: "https://github.com/iamme24cl/dev-images/blob/master/sinatra-project-images/beaux-freres-pinot.jpg?raw=true", 
  tasting_notes: "A dynamic, complex wine that retains polish and focus, offering compelling black raspberry, orange peel and savory spice flavors 
  that build richness toward refined tannins. ", 
  user_id: chandra.id
)

Wine.create(
  name: "Radio-Coteau", 
  varietal: "Pinot Noir", 
  appelation: "‘Savoy Vineyard,’ Anderson Valley", 
  vintage: "2015", 
  price: 65, 
  image_url: "https://github.com/iamme24cl/dev-images/blob/master/sinatra-project-images/radio-coteau-pinot.jpg?raw=true", 
  tasting_notes: "Red and black fruits of fresh, ripe black cherry, black plum, wild strawberry, and fresh blackberry roll out of the glass and onto 
  the palate. An exotic dimension is added with the tone of Chinese five spice - namely anise and nutmeg - as well as other baking spices lent by the 
  oak, while a lingering earthy aroma provides a tip of the cap to something decidedly more old world. ", 
  user_id: chandra.id
)

Wine.create(
  name: "Domaine St. Prefert", 
  varietal: "Rhone Blend", 
  appelation: "Cotes-du-Rhone", 
  vintage: "2018", 
  price: 25, 
  image_url: "https://github.com/iamme24cl/dev-images/blob/master/sinatra-project-images/saint-prefert-cote-du-rhone.jpg?raw=true", 
  tasting_notes: "A very fresh array of red berries and ripe cherries with a wealth of succulent and supple fruit that delivers a sweetly spicy and 
  juicy impression on the fresh and supple finish.", 
  user_id: chandra.id
)

Wine.create(
  name: "The Withers - Mr. Burgess", 
  varietal: "Syrah", 
  appelation: "El Dorado", 
  vintage: "2016", 
  price: 45, 
  image_url: "https://github.com/iamme24cl/dev-images/blob/master/sinatra-project-images/withers-syrah.jpg?raw=true", 
  tasting_notes: " Wine opens with floral aromatics reminiscent of violets and spreads across the palate with dark stone fruit, 
  light game and black and white pepper flavors and balancing acidity. Medium bodied with a dry finish.", 
  user_id: chandra.id
)

Wine.create(
  name: "Pride Mountain Vineyards", 
  varietal: "Cabernet Sauvignon", 
  appelation: "Napa Valley / Sonoma", 
  vintage: "2017", 
  price: 76, 
  image_url: "https://github.com/iamme24cl/dev-images/blob/master/sinatra-project-images/pride-mountain-cabernet.jpg?raw=true", 
  tasting_notes: "Black currant, Morello cherry and just-ripe black mission fig dance with the aromas of sage, candied violets, star anise and 
  black truffle. The palate is dense and compact with incredible structure. ", 
  user_id: chandra.id
)

Wine.create(
  name: "Freemark Abbey", 
  varietal: "Cabernet Sauvignon", 
  appelation: "Napa Valley", 
  vintage: "2016", 
  price: 40, 
  image_url: "https://github.com/iamme24cl/dev-images/blob/master/sinatra-project-images/freemark-abbey-cabernet.jpg?raw=true", 
  tasting_notes: "Dark ruby in color, the flavors such as blackberry, boysenberry, and Bing cherry dominate with nuances of milk chocolate, 
  chocolate berry truffle dusted with cocoa powder, aromatic cedar, and Herbs de Provence. The sweet oak spice is very well integrated, adding 
  to the overall complexity.", 
  user_id: chandra.id
)

Wine.create(
  name: "Turley - Juvenile", 
  varietal: "Zinfandel", 
  appelation: "California", 
  vintage: "2018", 
  price: 25, 
  image_url: "https://github.com/iamme24cl/dev-images/blob/master/sinatra-project-images/turley-zinfandel.jpg?raw=true", 
  tasting_notes: "Bright, vibrant pepper and spice with lovely lifted red fruits, satiating acidity and a hint of blue fruits as well. 
  Lithely textured with pure precision and tons of energy on the palate.", 
  user_id: chandra.id
)

Wine.create(
  name: "Ridge - Montebello", 
  varietal: "Cabernet Sauvignon", 
  appelation: "Santa Cruz Mountains", 
  vintage: "2014", 
  price: 200, 
  image_url: "https://github.com/iamme24cl/dev-images/blob/master/sinatra-project-images/ridge-montebello-cabernet.jpg?raw=true", 
  tasting_notes: "Opaque ruby color. Intense blackberry fruit aromas, blackcurrant, exotic barrel spice, toasted oak, licorice, 
  and complex forest notes. Rich mountain fruit entry, refreshing high acid, full chalky tannin structure, and sweet oak; strong mineral finish.", 
  user_id: chandra.id
)


Wine.create(
  name: "Domaine St. Prefert", 
  varietal: "Rhone Blend", 
  appelation: "Cotes-du-Rhone", 
  vintage: "2018", 
  price: 25, 
  image_url: "https://github.com/iamme24cl/dev-images/blob/master/sinatra-project-images/saint-prefert-cote-du-rhone.jpg?raw=true", 
  tasting_notes: "A very fresh array of red berries and ripe cherries with a wealth of succulent and supple fruit that delivers a sweetly spicy and 
  juicy impression on the fresh and supple finish.", 
  user_id: ely.id
)

Wine.create(
  name: "The Withers - Mr. Burgess", 
  varietal: "Syrah", 
  appelation: "El Dorado", 
  vintage: "2016", 
  price: 45, 
  image_url: "https://github.com/iamme24cl/dev-images/blob/master/sinatra-project-images/withers-syrah.jpg?raw=true", 
  tasting_notes: " Wine opens with floral aromatics reminiscent of violets and spreads across the palate with dark stone fruit, 
  light game and black and white pepper flavors and balancing acidity. Medium bodied with a dry finish.", 
  user_id: ely.id
)

Wine.create(
  name: "Pride Mountain Vineyards", 
  varietal: "Cabernet Sauvignon", 
  appelation: "Napa Valley / Sonoma", 
  vintage: "2017", 
  price: 76, 
  image_url: "https://github.com/iamme24cl/dev-images/blob/master/sinatra-project-images/pride-mountain-cabernet.jpg?raw=true", 
  tasting_notes: "Black currant, Morello cherry and just-ripe black mission fig dance with the aromas of sage, candied violets, star anise and 
  black truffle. The palate is dense and compact with incredible structure. ", 
  user_id: ely.id
)

Wine.create(
  name: "Freemark Abbey", 
  varietal: "Cabernet Sauvignon", 
  appelation: "Napa Valley", 
  vintage: "2016", 
  price: 40, 
  image_url: "https://github.com/iamme24cl/dev-images/blob/master/sinatra-project-images/freemark-abbey-cabernet.jpg?raw=true", 
  tasting_notes: "Dark ruby in color, the flavors such as blackberry, boysenberry, and Bing cherry dominate with nuances of milk chocolate, 
  chocolate berry truffle dusted with cocoa powder, aromatic cedar, and Herbs de Provence. The sweet oak spice is very well integrated, adding 
  to the overall complexity.", 
  user_id: ely.id
)

Wine.create(
  name: "Turley - Juvenile", 
  varietal: "Zinfandel", 
  appelation: "California", 
  vintage: "2018", 
  price: 25, 
  image_url: "https://github.com/iamme24cl/dev-images/blob/master/sinatra-project-images/turley-zinfandel.jpg?raw=true", 
  tasting_notes: "Bright, vibrant pepper and spice with lovely lifted red fruits, satiating acidity and a hint of blue fruits as well. 
  Lithely textured with pure precision and tons of energy on the palate.", 
  user_id: ely.id
)

Wine.create(
  name: "Ridge - Montebello", 
  varietal: "Cabernet Sauvignon", 
  appelation: "Santa Cruz Mountains", 
  vintage: "2014", 
  price: 200, 
  image_url: "https://github.com/iamme24cl/dev-images/blob/master/sinatra-project-images/ridge-montebello-cabernet.jpg?raw=true", 
  tasting_notes: "Opaque ruby color. Intense blackberry fruit aromas, blackcurrant, exotic barrel spice, toasted oak, licorice, 
  and complex forest notes. Rich mountain fruit entry, refreshing high acid, full chalky tannin structure, and sweet oak; strong mineral finish.", 
  user_id: ely.id
)







