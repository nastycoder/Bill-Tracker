### README

Bill-Tracker is a Rails 4.0 web app that leverages Ruby 2.0, Bootstrap 3.0, and Highcharts 3.0.  

**Installation**
```bash
$ git clone git@github.com:cdcooksey/Bill-Tracker.git
$ cd Bill-Tracker/
$ bundle
$ bundle install
```

**Usage**

![mockup](https://raw.github.com/wiki/cdcooksey/Bill-Tracker/img/highcharts-01.png)

The goal of this web app is to replace mint.com in a local environment -- securely.  

Bill tracker requires you to add the companies you pay out to:
![mockup](https://raw.github.com/wiki/cdcooksey/Bill-Tracker/img/Companies-01.png)

Bill tracker requires you to add the payment methods you use to pay:
![mockup](https://raw.github.com/wiki/cdcooksey/Bill-Tracker/img/Methods-01.png)

Input each bill as you pay it into the main screen:
![mockup](https://raw.github.com/wiki/cdcooksey/Bill-Tracker/img/Payments-01.png)

The web app will track your payments and graph them over time, giving you an improved outlook on how you are spending your money. 

**Database**

By default, the production and development enviroment use MySQL database with username ```bill_pay``` and password ```bill_pay```.  Obviously, this is the distrubtion credentials.  Change them.

Please fork the code as you see fit.  Or, submit a pull request.  Both are welcome.
