---
title: AM 2. Migration des données
sidebar_position: 1
slug: /MA-2DM
---

# **MD : Migration de données** {#238598a5fd40802d917ed1a14d5bff88}

**2.1 Introduction**

La migration est le processus de déplacement d'un projet (y compris tous les fichiers de configuration) de **Paratext 7** vers Paratext 9. Paratext 9 n'a pas de fonction de migration. Cependant, il est encore possible de le faire avec Paratext 8. N.B. : Paratext 9 peut lire les projets Paratext 8.

_**Où en sommes-nous ?**_

Vous avez déjà installé Paratext 8 et vous avez un projet Paratext 7 que vous souhaitez utiliser dans Paratext 9.

_**Pourquoi est-il important ?**_

Pour que toutes les fonctionnalités de Paratext 9 fonctionnent, votre projet Paratext 7 doit être migré. Paratext 7 et Paratext 9 utilisent des serveurs différents pour l'envoi et la réception. Il ne sera donc pas possible de partager un projet avec des utilisateurs de Paratext 7 et de Paratext 8 (ou 9) en même temps. Par conséquent, l'ancien serveur sera fermé à la fin du mois de décembre 2018. Il est donc important de migrer rapidement les projets.

Les utilisateurs peuvent installer Paratext 7 et Paratext 8 (et 9) en même temps et utiliser l'un ou l'autre, mais aucun projet ne peut être partagé entre eux.

Une fois le projet migré, tout le monde doit recevoir le projet migré et ne travailler qu'à partir de Paratext 8 (ou 9).

Pour migrer un projet, vous devez disposer d'une bonne connexion Internet. Si vous travaillez habituellement sans connexion Internet, vous pouvez continuer sans connexion une fois que le projet a été migré.

_**Qu’est-ce qu’on va faire ?**_

Vous allez

- effectuer la migration d'un projet partagé:
- effectuer la migration d'un projet non partagé:

**2.2 Migrer un projet partagé depuis Paratext 7**

Si vous administrez un projet existant dans Paratext 7 et que vous souhaitez le migrer vers Paratext 8 (ou 9), voici comment procéder.

**2.2.1 Préparer un projet Paratext 7 pour la migration**

Tous les utilisateurs doivent effectuer la mise à jour en même temps.

- Tous les utilisateurs doivent envoyer/recevoir en **Paratext 7** (et cesser de travailler en Paratext 7).
- L'administrateur confirme que le texte est en bon état.
- L'administrateur lance **Paratext 8.**
- **Fichier** &gt; **Ouvrir un projet/une ressource**
- Cliquez sur la case en bas pour afficher les projets Paratext 7
- Choisissez le projet à faire migrer.

Il sera probablement marqué comme "v7, non-inscrit."

Il se peut que le projet soit marqué comme "v7" sans être décrit comme non-inscrit, car un certain nombre de projets Paratext 7 ont été préinscrits sur Paratext 8. Si le vôtre est l'un de ceux-ci, vous devriez continuer la migration, mais vous pouvez sauter l'enregistrement.

- Click **OK** to start migrating the project.

La boîte de dialogue Faire migrer un projet partagé s'affiche.

_Paratext 8 may tell you that the project needs to be registered (if it is not pre-registered) and that it needs to be migrated to Paratext 8._

**2.2.2 Inscrire un projet (avant de faire migrer le projet)**

