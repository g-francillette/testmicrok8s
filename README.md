# Technical Test Project :

* Developper une API Rest ( et son chart helm ) de key/value store persistant ( GET / PUT / POST / DELETE ) en golang/python
* Respecter les steps importantes de la norme gazr ( https://gazr.io/ ) pour son makefile
* Utiliser microk8s pour deployer l'API dans kubernetes en local
* Bonus : Ajouter les éléments que vous jugez important dans un projet et qui manque dans ce projet


# Environnement de dévelopement:
> MACos + VM avec microk8S

## Autre configuration:
ajout de l'ip de la vm k8 dans le fichier hosts:

```
192.168.64.2    myk8
```
# Travail réalisé

* Installation et configuration de microk8s
* Création du makefile
* API REST (Uniquement GET) sans persistence
* build et déploiement de l'API REST via kubectl

# Travail Manquant

* déploiement avec le chart helm
* CRUD application 
  
# Description du makefile

* Build: Création de l'image
* Push: Envoie de l'image sur le registry microk8s
* run: Lancement du déploiement du service et du déploiement via la commande kubectl
* helm: Lancement du déploiement via la chart
* lint: analyse de la chart
* delete: désinstallation de la release de la charte




