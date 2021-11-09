# THP - Projet Validant - EventBrite Jour 2

<hr>

Créer par l'équipe 100Code (Romuald Petit, Lucas Derhore, Justin MBODJE, Quentin Mainieri, Frédéric Coelho, Valentin Derhore)

<hr>

## Premier point :

- Faire un `gem install bundler:2.2.29`
- Ensuite `bundle install`
- Ensuite `rails db:create`
- Ensuite `rails db:migrate`
- Vérifier si migrations sont up avec : `rails db:migrate:status`
- Enfin ouvrir le serveur `rails server`
- Ouvrir une fenetre du navigateur (exemple: chrome) et aller sur: `localhost:3000`
- Lien Heroku : 

<hr>


## Fonctionalitées :


A ce jour nous avons pour fonctionalitées :

- L'inscription, avec mot de passe et e-mail sécurisé
- La notion de login, logout, session, current user
- La récupération de mot de passe par e-mail
- Le comptage de login
- Création d'un évènement
- Affichage de l'évènement grâce a un lien "Intéréssé"
- Différentes permissions pour acceder a certaines fonctionnalitées du site


<hr>


## Soon prochains jours :


En developpement :

- Participation a l'évènement sous forme de compteur actif
- Système de paiement
- Système de localisation
- 