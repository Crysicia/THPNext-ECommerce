# README

## Workflow dev

## Process project :
* Besoins => User Stories | Solutions => Specs
* Card → Issue → PR → Review → Merge
* Pour les PR : _Random mais on tournera chaque semaine_

## Les branches :
* master (Déployé automatiquement en staging, passe par CircleCI, on ne push rien sur master)
* development (Branche de base, on tire une branche d'ici quand on dev une feature)
* feature-[nom-feature] (Branche feature, à merge sur development)
* _OPTIONAL_ hotfix-[nom-hotfix] (Quand il y a un bug à fix en "catastrophe" sur master)

## Le flow :
POUR DÉV UNE FEATURE :
Tire une branche de development
$ git checkout development
$ git pull origin development
$ git checkout -b feature/[nom-feature]
Push ta branche que l'on voit qui bosse sur quoi.
Code ta feature
Quand tu as fini de dev ta feature :
$ git checkout development
$ git pull origin development
$ git checkout feature/[nom-feature]
$ git merge development
$ git add & commit

En urgence :
Squash tes commits pour n'en faire qu'un seul :
$ git rebase -i <SHA du premier commit>
Remplace pick par squash SAUF pour le premier commit de la liste, sauvegarde et quitte. (Si tu te plantes, ne panique pas et regarde comment utiliser git reflog)
Tu peux changer le nom du commit, sauvegarde et quitte encore.
Force-push ta branche, ouvre une pull request et assigne un membre de l'équipe.


## PUSH SUR MASTER :
On ne push JAMAIS directement sur master !
Dès que l'on doit interagir avec master il faut le faire via une pull-request.
Pour qu'une pull-request soit merge sur master le CI doit passer et un reviewer doit avoir approuvé la pull request.

## RÉDIGER UN BON COMMIT

Titre clair et concis de la feature / English ! / Présent, impératif / Description si besoin
✓ Bon : Add integration tests for character CRUD
X Pas bon : Added new CSS and the styling is now over / Bug corrigé sur le formulaire

## Glossaire :

*Visitor* : Un "visitor" est un utilisateur du site qui n'a pas de compte.
*Admin* : Nous appellerons "admin" un utilisateur du site qui a accès à l'espace administration (et à tout le reste de l'application).
*User* : Un "user" du site est un utilisateur muni d'un compte (qui lui permet de s'authentifier).





