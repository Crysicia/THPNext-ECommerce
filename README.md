# README (English when possible)


## App specifications

* Ruby version : 2.5.3

* Rails version : 5.2

* Test framework : rspec


# Team Project - Workflow dev

This application structure will serve as the basis for your final projects.


## Process project :

* Les besoins sont traduites en *user stories*. Les *user stories* débouchent sur des *specs*, qui sont divisées entre *besoins* et *solutions*.

* Card → Issue → PR → Review → Rebase & Merge

* Pour les PR : 1 reviewer par Issue _Attribution Random, à faire tourner_


## Les branches : master et developement sont protégées [review obligatoire dans les paramètres]

* master (Déployé automatiquement en staging, passe par CircleCI, on ne push rien sur master)

* development (Branche de base, on tire une branche d'ici quand on dev une feature)

* feature-[nom-feature] (Branche feature, à merge sur development)


## Le flow :

POUR DÉV UNE FEATURE :
Tire une branche de development

$ `git checkout development`

$ `git pull origin development`

$ `git checkout -b feature/[nom-feature]`

$ Push ta branche que l'on voit qui bosse sur quoi
`git push --set-upstream origin feature/nom-feature`

Code ta feature. Quand tu as fini de dev ta feature :

$ `git checkout development`

$ `git pull origin development` (_précaution pour être sûr d'être à jour_)

$ `git checkout feature/[nom-feature]`

$ `git merge development`

$ `git add & commit & push origin feature_nom-feature`

$ Open pull request et choisir un reviewer

$ git fetch --all (pour obtenir les dernières branches en local)

On teste la branche en local

Soit on approuve la PR, soit on request des changements

Le dev de la feature peut merger sa branche


## ACHTUNG :

On ne push JAMAIS directement sur master !

Dès que l'on doit interagir avec master il faut le faire via une PR.

Pour qu'une PR  soit merge sur master le CI doit passer et un reviewer doit avoir approuvé la PR.


## RÉDIGER UN BON COMMIT

Titre clair et concis de la feature / English ! / Présent, impératif / Description si besoin

✓ Bon : Add integration tests for character CRUD

X Pas bon : Added new CSS and the styling is now over / Bug corrigé sur le formulaire


## Glossaire :

*Visitor* : Un "visitor" est un utilisateur du site qui n'a pas de compte.

*Admin* : Nous appellerons "admin" un utilisateur du site qui a accès à l'espace administration (et à tout le reste de l'application).

*User* : Un "user" du site est un utilisateur muni d'un compte (qui lui permet de s'authentifier).








