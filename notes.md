## App name - mero-winenotes

An app that lets you take notes of your favorite wines. When working as a sommelier, I was constantly tasting new wines and taking notes of them. My goal with this app is to build something that the user can use to take notes in a pattern that sommeliers or individuals in similar fields generally use. I would like this app be able to takes notes of name/winery name, the grape varietal(s) used to make the wine, the appelation(region), the vintage, price, an image_url for display and finally the tasting_notes. 
	The user should be able to Log in and out.
	The user should be able to create, update and delete thier account. 
	The user should be able to only view thier own wines.
	The user should be able to create, read, update and delete a wine that belongs to them.

Sprint 1: User Functionality
  /register
  /login
  /logout
  
  User
  authentication
  email / password

Sprint 2: Wine Functionality
  create
  read
  update
  delete

  only when user is logged in and the wine belongs to the user

Sprint 3: Refactor Code
  Make sure code is DRY

Sprint 4: Layout
  make some CSS adjustments


## Models with association

class Wine < ActiveRecord::Base
	belongs_to :user
end
	
class User < ActiveRecord::Base
  has_many :wines
  has_secure_password
end

### Tables
  create_table "wines"
    t.string "name"
    t.string "varietal"(s)
    t.string "appelation"
    t.string "vintage"
    t.integer "price"
    t.string "image_url"
    t.string "tasting_notes"
    t.integer "user_id"
  end

  create_table "user"
  	t.string "name"
  	t.string "email"
  	t.string "password_digest"
  end


# seed data set up

chandra = User.create(email:"chandra", image_url: "http...", bio: "", password: "")

Post.create(title:, image_url:, description, user_id: chandra.id)


<!-- <style >

      body {
        background-image: url("/images/klara-kulikova-CPMZguYURMw-unsplash.jpg");
        background-repeat: repeat;
      }
      
</style>
 -->

# <%= "<div class='notice'>#{flash[:message]}</div>" if flash[:message] %>


# The following methods trigger validations, and will save the object to the database only if the object is valid:

create
create!
save
save!
update
update!

The bang versions (e.g. save!) raise an exception if the record is invalid. The non-bang versions don't: save and update return false, and create returns the object.

## wines/show.erb - Show these buttons only if the resource belongs to the current user using the helper method `authorized_to_edit?`

<% if authorized_to_edit?(@wine) %>

<a href="/wines/<%= @wine.id %>/edit">Edit Wine</a>

<form class="" action="/wines/<%= @wine.id %>" method="post">
  <input type="hidden" name="_method" value="delete">
  <input type="submit" name="" value="Delete This Wine">
</form>

<% end %>

----
## body - background image
background-image: url("https://images.unsplash.com/photo-1578911373434-0cb395d2cbfb?ixid=MXwxMjA3fDB8MHxzZWFyY2h8Mnx8d2luZXxlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60")
----
.wrapper background options
# clear wine glass: "https://images.unsplash.com/photo-1559251434-4e172832c9de?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MzZ8fHdpbmV8ZW58MHx8MHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60"

----
## Wines - data for seed file

Wine.create(
  name: , 
  varietal: , 
  appelation: , 
  vintage: , 
  price: , 
  image_url: , 
  tasting_notes: , 
  user_id: chandra.id
)


# Sauvignon Blanc, Domaine Delaporte, ‘Chavignol,’ Sancerre 2018
	name: "Domaine Delaporte"
	varietal: "Sauvignon Blanc"
	appelation:	"Chavignol, Sancerre"
	vintage: "2018"
	price: $35
	image_url: "https://github.com/iamme24cl/dev-images/blob/master/sinatra-project-images/delaporte-sancerre.jpg?raw=true"
	tasting_notes: "100% Sauvignon Blanc with lots of flint and minerality. A little pear and honey on the finish." 


# Sauvignon Blanc, Henri Bourgeois, ‘La Cote des Monts Damnes,’ Sancerre 2018 85
	name:
	varietal:
	appelation:
	vintage:
	price: $32
	image_url: "https://github.com/iamme24cl/dev-images/blob/master/sinatra-project-images/henri-bourgeois-sancerre.jpg?raw=true"
	tasting_notes: "On the slightly richer side, this offers melon, lemon curd and gooseberry gelée notes lined with sea salt accents and hints of toast. This gets grippy midpalate, but the acidity cuts through, bringing out freshness through the finish. Best from 2022 through 2028."

