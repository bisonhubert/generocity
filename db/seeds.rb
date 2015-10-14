# Inventory of Items in Pantry
# tuna
# peanut putter
# canned meat
# soup
# chili
# beans
# cereal
# canned fruit
# canned vegetables
# granola bars
# toothbrushes
# toothpaste
# soap
# deodorant
# hygene
Item.create(name: "Progresso Vegetable Classics Soup, Minestrone, 19 Oz", price: 1.51, image: "../images/minestronesoup.jpg", description: ["Full serving of vegetables"], asin: "B00099XO82")
Item.create(name: "Progresso Rich & Hearty Soup, Chicken & Homestyle Noodles, 19 Oz", price: 1.51, image: "../images/chickensoup.jpg", description: ["Contains wheat, egg, and soy ingredients", "No MSG added"], asin: "B000Q5LWE2")
Item.create(name: "Progresso Rich & Hearty Soup, Beef Pot Roast, 18.5 Oz", price: 3.18, image: "../images/beefsoup.jpg", description: [], asin: "B000Q5NG46")



Item.create(name: "Chunky Roadhouse Beef and Bean Chili, 19 Oz", price: 2.25, image: "../images/chili.jpg", description: ["Bean chili made with lean beef", "Good source of protein, fiber and vitamin A, low cholesterol with no trans fat", "Easy open pull tab"], asin: "B00IAE4O6E")
Item.create(name: "Bumble Bee Solid White Albacore Tuna in Water, 12 Oz", price: 3.74, image: "../images/tuna.jpg", description: ["Gluten Free", "Kosher", "Omega-3s"], asin: "B0010Z61P2")
Item.create(name: "Chef Boyardee Ravioli, Beef, (4 Count, 15 Ounces Each)", price: 3.62, image: "../images/ravioli.jpg", description: ["Zero grams trans fat", "10 grams of protein per serving"], asin: "B00I9VBMLI")



Item.create(name: "Jif Creamy Peanut Butter, 40 Oz", price: 4.96, image: "../images/creamypeanutbutter.jpg", description: ["Style: Creamy"], asin: "B00I8G7268")
Item.create(name: "Jif Extra Crunchy Peanut Butter, 40 Oz", price: 3.77, image: "../images/crunchypeanutbutter.jpg", description: ["Style: Extra Crunchy"], asin: "B00I8G6S9K")
Item.create(name: "Dole Mixed Tropical Fruit In Passion Fruit Nectar, 15.25 Oz", price: 1.42, image: "../images/tropicalfruit.jpg", description: ["Pop and peel lid", "Excellent source of Vitamins A & C", "Kosher"], asin: "B000RY6G3E")



Item.create(name: "General Mills Cereals Honey Nut Cheerios Medley Crunch, 13.1 Ounce", price: 2.98, image: "../images/cheerios.jpg", description: ["Good source of calcium and vitamin D"], asin: "B00WYOGJT6")
Item.create(name: "Green Giant Whole Kernel Sweet Corn, 14.5 Ounce (Pack of 4)", price: 3.28, image: "../images/sweetcorn.jpg", description: ["Official box tops for education brand", "Four pack", "61 oz total"], asin: "B00XBOKQQK")
Item.create(name: "Green Giant Vegetable Cans, Sweet Peas, 14.5oz", price: 3.28, image: "../images/sweetpeas.jpg", description: ["Kosher", "Pack of four"], asin: "B00XBOKJJO")



Item.create(name: "Kellogg's Frosted Mini Wheats Original, 24 Ounce Box", price: 3.05, image: "../images/miniwheats.jpg", description: [], asin: "B00QTX0D18")
Item.create(name: "Nature Valley Crunchy Granola Bars, Variety Pack, 24 Count", price: 3.46, image: "../images/crunchygranola.jpg", description: ["Variety pack includes Oats 'N Honey, Peanut Butter, and Maple Brown Sugar", "Excellent source of whole grain with 16 grams per serving", "24 Count Box"], asin: "B00J2AV5MG")
Item.create(name: "Quaker Chewy Granola Bars, Reduced Sugar Variety Pack, 18 Count", price: 3.74, image: "../images/chewygranola.jpg", description: ["18-Count Box", "Variety Pack includes Chocolate Chip, Cookies & Cream, and Peanut Butter Chocolate Chip", "25% Less Sugar"], asin: "B00ID0OZKA")



