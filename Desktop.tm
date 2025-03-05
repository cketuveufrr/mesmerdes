<TeXmacs|2.1.2>

<style|<tuple|generic|french>>

<\body>
  Voici un aperçu rapide de ROS (Robot Operating System) adapté à votre cas,
  notamment pour des applications en robotique en essaim :

  <subsection*|1. Qu'est-ce que ROS ?>

  <\itemize>
    <item><strong|Middleware Open Source :> ROS n'est pas un système
    d'exploitation, mais un ensemble d'outils et de bibliothèques facilitant
    la communication entre différents logiciels robotiques.

    <item><strong|Modularité :> Vous pouvez développer des \Pn÷uds\Q qui
    effectuent chacun une tâche spécifique (par exemple, lecture d'un
    capteur, contrôle d'un actionneur, ou prise de décision).
  </itemize>

  <subsection*|2. Concepts Clés>

  <\itemize>
    <item><strong|N÷uds (nodes) :> Ce sont les processus individuels qui
    exécutent une partie du logiciel. Chaque robot (ou chaque composant d'un
    robot) peut exécuter un ou plusieurs n÷uds.

    <item><strong|Messages :> Les données échangées entre n÷uds via des
    canaux de communication appelés \Ptopics\Q. Par exemple, un capteur peut
    publier ses lectures sur un topic auquel un n÷ud de traitement est
    abonné.

    <item><strong|Topics :> Les canaux de diffusion pour les messages. Les
    n÷uds publient ou s'abonnent aux topics (exemple : <code*|/odom> pour la
    position ou <code*|/cmd_vel> pour les commandes de vitesse).

    <item><strong|Services :> Pour des communications de type
    requête-réponse, souvent utilisées pour des commandes ponctuelles.

    <item><strong|Paramètres et serveur de paramètres :> Un espace de noms
    centralisé pour stocker des configurations et paramètres globaux.
  </itemize>

  <subsection*|3. Organisation d'un Package ROS>

  <\itemize>
    <item><strong|Structure de Répertoire :> Un package ROS contient un
    fichier <code*|package.xml> (pour définir les dépendances) et un fichier
    <code*|CMakeLists.txt> (pour la compilation). Vous pouvez y inclure vos
    scripts, configurations et launch files.

    <item><strong|Launch Files :> Des fichiers XML permettant de démarrer
    plusieurs n÷uds simultanément, ce qui est pratique pour lancer une
    application complète.
  </itemize>

  <subsection*|4. Outils Essentiels>

  <\itemize>
    <item><strong|roscore :> Le \Pcerveau\Q de ROS qui gère la communication
    entre n÷uds.

    <item><strong|rviz :> Un outil de visualisation pour afficher les données
    issues des capteurs, la carte générée par SLAM, etc.

    <item><strong|rosbag :> Permet d'enregistrer et de rejouer les messages
    échangés sur les topics, utile pour le débogage et l'analyse
    post-expérimentale.

    <item><strong|rqt :> Une interface graphique pour inspecter le système
    ROS (graphes de n÷uds, messages, etc.).
  </itemize>

  <subsection*|5. ROS dans le Contexte de la Robotique en Essaim>

  <\itemize>
    <item><strong|Communication Décentralisée :> Chaque robot peut exécuter
    ses propres n÷uds ROS et publier des informations (comme sa position ou
    ses données de capteurs) sur des topics communs. Ceci facilite la
    coordination sans dépendre d'un contrôle centralisé.

    <item><strong|Intégration avec des Systèmes Existants :> Des projets
    comme DeimOS, par exemple (voir [24] dans la documentation technique),
    montrent comment moderniser des robots simples (comme l'e-puck) en les
    rendant compatibles avec ROS.

    <item><strong|Simulation et Réalité :> Utilisez des simulateurs comme
    Gazebo ou ARGoS pour tester vos algorithmes en simulation avant de les
    déployer sur le terrain. Cela permet de réduire la \Preality gap\Q lors
    du transfert vers des robots physiques.
  </itemize>

  <subsection*|6. Exemples Pratiques>

  <\itemize>
    <item><strong|Exemple de Code (Python) pour Publier une Commande de
    Vitesse :>

    <code|<\code*>
      import rospy

      from geometry_msgs.msg import Twist

      \;

      rospy.init_node('commande_vitesse')

      pub = rospy.Publisher('/cmd_vel', Twist, queue_size=10)

      \;

      vitesse = Twist()

      vitesse.linear.x = 0.2 \ # Avancer à 0.2 m/s

      vitesse.angular.z = 0.0

      \;

      rate = rospy.Rate(10)

      while not rospy.is_shutdown():

      \ \ \ \ pub.publish(vitesse)

      \ \ \ \ rate.sleep()

      \;
    </code*>>

    <item><strong|Utilisation de roslaunch :>

    Créez un fichier <code*|mon_application.launch> pour lancer plusieurs
    n÷uds à la fois :

    <code|<\code*>
      \<less\>launch\<gtr\>

      \ \ \ \ \<less\>node pkg="mon_package'' type="n÷ud_capteur.py''
      name="capteur'' output="screen'' /\<gtr\>

      \ \ \ \ \<less\>node pkg="mon_package'' type="n÷ud_traitement.py''
      name="traitement'' output="screen'' /\<gtr\>

      \<less\>/launch\<gtr\>

      \;
    </code*>>
  </itemize>

  <subsection*|7. Ressources pour Approfondir>

  <\itemize>
    <item><strong|Documentation Officielle :> Le site
    <hlink|wiki.ros.org|http://wiki.ros.org/> offre une documentation
    complète et des tutoriels.

    <item><strong|Tutoriels Vidéo et Cours en Ligne :> Plusieurs MOOC et
    vidéos YouTube dédiés à ROS sont disponibles en français.

    <item><strong|Projets de Recherche :> Explorez des travaux comme ceux sur
    DeimOS et AutoMoDe pour voir comment ROS est utilisé dans la robotique en
    essaim.
  </itemize>

  Ce crash course devrait vous donner une bonne base pour démarrer avec ROS
  dans le cadre de vos applications en robotique en essaim. Si vous avez des
  questions plus spécifiques (par exemple, sur la configuration de n÷uds ou
  l'intégration avec votre matériel), n'hésitez pas à demander !
</body>

<\initial>
  <\collection>
    <associate|page-medium|paper>
  </collection>
</initial>

<\references>
  <\collection>
    <associate|auto-1|<tuple|?|1>>
    <associate|auto-2|<tuple|<with|mode|<quote|math>|\<bullet\>>|1>>
    <associate|auto-3|<tuple|<with|mode|<quote|math>|\<bullet\>>|1>>
    <associate|auto-4|<tuple|<with|mode|<quote|math>|\<bullet\>>|1>>
    <associate|auto-5|<tuple|<with|mode|<quote|math>|\<bullet\>>|1>>
    <associate|auto-6|<tuple|<with|mode|<quote|math>|\<bullet\>>|2>>
    <associate|auto-7|<tuple|<with|mode|<quote|math>|\<bullet\>>|2>>
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|toc>
      <with|par-left|<quote|1tab>|1. Qu'est-ce que ROS ?
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-1>>

      <with|par-left|<quote|1tab>|2. Concepts Clés
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-2>>

      <with|par-left|<quote|1tab>|3. Organisation d'un Package ROS
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-3>>

      <with|par-left|<quote|1tab>|4. Outils Essentiels
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-4>>

      <with|par-left|<quote|1tab>|5. ROS dans le Contexte de la Robotique en
      Essaim <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-5>>

      <with|par-left|<quote|1tab>|6. Exemples Pratiques
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-6>>

      <with|par-left|<quote|1tab>|7. Ressources pour Approfondir
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-7>>
    </associate>
  </collection>
</auxiliary>