# Malbec, Angulo Innocenti, La Consulta, Mendoza, Argentina 2017
	name:
	varietal:
	appelation:
	vintage:
	price: $18
	image_url: "https://github.com/iamme24cl/dev-images/blob/master/sinatra-project-images/innocenti-malbec.jpg?raw=true"
	tasting_notes: With a dark, intense purple color, the wine shows rich, dark fruit flavors and delicate violet notes, very typical of the La Consulta terroir, making this area so appreciated for Malbec. This wine also shows freshness, balance, and perfect acidity.

# Billecart-Salmon, 'Brut Reserve,' Mareuil-Sur-Ay NV
	name:
	varietal:
	appelation:
	vintage: NV
	price: $60
	image_url: "https://github.com/iamme24cl/dev-images/blob/master/sinatra-project-images/billecart-salmon-brut-reserve.jpg?raw=true"
	tasting_notes: A fine straw-gold colour with great finesse of bubble flow and mousse. Joyful aromas of apple blossom and ripe pear. A full, defined palate demonstrates richness that will help to give this a long life in the cellar.Full fruit, but clean in the mouth. This cuvée contains 40% Pinot Meunier, 30% Pinot Noir, 30% Chardonnay.

# Pierre Peters, ‘Blanc de Blancs, ’ Le Mesnil sur Oger NV
	name:
	varietal:
	appelation:
	vintage: NV
	price: $50 
	image_url: "https://github.com/iamme24cl/dev-images/blob/master/sinatra-project-images/pierre-peters-blanc-de-blancs.jpg?raw=true"
	tasting_notes: Fragrant, with floral and mineral accents, this vibrant blanc de blancs shows tropical hints of passion fruit and guava layered with salted almond and honey notes. Finely knit, featuring a lasting, delicate finish.

# Riesling Robert Weil, ‘Kiedrich Turmberg,’ Rheingau 2015
	name:
	varietal:
	appelation:
	vintage:
	price: $32 
	image_url: "https://github.com/iamme24cl/dev-images/blob/master/sinatra-project-images/robert-weil-riesling.jpg?raw=true"
	tasting_notes: Big and strapping, with plenty of fresh acidity behind the apple, grapefruit and green peach flavors. Mineral and slate details show midpalate, bolstered by explosive notes of dried tropical fruits. Hints of white chocolate and cream emerge on the elegant finish. 

# GRUNER VELTLINER Bernhard Ott, ‘Am Berg,’ Wagram, Austria 2018
	name:
	varietal:
	appelation:
	vintage:
	price: $18
	image_url: https://github.com/iamme24cl/dev-images/blob/master/sinatra-project-images/bernhard-ott-gruner.jpg?raw=true
	tasting_notes: Lemon zest, white pepper and salty yeast on the nose promise complexity. The palate is juicy and imbues that salty, yeasty core with juicy pear and orange peel freshness. This is rounded but fresh with a lovely, long salty finish. 

# Pinot Gris Willakenzie, ‘Estate,’ Willamette Valley, Oregon 2017
	name:
	varietal:
	appelation:
	vintage:
	price: $32
	image_url: "https://github.com/iamme24cl/dev-images/blob/master/sinatra-project-images/willakenzie-pinot-gris.jpg?raw=true"
	tasting_notes: Complex and expressive, offering notes of citrus blossom, honeydew melon, Asian pear and hints of minerality. This wine is fresh and vibrant but sufficiently creamy to achieve wonderful harmony and balance.

# Walter Hansel, ‘The North Slope,’ Russian River Valley 2016
	name:
	varietal: chardonnay
	appelation:
	vintage:
	price: $40
	image_url: "https://github.com/iamme24cl/dev-images/blob/master/sinatra-project-images/walter-hansel-chardonnay.jpg?raw=true"
	tasting_notes: Opens slowly to lovely aromas of warm peaches and apricots with accents of toast, roasted almonds and honey. The medium-bodied palate is silky, super concentrated, layered and fresh, cut through with uplifting mineral character and finishing very, very long. Gorgeous!

