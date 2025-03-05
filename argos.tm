<TeXmacs|2.1.2>

<style|<tuple|generic|french>>

<\body>
  Dans le rapport sur Mercator (voir \<#E200\>cite\<#E202\>turn0file6\<#E201\>),
  l'équipe décrit comment ils utilisent ARGoS pour simuler et tester la
  plateforme Mercator en vue de réaliser du SLAM en essaim. Voici un crash
  course pour vous lancer :

  <hrule>

  <subsection*|1. Présentation d'ARGoS>

  <\itemize>
    <item><strong|ARGoS> (Autonomous Robots Go Swarming) est un simulateur
    spécialement conçu pour la robotique en essaim.

    <item>Il est particulièrement adapté pour simuler un grand nombre
    d'agents grâce à sa structure modulaire et son moteur de physique
    optimisé.
  </itemize>

  <hrule>

  <subsection*|2. Installation d'ARGoS>

  <\itemize>
    <item><strong|Téléchargement et Compilation :><next-line>Téléchargez la
    dernière version d'ARGoS depuis <hlink|argos-sim.info|http://www.argos-sim.info/>.
    Suivez les instructions de compilation (généralement via CMake) pour
    l'installer sur votre machine.

    <item><strong|Dépendances :><next-line>Vérifiez que vous disposez des
    bibliothèques nécessaires (comme Boost, OpenGL, etc.). La documentation
    d'ARGoS détaille ces prérequis.
  </itemize>

  <hrule>

  <subsection*|3. Configuration pour la Simulation de Mercator>

  <\itemize>
    <item><strong|Fichier de Configuration XML :><next-line>ARGoS utilise un
    fichier XML pour définir la simulation. Vous devez y spécifier :

    <\itemize>
      <item><strong|Le Monde (World) :> La description de l'environnement
      (par exemple, un espace avec obstacles ou un monde vide).

      <item><strong|Les Robots :> Définissez vos robots Mercator en incluant
      leur modèle physique, leurs capteurs et leurs
      actionneurs.<next-line>Par exemple :

      <code|<\code*>
        \<less\>arena id="arena'' size="10,10,2"\<gtr\>

        \ \ \<less\>!-- Définition du sol et obstacles si nécessaire
        --\<gtr\>

        \<less\>/arena\<gtr\>

        \;

        \<less\>loop_functions library="libmercator_loop_functions.so''
        /\<gtr\>

        \;

        \<less\>controller id="mercator_controller''
        library="libmercator_controller.so"\<gtr\>

        \ \ \<less\>!-- Paramètres du contrôleur spécifique à Mercator
        --\<gtr\>

        \<less\>/controller\<gtr\>

        \;

        \<less\>media file="media/mercator_texture.png''
        id="mercator_texture'' /\<gtr\>

        \;

        \<less\>footbot id="fb1"\<gtr\>

        \ \ \<less\>controller_config id="mercator_controller'' /\<gtr\>

        \ \ \<less\>position x="1'' y="1'' z="0.1'' /\<gtr\>

        \ \ \<less\>orientation roll="0'' pitch="0'' yaw="0'' /\<gtr\>

        \ \ \<less\>!-- Autres paramètres spécifiques : capteurs, LED, etc.
        --\<gtr\>

        \<less\>/footbot\<gtr\>

        \;
      </code*>>

      <item><strong|Contrôleurs :> Dans votre configuration, vous pouvez
      associer le contrôleur ARGoS (implémenté en C++ ou en Lua) qui sera
      chargé de gérer la logique de navigation ou du SLAM pour chaque robot.
    </itemize>

    <item><strong|Simulation et Réalité :><next-line>L'avantage de cette
    approche (comme expliqué dans le rapport Mercator) est que le même code
    ou la même architecture peut être utilisée pour tester vos algorithmes en
    simulation et ensuite être déployée sur le robot réel.
  </itemize>

  <hrule>

  <subsection*|4. Lancement de la Simulation>

  <\itemize>
    <item><strong|Commande de Lancement :><next-line>Une fois votre fichier
    XML prêt, lancez la simulation avec la commande :

    <code|<\code*>
      argos3 -c mon_fichier_de_configuration.xml

      \;
    </code*>>

    <item><strong|Observation :><next-line>ARGoS affiche la simulation en
    temps réel. Vous pouvez observer le comportement des Mercator, vérifier
    leur exploration et même analyser la génération de la carte (si le SLAM
    est intégré).
  </itemize>

  <hrule>

  <subsection*|5. Intégration avec ROS (Optionnel)>

  <\itemize>
    <item><strong|Pont ARGoS-ROS :><next-line>Dans certains cas,
    l'architecture de Mercator permet de faire communiquer ARGoS avec ROS.
    Cela se fait via des n÷uds ROS qui publient ou s'abonnent aux données
    simulées (ex. position, mesures de capteurs).

    <item><strong|Avantage :><next-line>Cette intégration vous permet
    d'utiliser les outils ROS (rviz, rosbag, etc.) pour visualiser et
    analyser vos résultats de simulation de manière similaire à un
    déploiement réel.
  </itemize>

  <hrule>

  <subsection*|6. Ressources Complémentaires>

  <\itemize>
    <item><strong|Documentation ARGoS :> Consultez le <hlink|wiki
    d'ARGoS|http://argos-sim.info/wiki/> pour plus de détails sur la
    configuration et l'extension des fonctionnalités.

    <item><strong|Exemples de Configuration Mercator :> Le rapport Mercator
    fournit des exemples concrets de fichiers de configuration et de
    structures de contrôle, qui peuvent servir de référence pour adapter vos
    propres simulations.
  </itemize>

  <hrule>

  Ce crash course devrait vous donner une vue d'ensemble sur comment utiliser
  ARGoS pour simuler la plateforme Mercator, comme illustré dans le rapport
  technique. Si vous souhaitez approfondir un point précis (ex. l'écriture
  d'un contrôleur ou la configuration d'un modèle physique), n'hésitez pas à
  demander !
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
    <associate|auto-4|<tuple|<with|mode|<quote|math>|\<bullet\>>|2>>
    <associate|auto-5|<tuple|<with|mode|<quote|math>|\<bullet\>>|2>>
    <associate|auto-6|<tuple|<with|mode|<quote|math>|\<bullet\>>|2>>
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|toc>
      <with|par-left|<quote|1tab>|1. Présentation d'ARGoS
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-1>>

      <with|par-left|<quote|1tab>|2. Installation d'ARGoS
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-2>>

      <with|par-left|<quote|1tab>|3. Configuration pour la Simulation de
      Mercator <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-3>>

      <with|par-left|<quote|1tab>|4. Lancement de la Simulation
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-4>>

      <with|par-left|<quote|1tab>|5. Intégration avec ROS (Optionnel)
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-5>>

      <with|par-left|<quote|1tab>|6. Ressources Complémentaires
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-6>>
    </associate>
  </collection>
</auxiliary>