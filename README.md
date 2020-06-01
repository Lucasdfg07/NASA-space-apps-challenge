![Logo of the project](https://github.com/Lucasdfg07/NASA-space-apps-challenge/blob/master/public/readme_images/logo.jpeg)


## HARMEET (NASA SPACE APPS COVID-19 EDITION)

The world is facing a pandemic due to the coronavirus mutation, known as COVID-19. 
The first cases of the disease appeared in December 2019 in the Wuhan region, located in China, with outbreaks of pneumonia.

The following month, more precisely on January 30, 2020, it was declared a Public Health Emergency of International Concern. On March 11, 2020, due to the increase in the number of cases of the disease and it's the reach in dozens of countries around the world, the outbreak of COVID-19 was declared a pandemic.

As a result of the proportion that the new coronavirus reached, the SolutionFinders team set out to develop a solution that could assist in the analysis of the impacts of COVID-19. With that intention, HARMEET was developed.

HARMEET is web application that shows the progress of the COVID-19 cases and their relation with socioeconomic indicators.
The platform consists of a dashboard that has a world map with colors corresponding to the proportion of the number of cases in each country. With the mouseover, it is possible to view information about the number of confirmed cases and deaths by COVID-19. 

For more information, a simple click on the desired country opens a tab that informs you it's respective economic situation in tabulated form.

However, the business vision went beyond the developed prototype. The application was designed to relate in real time the movement of the virus with impacts on the economy, the society and the environment The SolutionFinders team thought about the application of Data Science to analyze the data and provide forecasts regarding several economic indicators. In addition, future versions will include social and environmental indicators, such as unemployment rate, birth rate, water, land and air conditions, among others.

HARMEET was developed seeking the development of a single plataform capable of gather a wide variety of data. Thereby, people will have greater access to these data, which are very important for understanding the pandemic, help decision-making by governments and the elaboration of solutions by the population.

## Video Presentation
[<img src="https://img.youtube.com/vi/vqiKOqR0R-o/maxresdefault.jpg" width="50%">](https://youtu.be/vqiKOqR0R-o "Click to see the youtube video!")


## Technology 

Here are the technologies used in this project.

* Ruby version  2.5.1
* Rails version 6.0.3
* Docker 
* Docker Compose
* PostgreSQL

## Services Used

* Github
* Heroku

## Ruby Gems
* Rest-Client
* Bulma
* JQuery-rails
* Ransack
* Select2-rails
* Morris js
* Whenever


## Getting started

* Dependency
  - Docker
  - Docker Compose

* To build the containers:
>    $ sudo docker-compose build

* To create the bank and do as migrations:
>    $ sudo docker-compose run --rm app bundle exec rake db:seed

* To install as gens:
>    $ sudo docker-compose run --rm app bundle install

* To run the project:
>    $ sudo docker-compose up

* to populate BD with covid-19 data
>    $ docker-compose run --rm app bundle exec rails c
-    $ CovidPopulationService.new.call


## How to use
  - Get start accessing http://covid-world.herokuapp.com/
  
  ![Initial Page](https://github.com/Lucasdfg07/NASA-space-apps-challenge/blob/master/public/readme_images/1.png)
  ![Initial Page](https://github.com/Lucasdfg07/NASA-space-apps-challenge/blob/master/public/readme_images/2.png)
  ![Initial Page](https://github.com/Lucasdfg07/NASA-space-apps-challenge/blob/master/public/readme_images/3.png)
  
  - Choose a coutry to see the covid-19 statitics at thats region and relate it with the economic data that you can consult on https://tradingeconomics.com
  
  ![Second Page](https://github.com/Lucasdfg07/NASA-space-apps-challenge/blob/master/public/readme_images/4.png)
  ![Second Page](https://github.com/Lucasdfg07/NASA-space-apps-challenge/blob/master/public/readme_images/5.png)
  ![Second Page](https://github.com/Lucasdfg07/NASA-space-apps-challenge/blob/master/public/readme_images/6.png)


## Features
  - See Countries and their covid-19 data.
  - Consult the number of cases and deaths.
  - Consult the economic data and relate it with covid-19 cases to prevent the impact.


## Links
  - Link of deployed application: http://covid-world.herokuapp.com/
  - Repository: https://github.com/Lucasdfg07/NASA-space-apps-challenge
    - In case of sensitive bugs like security vulnerabilities, please contact
      Lucassiqueiraferandes07@gmail.com directly instead of using issue tracker. We value your effort
      to improve the security and privacy of this project!

  ## Versioning

  1.0.0.0


  ## Authors
  
  * **Amanda Leal**: @slealamanda (https://github.com/slealamanda)
  * **Lucas Diniz**: @lcsdiniz (https://github.com/lcsdiniz)
  * **Lucas Siqueira**: @lucasdfg07 (https://github.com/Lucasdfg07)

  Please follow github and join us!
  Thanks to visiting me and good coding!

