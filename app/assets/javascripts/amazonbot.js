var casper = require('casper').create({
    verbose: true,
    logLevel: "debug",
    pageSettings: {
        loadImages: true, // The script is much faster when this field is set to false
        loadPlugins: true, // The script is much faster when this field is set to false
        userAgent: 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36'
    }
});

//First step is to open Amazon
casper.start().thenOpen("https://www.amazon.com/gp/sign-in.html", function() {
    console.log("==================================================");
    console.log("Amazon website opened");
    this.capture("1-AmazonLoginPage.png");
});

// //Second step is to click to the Sign-in button
// casper.then(function(){
//    this.evaluate(function(){
//       document.getElementById("nav-tools").children[0].doubleclick();
//    });
//    // this.echo(this.getTitle());
//    this.capture("2-AfterLoginSelection.png");
// });

//Now we have to populate username and password, and submit the form
casper.then(function(){
    console.log("==================================================");
    console.log("Login using username and password");
    this.evaluate(function(){
        document.getElementById("ap_email").value="generocityteam@gmail.com";
        document.getElementById("ap_password").value="blueangels";
    });
    // this.echo(this.getTitle());
    this.capture("2-LoginFilled.png");
    this.evaluate(function() {
      document.getElementById("signInSubmit").click();
    });
    this.waitForUrl(/signin?/, function() {
      console.log("==================================================");
      this.echo("redirected to profile page");
      this.capture("3-LoginSubmitted.png");
    });
});

//Wait to be redirected to the Home page, and then make a screenshot
casper.thenOpen("https://www.amazon.com/gp/css/homepage.html/ref=nav_youraccount_ya", function() {
    console.log("==================================================");
    console.log("Redirect to Amazon");
    this.waitForSelector("div.customer-name", function() {
      console.log("==================================================");
      console.log("Take a screenshot when loaded")
      this.capture('4-AfterLogin.png');
    });
});

casper.thenOpen("http://www.amazon.com/dp/B000RYC9GM", function() {
    console.log("==================================================");
    console.log("Redirect to Peanut Butter");
    this.waitForSelector("img#landingImage", function() {
      console.log("==================================================");
      console.log("Take a screenshot when PB loaded")
      this.capture('5-ViewItem.png');
    });
});

casper.then(function() {
  this.evaluate(function() {
    document.getElementById("add-to-cart-button").click();
  });
  this.waitForText("Added to Cart", function() {
    console.log("==================================================");
    console.log("Take a screenshot when PB added to cart")
    this.capture("6-ItemAddedToCart.png");
  });
});

casper.thenOpen("https://www.amazon.com/gp/cart/view.html", function() {
  this.waitForText("Shopping Cart", function() {
    console.log("==================================================");
    console.log("Take a screenshot when cart is open");
    this.capture("7-Cart.png");
  });
});

casper.then(function() {
  this.evaluate(function() {
    document.getElementsByName("proceedToCheckout")[0].click();
  });
  this.waitForText("Select a shipping address", function() {
    console.log("==================================================");
    console.log("Open login screen to checkout");
    this.capture("8-CheckoutLogin.png");
  });
});

casper.then(function() {
  this.evaluate(function(){
    document.getElementById("enterAddressFullName").value="Donation Center";
    document.getElementById("enterAddressAddressLine1").value="633 Folsom Street 6th Floor";
    document.getElementById("enterAddressCity").value="San Francisco";
    document.getElementById("enterAddressStateOrRegion").value="California";
    document.getElementById("enterAddressPostalCode").value="94107";
    document.getElementById("enterAddressCountryCode").value="United States";
    document.getElementById("enterAddressPhoneNumber").value="5305706987";
  });
  console.log("==================================================");
  console.log("Fill out shipment information");
  this.capture("9-FilledOutShipmentInfo.png");
});

casper.then(function() {
  this.evaluate(function() {
    document.getElementsByClassName("submit-button-with-name")[0].click();
  });
  this.waitForText("Choose your shipping options", function() {
    console.log("==================================================");
    console.log("Confirm shipping info");
    this.capture("10-ShipmentInfoSubmission.png");
  });
});

casper.then(function() {
  this.evaluate(function() {
    document.getElementsByClassName("a-button-text")[0].click();
  });
  this.waitForText("Select a payment method", function() {
    console.log("==================================================");
    console.log("Select payment method");
    this.capture("11-PaymentMethod.png");
  });
});

// casper.then(function() {
//   this.evaluate(function() {
//     document.getElementById("ccName").value="Anthony Castelli";
//     document.getElementById("addCreditCardNumber").value="0000000000000000";

//   });
//   this.waitForText("Select a payment method", function() {
//     console.log("==================================================");
//     console.log("Select payment method");
//     this.capture("11-PaymentMethod.png");
//   });
// });

casper.then(function() {
  this.fill("form[id='form-add-credit-card']", {
    ccName: "Anthony Castelli",
    addCreditCardNumber: ""
  });
});

casper.run();