- Click the **Register Online** button
- Remplissez le formulaire web. (Les champs marqués d'un astérisque sont obligatoires.)
- Short name (Nom abrégé) : Le nom abrégé du projet ne sera plus modifiable après ce processus.
- Full name (Nom complet) : Vous pouvez modifier le nom complet du projet.
- Paratext 8 nécessite un identifiant de langue pour votre langue. Use the **Search** function in the language name to find the Ethnologue code for your language.
- **Scope** Will the project be a complete Bible, a complete Bible including the deuterocanonical books, the New Testament, or some other group of books?
- The **type of translation** indicates whether the project is the first translation for this language, a revision of an existing translation, a new translation, or a translation with study notes, such as a study Bible.
- **Country**: Indicate the country where the language is spoken. Vous pouvez taper quelques lettres du nom puis choisir le pays désiré. Vous pouvez spécifier plus d’un pays si la langue se propage au-delà des frontières
- **Rights holder**: The rights holder would be the organisation from which you expect to obtain copyright for a printed edition. Cela peut également être modifié plus tard.
- Les quatre derniers champs vous permettent d'ajouter d'autres informations si elles sont pertinentes pour décrire votre projet. (Aucune de ces options n'est requise.)
- Vous pouvez indiquer si votre projet est confidentiel ou non. Seuls les utilisateurs enregistrés de Paratext 8 peuvent afficher le nom des projets standard, un projet confidentiel sera masqué même devant les autres utilisateurs de Paratext 8.
- Une autre option consiste à marquer un projet comme un projet de test ou de formation. Vous pouvez utiliser cette option pour les projets de test que vous créez ou pour les projets que vous utilisez pour la pratique dans un cours de formation.
- Confirmez que vous acceptez de suivre les directives FOBAI dans votre projet de traduction et vous acceptez de stocker une copie de sauvegarde de votre projet dans la Bibliothèque Biblique Numérique.

La "Digital Bible Library" (Bibliothèque Biblique Numérique) est un outil pour rendre les traductions disponibles en ligne ou pour les utilisateurs mobiles, mais votre projet ne sera disponible à personne jusqu'à ce que vous acceptiez de le rendre disponible.

- Click **Submit Registration**

Un message s’affiche « Projet enregistré avec succès. »

- Retournez à Paratext

Il devrait détecter que le projet est maintenant enregistré et vous en informer.

**2.2.3 Migration d'un projet inscrit**

Si vous venez d’inscrire votre projet, votre projet est déjà ouvert et vous pouvez continuer avec la migration. Sinon ouvrir le projet à faire migrer.

- L'étape de migration comporte plusieurs cases que vous devez cocher pour vérifier que vous comprenez ce qui est impliqué.
- Je suis le membre de l’équipe qui a été sélectionné pour faire ce processus pour toute l’équipe.
- Notre équipe comprend que le projet PT8 sera la copie officielle du projet
- Tous les membres de l’équipe ont cessé de modifier la copie de PT7 du projet.
- Tous les membres de l'équipe ont effectué un Envoyer/Recevoir final de leurs modifications dans PT7.
- Cet ordinateur a reçu les changements dans PT7.
- Check these boxes if they are true, then click **Migrate Now** to continue.

Si vous avez besoin de faire autre chose avant d'être prêt à migrer, cliquez sur Migrate later (Faire migrer plus tard), puis terminez vos préparatifs.

- When you click **Migrate Now**, Paratext will copy the project from your Paratext 7 to your Paratext 8 and also perform a send/receive to the Internet.
- If you receive a warning about a final send/receive in **Paratext 7**,
- Cliquez sur **Ajouter analyse de mot**,

le processus de migration arrete,

- Marquez un point de repère dans l'historique du projet dans Paratext 7,
- puis redémarrez la migrationdans Paratext 8.
- Maintenant, vos collègues peuvent aller à Paratext 9 et faire un envoyer / recevoir pour recevoir le projet migré.

Si ils ne disposent pas d'une connexion Internet, vous pouvez faire un envoyer / recevoir vers USB ou un dossier réseau, et ils peuvent recevoir le projet dans Paratext 9 de cette façon.

**2.3 Paramètres supplémentaires du projet**

- **Language identifier:** After clicking **Migrate now**, Paratext 8 may tell you that you need to specify a language identifier for your project.

You can check the language name and language identifier for your project by going to ≡ Tab, under Project &gt; Project settings &gt; Language settings. L'identifiant de la langue se trouve soit entre parenthèses après le nom de la langue ou en dessous du nom.

- **Books**: The project settings and project properties include a Books tab, where you specify the books you plan to have in your project.

Vous pouvez choisir des livres individuels, l'un après l'autre, ou spécifier l'Ancien Testament, le Nouveau Testament ou les livres deutérocanoniques en utilisant les boutons. Vous pouvez modifier cette liste de livres plus tard dans le projet si vos attentes pour le projet changent.

N.B. Après avoir fait migrer votre projet, il faut également faire migrer la retraduction, et tous les projets de traduction-filles l’un après l’autre.

**2.4 Migrer un projet non partagé**

Si un projet n’a pas été partagé en Paratext 7, vous n’avez pas besoin de l’inscrire avant de le faire migrer, mais c’est fortement recommandé.

- Lancez Paratext 8
- **File &gt; Open Project/Resource**
- Click on **Show Paratext 7 projects**
- Choisissez le projet à faire migrer.
- Click on **Migrate now** (migrate now)

When you click **Migrate Now**, the project will be migrated to the Paratext 8 folder, ready for use. Le statut d’enregistrement déterminera les fonctionnalités qui sont disponibles pour le projet.

N.B. Les projets non partagés n’ont pas besoin d’être inscrits, mais il est conseillé.

:::tip

Rappelez-vous que personne ne devra plus modifier le projet dans Paratext 7. Ce serait un effort gaspillé, car personne d'autre ne verra jamais leurs changements. Pour aider les membres de votre équipe à se souvenir de cela, vous pourriez supprimer le projet de leur Paratext 7 une fois qu'ils l'ont obtenu en Paratext 8. Autrement, ils peuvent désinstaller Paratext 7 de leur ordinateur s'ils n'en ont pas besoin pour d'autres projets.

:::