# Failla, ‘Estate,’ Fort Ross-Seaview 2017 
	name:
	varietal: chardonnay
	appelation:
	vintage:
	price: 45
	image_url: "https://github.com/iamme24cl/dev-images/blob/master/sinatra-project-images/failla-chardonnay.jpg?raw=true"
	tasting_notes: Exotic notes of lemon curd, quince, and orchard fruits. It’s rounded, beautifully textured, has nicely integrated acidity, and flawless balance.

# Flowers, Sonoma Coast 2017
	name:
	varietal: chardonnay
	appelation:
	vintage:
	price: 45
	image_url: "https://github.com/iamme24cl/dev-images/blob/master/sinatra-project-images/flowers-chardonnay.jpg?raw=true"
	tasting_notes: Subtle notes of ripe pears, allspice and applesauce with pineapple and lemon juice sparks plus a hint of baking bread. Medium-bodied, elegant and refreshing, it has a lovely creaminess to the texture and touch of nutmeg on the savory finish.

# Tyler, ‘Dierberg Vineyard,’ Santa Maria Valley 2017
	name:
	varietal: chardonnay
	appelation:
	vintage:
	price: 40
	image_url: "https://github.com/iamme24cl/dev-images/blob/master/sinatra-project-images/tyler-chardonnay.jpg?raw=true"
	tasting_notes: Features warm white peaches, Greek yogurt, crushed stone and lime peel scents with notions of pie crust and a light framing of spice. Light to medium-bodied, it's purely fruited with juicy acidity and a long, mineral-driven and textured finish. 

# Zena Crown Vineyard, ‘Conifer,’ Eola-Amity Hills 2015
	name:
	varietal: pinot
	appelation:
	vintage: 
	price: 60
	image_url: "https://github.com/iamme24cl/dev-images/blob/master/sinatra-project-images/zena-crown-pinot.jpg?raw=true"
	tasting_notes: Cinnamon stick, clove, ripe black cherries and black berries with notions of dried leaves and underbrush plus touches of charcuterie. Medium-bodied, it's got wonderful layers of ripe black fruits, earth and spice, framed by fine, grainy tannins and great freshness, finishing long and savory with just a touch of heat.

# Beaux Freres, Willamette Valley 2017
	name:
	varietal: pinot
	appelation:
	vintage:
	price: 50
	image_url: "https://github.com/iamme24cl/dev-images/blob/master/sinatra-project-images/beaux-freres-pinot.jpg?raw=true"
	tasting_notes: A dynamic, complex wine that retains polish and focus, offering compelling black raspberry, orange peel and savory spice flavors that build richness toward refined tannins. 

# Radio-Coteau, ‘Savoy Vineyard,’ Anderson Valley 2014
	name:
	varietal: pinot
	appelation:
	vintage:
	price: 65
	image_url: "https://github.com/iamme24cl/dev-images/blob/master/sinatra-project-images/radio-coteau-pinot.jpg?raw=true"
	tasting_notes:  Red and black fruits of fresh, ripe black cherry, black plum, wild strawberry, and fresh blackberry roll out of the glass and onto the palate. An exotic dimension is added with the tone of Chinese five spice - namely anise and nutmeg - as well as other baking spices lent by the oak, while a lingering earthy aroma provides a tip of the cap to something decidedly more old world. 

# Domaine St. Prefert, ‘Clos Beatus Ille,’ Cotes-du-Rhone 2018
	name:
	varietal: 
	appelation:
	vintage: 
	price: 25
	image_url: "https://github.com/iamme24cl/dev-images/blob/master/sinatra-project-images/saint-prefert-cote-du-rhone.jpg?raw=true"
	tasting_notes: A very fresh array of red berries and ripe cherries with a wealth of succulent and supple fruit that delivers a sweetly spicy and juicy impression on the fresh and supple finish. 

# Syrah, The Withers, ‘Mr. Burgess,’ El Dorado, California 2016
	name:
	varietal:
	appelation:
	vintage:
	price: 45
	image_url: "https://github.com/iamme24cl/dev-images/blob/master/sinatra-project-images/withers-syrah.jpg?raw=true"
	tasting_notes: Wine opens with floral aromatics reminiscent of violets and spreads across the palate with dark stone fruit, light game and black and white pepper flavors and balancing acidity. Medium bodied with a dry finish.

