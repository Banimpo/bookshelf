# 📚 BookShelf — Application Flutter de Gestion de Livres

**BookShelf** est une application Flutter multi-écrans (Mobile & Tablette) permettant d'explorer une collection de livres, d'effectuer des recherches/filtrages par genre, de consulter les détails d'un ouvrage et d'en enregistrer de nouveaux.

---

## 🎯 Fonctionnalités Principales

- **Catalogue & Recherche (`HomeScreen`)** : Recherche dynamique par titre/auteur et filtrage par genres (Roman, Essai, Conte, SF).
- **Fiche Détaillée (`DetailScreen`)** : Affichage des informations complètes du livre avec passage de paramètres via `GoRouter`.
- **Formulaire d'Ajout (`AddBookScreen`)** : Formulaire interactif avec validation sur au moins 3 champs (Titre, Auteur, Nb de pages).
- **Gestion du Thème (`SettingsScreen`)** : Basculement dynamique entre Thème Clair et Thème Sombre.
- **Interface Responsive** : Adaptation automatique du nombre de colonnes de la grille selon la taille de l'écran (Mobile vs Tablette via `LayoutBuilder`).

---

## 🛠️ Architecture Technique

- **Navigation** : `GoRouter` avec routes nommées (`/`, `/book/:id`, `/add`, `/settings`).
- **State Management léger** : `ValueNotifier` pour la gestion globale du mode sombre.
- **Séparation UI/Données** : Modèle de données strict (`models/book.dart`) et mock-data séparée (`data/mock_books.dart`).
- **Widgets Réutilisables (`widgets/`)** :
  - `BookCard` (Carte produit avec effet `Hero`)
  - `GenreChip` (Filtre par catégorie)
  - `RatingBadge` (Badge de note)
- **Widgets Flutters intégrés** : `GridView`, `ListView`, `Stack`, `Hero`, `Form`, `TextFormField`, `DropdownButtonFormField`, `SwitchListTile`, `LayoutBuilder`, `Card`.

---

## 🚀 Installation & Lancement

1. **Cloner le projet :**
   ```bash
   git clone [https://github.com/TON_USERNAME/bookshelf.git](https://github.com/TON_USERNAME/bookshelf.git)
   cd bookshelf
