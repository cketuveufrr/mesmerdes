<TeXmacs|2.1.2>

<style|<tuple|generic|french>>

<\body>
  Voici un aper�u rapide de ROS (Robot Operating System) adapt� � votre cas,
  notamment pour des applications en robotique en essaim :

  <subsection*|1. Qu'est-ce que ROS ?>

  <\itemize>
    <item><strong|Middleware Open Source :> ROS n'est pas un syst�me
    d'exploitation, mais un ensemble d'outils et de biblioth�ques facilitant
    la communication entre diff�rents logiciels robotiques.

    <item><strong|Modularit� :> Vous pouvez d�velopper des \Pn�uds\Q qui
    effectuent chacun une t�che sp�cifique (par exemple, lecture d'un
    capteur, contr�le d'un actionneur, ou prise de d�cision).
  </itemize>

  <subsection*|2. Concepts Cl�s>

  <\itemize>
    <item><strong|N�uds (nodes) :> Ce sont les processus individuels qui
    ex�cutent une partie du logiciel. Chaque robot (ou chaque composant d'un
    robot) peut ex�cuter un ou plusieurs n�uds.

    <item><strong|Messages :> Les donn�es �chang�es entre n�uds via des
    canaux de communication appel�s \Ptopics\Q. Par exemple, un capteur peut
    publier ses lectures sur un topic auquel un n�ud de traitement est
    abonn�.

    <item><strong|Topics :> Les canaux de diffusion pour les messages. Les
    n�uds publient ou s'abonnent aux topics (exemple : <code*|/odom> pour la
    position ou <code*|/cmd_vel> pour les commandes de vitesse).

    <item><strong|Services :> Pour des communications de type
    requ�te-r�ponse, souvent utilis�es pour des commandes ponctuelles.

    <item><strong|Param�tres et serveur de param�tres :> Un espace de noms
    centralis� pour stocker des configurations et param�tres globaux.
  </itemize>

  <subsection*|3. Organisation d'un Package ROS>

  <\itemize>
    <item><strong|Structure de R�pertoire :> Un package ROS contient un
    fichier <code*|package.xml> (pour d�finir les d�pendances) et un fichier
    <code*|CMakeLists.txt> (pour la compilation). Vous pouvez y inclure vos
    scripts, configurations et launch files.

    <item><strong|Launch Files :> Des fichiers XML permettant de d�marrer
    plusieurs n�uds simultan�ment, ce qui est pratique pour lancer une
    application compl�te.
  </itemize>

  <subsection*|4. Outils Essentiels>

  <\itemize>
    <item><strong|roscore :> Le \Pcerveau\Q de ROS qui g�re la communication
    entre n�uds.

    <item><strong|rviz :> Un outil de visualisation pour afficher les donn�es
    issues des capteurs, la carte g�n�r�e par SLAM, etc.

    <item><strong|rosbag :> Permet d'enregistrer et de rejouer les messages
    �chang�s sur les topics, utile pour le d�bogage et l'analyse
    post-exp�rimentale.

    <item><strong|rqt :> Une interface graphique pour inspecter le syst�me
    ROS (graphes de n�uds, messages, etc.).
  </itemize>

  <subsection*|5. ROS dans le Contexte de la Robotique en Essaim>

  <\itemize>
    <item><strong|Communication D�centralis�e :> Chaque robot peut ex�cuter
    ses propres n�uds ROS et publier des informations (comme sa position ou
    ses donn�es de capteurs) sur des topics communs. Ceci facilite la
    coordination sans d�pendre d'un contr�le centralis�.

    <item><strong|Int�gration avec des Syst�mes Existants :> Des projets
    comme DeimOS, par exemple (voir [24] dans la documentation technique),
    montrent comment moderniser des robots simples (comme l'e-puck) en les
    rendant compatibles avec ROS.

    <item><strong|Simulation et R�alit� :> Utilisez des simulateurs comme
    Gazebo ou ARGoS pour tester vos algorithmes en simulation avant de les
    d�ployer sur le terrain. Cela permet de r�duire la \Preality gap\Q lors
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

      vitesse.linear.x = 0.2 \ # Avancer � 0.2 m/s

      vitesse.angular.z = 0.0

      \;

      rate = rospy.Rate(10)

      while not rospy.is_shutdown():

      \ \ \ \ pub.publish(vitesse)

      \ \ \ \ rate.sleep()

      \;
    </code*>>

    <item><strong|Utilisation de roslaunch :>

    Cr�ez un fichier <code*|mon_application.launch> pour lancer plusieurs
    n�uds � la fois :

    <code|<\code*>
      \<less\>launch\<gtr\>

      \ \ \ \ \<less\>node pkg="mon_package'' type="n�ud_capteur.py''
      name="capteur'' output="screen'' /\<gtr\>

      \ \ \ \ \<less\>node pkg="mon_package'' type="n�ud_traitement.py''
      name="traitement'' output="screen'' /\<gtr\>

      \<less\>/launch\<gtr\>

      \;
    </code*>>
  </itemize>

  <subsection*|7. Ressources pour Approfondir>

  <\itemize>
    <item><strong|Documentation Officielle :> Le site
    <hlink|wiki.ros.org|http://wiki.ros.org/> offre une documentation
    compl�te et des tutoriels.

    <item><strong|Tutoriels Vid�o et Cours en Ligne :> Plusieurs MOOC et
    vid�os YouTube d�di�s � ROS sont disponibles en fran�ais.

    <item><strong|Projets de Recherche :> Explorez des travaux comme ceux sur
    DeimOS et AutoMoDe pour voir comment ROS est utilis� dans la robotique en
    essaim.
  </itemize>

  Ce crash course devrait vous donner une bonne base pour d�marrer avec ROS
  dans le cadre de vos applications en robotique en essaim. Si vous avez des
  questions plus sp�cifiques (par exemple, sur la configuration de n�uds ou
  l'int�gration avec votre mat�riel), n'h�sitez pas � demander !
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

      <with|par-left|<quote|1tab>|2. Concepts Cl�s
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