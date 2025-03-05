<TeXmacs|2.1.2>

<style|<tuple|generic|french>>

<\body>
  Voici une proposition de guideline (ou feuille de route) pour implémenter
  le travail présenté dans le mémoire de Loems sur le Swarm SLAM. L'idée est
  de reprendre les grands objectifs du mémoire, puis de proposer une séquence
  d'implémentation, du choix de l'environnement de test (simulation ou robots
  physiques) jusqu'aux expérimentations finales. Cette guideline s'inspire
  directement du contenu et de l'architecture décrits dans le document,
  notamment la structure ROS, l'utilisation de Gmapping, la gestion de la
  communication distribuée, etc. \<#E200\>cite\<#E202\>turn0file0\<#E201\>

  <hrule>

  <section*|1. Choisir et configurer l'environnement de développement>

  <\enumerate>
    <item><strong|Environnement logiciel (ROS, Gmapping, etc.)>

    <\itemize>
      <item>Installer et configurer ROS (par exemple ROS Melodic ou Noetic
      selon la version de Linux).

      <item>Ajouter les paquets ROS nécessaires :

      <\itemize>
        <item><strong|gmapping> pour la cartographie en 2D via LIDAR/laser.

        <item><strong|map_server> pour sauvegarder et charger les cartes.

        <item>Tout autre paquet utile pour la fusion de cartes (par exemple
        un algorithme de \S multi-robot map merge \T ou votre propre n÷ud de
        fusion).
      </itemize>

      <item>Vérifier que tous les modules de communication (Wi-Fi ad hoc ou
      rostopic standard) sont opérationnels.
    </itemize>

    <item><strong|Simulation ou robots physiques>

    <\itemize>
      <item><strong|Simulation> :

      <\itemize>
        <item>Utiliser un simulateur ROS (Gazebo, ARGoS3, etc.) et y insérer
        votre modèle de robot.

        <item>Définir le(s) monde(s) virtuel(s) dans lesquels vous allez
        effectuer les tests (dimensions, obstacles, murs, etc.).
      </itemize>

      <item><strong|Robots physiques> (par exemple e-puck, Sphero
      RVR/Mercator ou autre plateforme) :

      <\itemize>
        <item>Installer le système ROS embarqué (type DeimOS sur e-puck, ou
        Raspberry Pi + ROS sur RVR).

        <item>Vérifier la disponibilité du LIDAR ou des capteurs de distance
        nécessaires.

        <item>Configurer un réseau ad hoc ou un point d'accès local (selon la
        méthode choisie pour la communication).
      </itemize>
    </itemize>
  </enumerate>

  <hrule>

  <section*|2. Implémenter la logique de SLAM local (Gmapping)>

  <\enumerate>
    <item><strong|Configuration de Gmapping>

    <\itemize>
      <item>Bien renseigner les paramètres de Gmapping :

      <\itemize>
        <item><code*|maxUrange>, <code*|minUrange>, résolution, taille de la
        carte, etc.

        <item>Dans le mémoire, la limitation de la portée laser (0.4 m par
        exemple) est abordée pour les petits environnements.
        \<#E200\>cite\<#E202\>turn0file0\<#E201\>
      </itemize>

      <item>Vérifier les topics ROS pour la réception des scans laser (topic
      <code*|/scan>) et de l'odométrie (topic <code*|/odom>).
    </itemize>

    <item><strong|Carte locale de chaque robot>

    <\itemize>
      <item>Chaque robot exécute Gmapping en local et produit sa propre carte
      d'occupation (occupancy grid).

      <item>Mettre en place la sauvegarde périodique de la carte (au format
      PGM + YAML via <code*|map_server> ou via un n÷ud custom).
    </itemize>

    <item><strong|Gestion de l'odométrie>

    <\itemize>
      <item>Valider la cohérence de l'estimation odométrique (erreurs
      d'odométrie, couplage éventuel avec le gyroscope ou l'IMU).

      <item>Au lancement, déterminer si l'orientation initiale et la position
      initiale des robots sont partagées (cas typique si on sait où on les
      dépose).
    </itemize>
  </enumerate>

  <hrule>

  <section*|3. Mettre en place la stratégie d'exploration multi-robot>

  <\enumerate>
    <item><strong|Exploration type random walk>

    <\itemize>
      <item>Choisir la variante de random walk (ballistic, standard, etc.),
      qui dicte comment chaque robot se déplace pour couvrir l'environnement.

      <item>Le mémoire Loems souligne l'intérêt du <strong|ballistic motion>,
      avec de meilleurs résultats de couverture.
      \<#E200\>cite\<#E202\>turn0file0\<#E201\>
    </itemize>

    <item><strong|Suivi des positions et éventuelle coordination>

    <\itemize>
      <item>Soit chaque robot explore de manière totalement indépendante ;

      <item>Soit on intègre une coordination plus poussée (en s'échangeant
      des zones déjà cartographiées pour éviter de repasser aux mêmes
      endroits).
    </itemize>

    <item><strong|Gestion de la collision et sécurité>

    <itemize|<item>Vérifier l'évitement d'obstacles (capteurs IR, LIDAR ou
    autre) et la correction de trajectoire automatique pour éviter les
    collisions.>
  </enumerate>

  <hrule>

  <section*|4. Mettre en ÷uvre la communication distribuée>

  <\enumerate>
    <item><strong|Création d'un réseau ad hoc>

    <\itemize>
      <item>Chaque robot est un n÷ud du réseau (MANET).

      <item>Choisir un protocole de routage (par exemple un protocole réactif
      ou hybride adapté aux robots mobiles).
    </itemize>

    <item><strong|Définir le format de données échangées>

    <\itemize>
      <item>Dans le mémoire, il est proposé d'échanger des images (PGM) ou
      d'autres représentations plus légères (occupancy grid compressé,
      features, etc.).

      <item>Vérifier la charge réseau en fonction du nombre de robots et de
      la fréquence d'échange.
    </itemize>

    <item><strong|Implémenter le module de réception et de fusion>

    <\itemize>
      <item>À la réception d'une carte étrangère, déclencher la fusion (map
      merging).

      <item>Gérer la mise à jour de votre \Pglobal map\Q dans chaque robot.
    </itemize>
  </enumerate>

  <hrule>

  <section*|5. Implémenter l'algorithme de fusion de cartes (map merging)>

  <\enumerate>
    <item><strong|Alignement des cartes>

    <\itemize>
      <item>Si l'on connaît les positions initiales relatives, il suffit
      d'utiliser cette transformation pour recaler les cartes.

      <item>Sinon, mettre en ÷uvre un algorithme de détection de features ou
      d'overlaps (par exemple : détecter des régions communes dans les
      grilles).
    </itemize>

    <item><strong|Stratégie de fusion>

    <\itemize>
      <item>Choisir la politique de fusion des valeurs (pour chaque pixel) :
      moyenne, filtre médian, règle de priorité, etc.
      \<#E200\>cite\<#E202\>turn0file0\<#E201\>

      <item>Gérer les conflits (une zone marquée \Pobstacle\Q par un robot et
      \Pvide\Q par un autre).

      <item>Dans le mémoire, un filtrage median est appliqué pour diminuer le
      bruit, en tenant compte des incertitudes.
    </itemize>

    <item><strong|Prévenir la surconfiance (\Pover-confidence\Q)>

    <\itemize>
      <item>Mettre en place des mécanismes de validation lors de la fusion
      (ex. limiter l'influence d'une seule carte locale si le robot est peu
      sûr de ses relevés).

      <item>Évaluer si une information contradictoire justifie un recalage
      global (loop closure, etc.).
    </itemize>

    <item><strong|Mise à jour dynamique>

    <\itemize>
      <item>À chaque nouvelle réception de cartes, répéter le processus pour
      mettre à jour la \Pglobal map\Q du robot.

      <item>Ajuster la fréquence de fusion pour ne pas saturer le CPU ou le
      réseau.
    </itemize>
  </enumerate>

  <hrule>

  <section*|6. Faire les tests et l'expérimentation>

  <\enumerate>
    <item><strong|Expériences en simulation>

    <\itemize>
      <item>Choisir plusieurs \Parenas\Q ou environnements (corridors, salles
      carrées, obstacles).

      <item>Lancer différents scénarios avec un nombre variable de robots (de
      2 à 10 par exemple).

      <item>Observer la qualité de la carte finale (recouvrir un maximum de
      surface, réduire les artefacts).

      <item>Comparer différents paramètres (fréquence d'échange, vitesse de
      déplacement, etc.).
    </itemize>

    <item><strong|Expériences réelles>

    <\itemize>
      <item>Préparer une aire de test (labyrinthe, couloir, etc.).

      <item>Déployer plusieurs robots équipés de LIDAR ou capteurs.

      <item>Vérifier la communication : portée réelle du Wi-Fi ad hoc, pertes
      de paquets, etc.

      <item>Récupérer les cartes fusionnées de chaque robot pour évaluer la
      cohérence globale.
    </itemize>

    <item><strong|Collecte de métriques>

    <\itemize>
      <item>Taux de couverture de l'environnement.

      <item>Nombre d'erreurs (faux positifs/obstacles fantômes).

      <item>Temps total pour obtenir une carte \Psatisfaisante\Q.

      <item>Consommation de ressources (CPU, réseau).
    </itemize>

    <item><strong|Analyse et comparaison>

    <\itemize>
      <item>Évaluer la robustesse : qu'advient-il si un robot tombe en panne
      ou se retrouve isolé ?

      <item>Comparer la performance avec d'autres approches (single-robot
      SLAM, autre algorithme de fusion, etc.).
    </itemize>
  </enumerate>

  <hrule>

  <section*|7. Consolider et documenter>

  <\enumerate>
    <item><strong|Documentation du code>

    <\itemize>
      <item>Rédiger un guide d'utilisation pour le lancement des n÷uds ROS,
      la configuration, la compilation, etc.

      <item>Expliquer précisément les modules de fusion de cartes, la
      structure de messages, et les étapes pour reproduire les expériences.
    </itemize>

    <item><strong|Analyse critique>

    <\itemize>
      <item>Mettre en avant les limites rencontrées :

      <\itemize>
        <item>Problèmes de recalage (si overlap minime).

        <item>Forte dépendance à l'odométrie si on ne gère pas encore de loop
        closure robuste.

        <item>Charge réseau en fonction du nombre de robots.
      </itemize>

      <item>Proposer des pistes d'amélioration (réduction de la taille des
      cartes, fusion plus intelligente, etc.).
    </itemize>

    <item><strong|Organisation des résultats>

    <\itemize>
      <item>Consigner toutes les données expérimentales, traces ROS (rosbag),
      cartes fusionnées, etc.

      <item>Réaliser des figures comparatives pour illustrer la progression
      de la cartographie dans le temps.
    </itemize>
  </enumerate>

  <hrule>

  <section*|Conclusion>

  En suivant cette guideline, vous abordez pas à pas les points essentiels
  décrits dans le mémoire de Loems : mise en place d'un SLAM local
  (Gmapping), exploration multi-robot (random walk, partage d'informations),
  communication distribuée (ad hoc network) et fusion dynamique des cartes
  dans un contexte de swarm SLAM. Chaque étape demande de bien maîtriser les
  fondements ROS (ou un framework équivalent), de configurer correctement les
  n÷uds de SLAM et de s'assurer que la partie réseau est fonctionnelle pour
  l'échange des cartes.

  Le point crucial est de tester d'abord en simulation pour valider la
  logique de cartographie distribuée et de fusion. Ensuite, la transition
  vers des robots physiques est plus simple, à condition d'être bien équipé
  en capteurs (notamment un capteur laser/IR pour Gmapping) et d'avoir une
  solution réseau robuste. Enfin, la documentation et l'instrumentation
  (rosbag, logs, mesures de performance) sont indispensables pour
  caractériser la qualité du Swarm SLAM (couverture, précision, temps de
  convergence, etc.).

  Sans émojis, en restant détaillé, cette feuille de route devrait vous
  permettre de structurer l'implémentation concrète du mémoire. Bon courage
  pour la suite !
</body>

<\initial>
  <\collection>
    <associate|page-medium|paper>
  </collection>
</initial>

<\references>
  <\collection>
    <associate|auto-1|<tuple|?|1>>
    <associate|auto-2|<tuple|<with|mode|<quote|math>|<rigid|\<circ\>>>|1>>
    <associate|auto-3|<tuple|<with|mode|<quote|math>|\<bullet\>>|2>>
    <associate|auto-4|<tuple|<with|mode|<quote|math>|\<bullet\>>|2>>
    <associate|auto-5|<tuple|<with|mode|<quote|math>|\<bullet\>>|3>>
    <associate|auto-6|<tuple|<with|mode|<quote|math>|\<bullet\>>|4>>
    <associate|auto-7|<tuple|<with|mode|<quote|math>|\<bullet\>>|4>>
    <associate|auto-8|<tuple|<with|mode|<quote|math>|\<bullet\>>|5>>
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|toc>
      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|1.
      Choisir et configurer l'environnement de développement>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-1><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|2.
      Implémenter la logique de SLAM local (Gmapping)>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-2><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|3.
      Mettre en place la stratégie d'exploration multi-robot>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-3><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|4.
      Mettre en ÷uvre la communication distribuée>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-4><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|5.
      Implémenter l'algorithme de fusion de cartes (map merging)>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-5><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|6.
      Faire les tests et l'expérimentation>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-6><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|7.
      Consolider et documenter> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-7><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Conclusion>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-8><vspace|0.5fn>
    </associate>
  </collection>
</auxiliary>