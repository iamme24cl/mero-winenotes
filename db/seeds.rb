User.destroy_all
Wine.destroy_all

chandra = User.create(:name => "Chandra", :email => "chandra@mail.com", :password => "test1")

ely = User.create(:name => "Ely", :email => "ely@mail.com", :password => "test123")

Wine.create(name: "Domaine Delaporte", varietal: "Sauvignon Blanc", appelation: "Chavignol, Sancerre", vintage: "2018", price: 35, 
image_url: "https://github.com/iamme24cl/dev-images/blob/master/sinatra-project-images/delaporte-sancerre.jpg?raw=true", 
tasting_notes: "100% Sauvignon Blanc with lots of flint and minerality. A little pear and honey on the finish." , user_id: chandra.id)