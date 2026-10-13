# COMMENCER ICI — FortBoost AI

**Dépôt unique : https://github.com/SculptMethod/fortboostai**

Pour demander une modification : « Modifie la page Tarifs » ou « Améliore la section FPS ». Le développement se fait directement sur une branche de ce dépôt avec une pull request. Tu n'as pas besoin de copier les fichiers.

## Où se trouve quoi ?
- `src/site.js` : toutes les pages et traductions FR/EN, démonstration.
- `src/site.css` : design responsive.
- `scripts/build.mjs` : génération du site statique.
- `netlify/functions/` : API serveur.
- `sql/schema.sql` : base de données.
- `docs/` : déploiement, sécurité, intégration Windows.
- `AGENTS.md` : règles permanentes.

## Avant de vendre
Créer un compte Supabase, appliquer la migration SQL, configurer Stripe **en mode test**, configurer les secrets dans Netlify, tester les scénarios serveur puis finaliser le logiciel Windows et les documents juridiques. Aucune vente réelle avant toutes ces étapes.

## Netlify
Importer ce dépôt avec GitHub. Netlify lit `netlify.toml`. Les changements sur les branches produisent des prévisualisations selon la configuration du compte.
