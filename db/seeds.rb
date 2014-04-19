# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Wine.create(name:"D'Autrefois Pinot Noir", year:2009, winery:"D'Autrefois", country:'France', varietal:'Pinot Noir')
Wine.create(name:'Opus One', year:2009, winery:'Opus One', country:'California', varietal:'Cabernet Sauvignon')
Wine.create(name:'Conundrum Red', year:2011, winery:'Caymus Vineyards', country:'California', varietal:'Cabernet Sauvignon')
Wine.create(name:'Conundrum White', year:2011, winery:'Caymus Vineyards', country:'California', varietal:'Chardonnay')
Wine.create(name:'Chateau Mouton Rothschild Pauillac', year:2010, winery:'Chateau Mouton Rothschild', country:'France', varietal:'Bordeaux')
Wine.create(name:'Two Buck Chuck', year:2012, winery:'Charles Shaw', country:'California', varietal:'Pinot Noir')