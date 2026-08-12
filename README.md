# 📚 BookShelf

BookShelf est une application Flutter de gestion de bibliothèque, pensée pour explorer un catalogue de livres, filtrer et rechercher rapidement, consulter les détails d’un ouvrage et ajouter de nouveaux titres.

## ✨ Fonctionnalités

- Catalogue avec recherche par titre ou auteur
- Filtre par genre
- Écran détaillé avec passage d’identifiant via GoRouter
- Formulaire d’ajout avec validation sur plusieurs champs
- Thème clair/sombre configurable
- Interface responsive adaptée mobile et tablette
- Architecture séparée entre donnée, modèles et widgets

## 📱 Écrans principaux

- Accueil : recherche et liste des livres
- Détail : fiche complète d’un livre
- Ajouter : formulaire de saisie et validation
- Paramètres : activation du thème sombre

## 🖼️ Captures d’écran

Voir le dossier [docs/screenshots](docs/screenshots/README.md) pour les visuels de l’application.

## 🏗️ Stack technique

- Flutter
- Dart
- GoRouter pour la navigation
- Riverpod pour la gestion du thème
- Widgets réutilisables dans le dossier widgets

## 📁 Structure du projet

- [BOOKSHELF/lib](BOOKSHELF/lib) : code applicatif
- [BOOKSHELF/lib/screen](BOOKSHELF/lib/screen) : écrans
- [BOOKSHELF/lib/widgets](BOOKSHELF/lib/widgets) : composants réutilisables
- [BOOKSHELF/lib/data](BOOKSHELF/lib/data) : données mockées
- [BOOKSHELF/lib/models](BOOKSHELF/lib/models) : modèles de données
- [BOOKSHELF/lib/routes](BOOKSHELF/lib/routes) : configuration des routes
- [docs/screenshots](docs/screenshots) : captures d’écran

## 🚀 Lancement

1. Installer Flutter et le SDK Dart.
2. Cloner le dépôt :
   ```bash
   git clone https://github.com/Banimpo/bookshelf.git
   cd bookshelf
   cd BOOKSHELF
   ```
3. Récupérer les dépendances :
   ```bash
   flutter pub get
   ```
4. Lancer l’application :
   ```bash
   flutter run
   ```

## ✅ Vérification

Le projet inclut une base de tests Flutter et la commande suivante a bien été vérifiée :

```bash
cd BOOKSHELF
flutter test
```

Résultat attendu : tous les tests passent.

## 📝 Remarques

Ce dépôt est prêt pour la publication GitHub avec une documentation minimale mais exploitable. Les captures peuvent être remplacées par des captures réelles si tu souhaites publier une version plus aboutie.