# Pride Mountain Vineyards, Napa Valley/Sonoma County 2017 142
	name:
	varietal: cab
	appelation:
	vintage:
	price: 76
	image_url: "https://github.com/iamme24cl/dev-images/blob/master/sinatra-project-images/pride-mountain-cabernet.jpg?raw=true"
	tasting_notes: Black currant, Morello cherry and just-ripe black mission fig dance with the aromas of sage, candied violets, star anise and black truffle. The palate is dense and compact with incredible structure. 

# Freemark Abbey, Napa Valley 2016
	name:
	varietal:cab
	appelation: 
	vintage:
	price: 40 
	image_url: "https://github.com/iamme24cl/dev-images/blob/master/sinatra-project-images/freemark-abbey-cabernet.jpg?raw=true"
	tasting_notes: Dark ruby in color, the flavors such as blackberry, boysenberry, and Bing cherry dominate with nuances of milk chocolate, chocolate berry truffle dusted with cocoa powder, aromatic cedar, and Herbs de Provence. The sweet oak spice is very well integrated, adding to the overall complexity.

# Ridge, ‘Monte Bello,’ Santa Cruz Mountains 2014
	name:
	varietal:
	appelation:
	vintage:
	price: 200
	image_url: "https://github.com/iamme24cl/dev-images/blob/master/sinatra-project-images/ridge-montebello-cabernet.jpg?raw=true"
	tasting_notes: Opaque ruby color. Intense blackberry fruit aromas, blackcurrant, exotic barrel spice, toasted oak, licorice, and complex forest notes. Rich mountain fruit entry, refreshing high acid, full chalky tannin structure, and sweet oak; strong mineral finish.

# Turley, ‘Juvenile,’ California 2018
	name:
	varietal:
	appelation:
	vintage:
	price: 25
	image_url: "https://github.com/iamme24cl/dev-images/blob/master/sinatra-project-images/turley-zinfandel.jpg?raw=true"
	tasting_notes:  Bright, vibrant pepper and spice with lovely lifted red fruits, satiating acidity and a hint of blue fruits as well. Lithely textured with pure precision and tons of energy on the palate. 


--------
/wines/index (display format)

<div class="row">

	<div style="text-align:center" class="col-md-4">
		<img src="https://github.com/iamme24cl/dev-images/blob/master/sinatra-project-images/delaporte-sancerre.jpg?raw=true" height="150" width="150">
		<h5><a href="/wines/<%= @wine.id %>"><%= @wine.name %></a></h5>
		<ul>
			<li>varietal - Sauvignon Blanc</li>
			<li>appelation -	Chavignol, Sancerre</li>
			<li>vintage - 2018</li>
		</ul>
	</div>

	<div style="text-align:center" class="col-md-4">
		<img src="https://github.com/iamme24cl/dev-images/blob/master/sinatra-project-images/delaporte-sancerre.jpg?raw=true" height="150" width="150">
		<h5><a href="">Domaine Delaporte</a></h5>
		<ul>
			<li>varietal - Sauvignon Blanc</li>
			<li>appelation -	Chavignol, Sancerre</li>
			<li>vintage - 2018</li>
		</ul>
	</div>

	<div style="text-align:center" class="col-md-4">
		<img src="https://github.com/iamme24cl/dev-images/blob/master/sinatra-project-images/delaporte-sancerre.jpg?raw=true" height="150" width="150">
		<h5><a href="">Domaine Delaporte</a></h5>
		<ul>
			<li>varietal - Sauvignon Blanc</li>
			<li>appelation -	Chavignol, Sancerre</li>
			<li>vintage - 2018</li>
		</ul>
	</div>

	<div style="text-align:center" class="col-md-4">
		<img src="https://github.com/iamme24cl/dev-images/blob/master/sinatra-project-images/henri-bourgeois-sancerre.jpg?raw=true" height="150" width="150">
		<h5><a href="">Henri Bourgeois</a></h5>
		<ul>
			<li>varietal: "Sauvignon Blanc"</li>
			<li>appelation:	"Chavignol, Sancerre"</li>
			<li>vintage: "2018"</li>
		</ul>
	</div>

</div>