# Donation Centers
DonationCenter.create(name: "Embarcadero YMCA", address: "169 Steuart Street", city: "San Francisco", state: "CA", zip: 94105, phone_number: "4159579622", website: "http://www.ymcasf.org/embarcadero/", district: "Downtown/Financial District")
DonationCenter.create(name: "Congregation Beth Israel-Judea", address: "625 Brotherhood Way", city: "San Francisco", state: "CA", zip: 94132, phone_number: "4155868833", website: "http://www.bij.org/", district: "Lake Merced/Ingleside")
DonationCenter.create(name: "Lakeside Presbyterian Church", address: "Lakeside Presbyterian Church", city: "San Francisco", state: "CA", zip: 94132, phone_number: "4155645044", website: "http://www.lakesidechildrencenter.org/", district: "Lake Merced/Ingleside")
DonationCenter.create(name: "Temple United Methodist Church", address: "Temple United Methodist Church", city: "San Francisco", state: "CA", zip: 94132, phone_number: "4152390259", website: "http://www.templeunitedmethodist.org/")
DonationCenter.create(name: "St. James Church", address: "1086 Guerrero Street", city: "San Francisco", state: "CA", zip: 94110, phone_number: "4158244232", website: "http://saintjamessf.church/", district: "Mission")
DonationCenter.create(name: "Grace Cathedral of the Episcopal Church", address: "1100 California St", city: "San Francisco", state: "CA", zip: 94108, phone_number: "4157496315", website: "http://www.gracecathedral.org/", district: "Nob Hill")
DonationCenter.create(name: "Calvary Presbyterian Church", address: "2515 Fillmore Street", city: "San Francisco", state: "CA", zip: 94115, phone_number: "4153463832", website: "http://calvarypresbyterian.org/", district: "Pacific Heights")
DonationCenter.create(name: "Congregation Sherith Israel", address: "2266 California Street", city: "San Francisco", state: "CA", zip: 94115, phone_number: "4153461720", website: "https://www.sherithisrael.org/", district: "Pacific Heights")
DonationCenter.create(name: "Real Food Company", address: "3060 Fillmore Street", city: "San Francisco", state: "CA", zip: 94123, phone_number: "4155676900", website: "http://www.viewmenu.com/real-food-company-grocery-stores/menu?ref=google", district: "Pacific Heights")
DonationCenter.create(name: "Congregation Ner Tamid", address: "1250 Quintara Street", city: "San Francisco", state: "CA", zip: 94116, phone_number: "4156613383", website: "http://www.nertamidsf.org/", district: "Parkside")
DonationCenter.create(name: "Covenant Presbyterian Church", address: "321 Taraval Street", city: "San Francisco", state: "CA", zip: 94116, phone_number: "4156645335", website: "http://www.covenantpcsf.org/", district: "Parkside")
DonationCenter.create(name: "Grace Evangelical Lutheran Church", address: "3201 Ulloa Street", city: "San Francisco", state: "CA", zip: 94116, phone_number: "4157312088", website: "http://gracesf.com/", district: "Parkside")
DonationCenter.create(name: "Grace United Methodist Church", address: "2540 Taraval Street (at 36th Ave)", city: "San Francisco", state: "CA", zip: 94116, phone_number: "4157313050", website: "http://sfgrace.org/", district: "Parkside")
DonationCenter.create(name: "San Francisco Food Bank", address: "900 Pennsylvania Avenue", city: "San Francisco", state: "CA", zip: 94107, phone_number: "4152821900", website: "http://www.sfmfoodbank.org/", district: "Potrero")
DonationCenter.create(name: "Richmond District YMCA", address: "360 18th Avenue", city: "San Francisco", state: "CA", zip: 94121, phone_number: "4156669622", website: "http://www.ymcasf.org/richmond/", district: "Richmond")
DonationCenter.create(name: "Congregation Beth Sholom", address: "301 14th Avenue", city: "San Francisco", state: "CA", zip: 94118, phone_number: "4152218736", website: "http://bethsholomsf.org/", district: "Richmond")
DonationCenter.create(name: "Calvary Armenian Congregational Church", address: "725 Brotherhood Way", city: "San Francisco", state: "CA", zip: 94132, phone_number: "4155862000", website: "http://www.calvaryarmenianchurch.org/default.asp?sec_id=180011318", district: "Stonestown")
DonationCenter.create(name: "Seventh Avenue Presbyterian Church", address: "1329 7th Avenue", city: "San Francisco", state: "CA", zip: 94122, phone_number: "4156642543", website: "http://seventhavenuechurch.org/", district: "Sunset/Daly City")
DonationCenter.create(name: "St. John of God", address: "1290 5th Avenue", city: "San Francisco", state: "CA", zip: 94122, phone_number: "415-556-5610", website: "http://www.sjog.net/", district: "Sunset/Daly City")
DonationCenter.create(name: "Congregation B'nai Emunah", address: "3595 Taraval Street", city: "San Francisco", state: "CA", zip: 94116, phone_number: "4156647373", website: "http://bnaiemunahsf.org/", district: "Sunset/Daly City")
DonationCenter.create(name: "St. John Armenian Apostolic Church", address: "275 Olympia Way", city: "San Francisco", state: "CA", zip: 94131, phone_number: "4156611142", website: "http://www.stjohnarmenianchurch.com/", district: "Twin Peaks/Castro")
DonationCenter.create(name: "Grace Lutheran Church", address: "465 Woolsey Street", city: "San Francisco", state: "CA", zip: 94134, phone_number: "4154682937", website: "http://www.yelp.com/biz/grace-lutheran-church-san-francisco", district: "Visitacion Valley")
DonationCenter.create(name: "Buchanan YMCA", address: "1530 Buchanan Street", city: "San Francisco", state: "CA", zip: 94115, phone_number: "4159319622", website: "http://www.ymcasf.org/buchanan/", district: "Western Addition")
DonationCenter.create(name: "Community Baptist Church", address: "1642 Broderick Street", city: "San Francisco", state: "CA", zip: 94115, phone_number: "4155673248", website: "http://www.yelp.com/biz/community-baptist-church-san-francisco", district: "Western Addition")
DonationCenter.create(name: "United Presbyterian Church", address: "1700 Sutter Street", city: "San Francisco", state: "CA", zip: 94115, phone_number: "4155673988", website: "http://www.cupc.org/", district: "Western Addition")