<TeXmacs|2.1.2>

<style|<tuple|generic|french>>

<\body>
  Dans le rapport sur Mercator (voir \<#E200\>cite\<#E202\>turn0file6\<#E201\>),
  l'�quipe d�crit comment ils utilisent ARGoS pour simuler et tester la
  plateforme Mercator en vue de r�aliser du SLAM en essaim. Voici un crash
  course pour vous lancer :

  <hrule>

  <subsection*|1. Pr�sentation d'ARGoS>

  <\itemize>
    <item><strong|ARGoS> (Autonomous Robots Go Swarming) est un simulateur
    sp�cialement con�u pour la robotique en essaim.

    <item>Il est particuli�rement adapt� pour simuler un grand nombre
    d'agents gr�ce � sa structure modulaire et son moteur de physique
    optimis�.
  </itemize>

  <hrule>

  <subsection*|2. Installation d'ARGoS>

  <\itemize>
    <item><strong|T�l�chargement et Compilation :><next-line>T�l�chargez la
    derni�re version d'ARGoS depuis <hlink|argos-sim.info|http://www.argos-sim.info/>.
    Suivez les instructions de compilation (g�n�ralement via CMake) pour
    l'installer sur votre machine.

    <item><strong|D�pendances :><next-line>V�rifiez que vous disposez des
    biblioth�ques n�cessaires (comme Boost, OpenGL, etc.). La documentation
    d'ARGoS d�taille ces pr�requis.
  </itemize>

  <hrule>

  <subsection*|3. Configuration pour la Simulation de Mercator>

  <\itemize>
    <item><strong|Fichier de Configuration XML :><next-line>ARGoS utilise un
    fichier XML pour d�finir la simulation. Vous devez y sp�cifier :

    <\itemize>
      <item><strong|Le Monde (World) :> La description de l'environnement
      (par exemple, un espace avec obstacles ou un monde vide).

      <item><strong|Les Robots :> D�finissez vos robots Mercator en incluant
      leur mod�le physique, leurs capteurs et leurs
      actionneurs.<next-line>Par exemple :

      <code|<\code*>
        \<less\>arena id="arena'' size="10,10,2"\<gtr\>

        \ \ \<less\>!-- D�finition du sol et obstacles si n�cessaire
        --\<gtr\>

        \<less\>/arena\<gtr\>

        \;

        \<less\>loop_functions library="libmercator_loop_functions.so''
        /\<gtr\>

        \;

        \<less\>controller id="mercator_controller''
        library="libmercator_controller.so"\<gtr\>

        \ \ \<less\>!-- Param�tres du contr�leur sp�cifique � Mercator
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

        \ \ \<less\>!-- Autres param�tres sp�cifiques : capteurs, LED, etc.
        --\<gtr\>

        \<less\>/footbot\<gtr\>

        \;
      </code*>>

      <item><strong|Contr�leurs :> Dans votre configuration, vous pouvez
      associer le contr�leur ARGoS (impl�ment� en C++ ou en Lua) qui sera
      charg� de g�rer la logique de navigation ou du SLAM pour chaque robot.
    </itemize>

    <item><strong|Simulation et R�alit� :><next-line>L'avantage de cette
    approche (comme expliqu� dans le rapport Mercator) est que le m�me code
    ou la m�me architecture peut �tre utilis�e pour tester vos algorithmes en
    simulation et ensuite �tre d�ploy�e sur le robot r�el.
  </itemize>

  <hrule>

  <subsection*|4. Lancement de la Simulation>

  <\itemize>
    <item><strong|Commande de Lancement :><next-line>Une fois votre fichier
    XML pr�t, lancez la simulation avec la commande :

    <code|<\code*>
      argos3 -c mon_fichier_de_configuration.xml

      \;
    </code*>>

    <item><strong|Observation :><next-line>ARGoS affiche la simulation en
    temps r�el. Vous pouvez observer le comportement des Mercator, v�rifier
    leur exploration et m�me analyser la g�n�ration de la carte (si le SLAM
    est int�gr�).
  </itemize>

  <hrule>

  <subsection*|5. Int�gration avec ROS (Optionnel)>

  <\itemize>
    <item><strong|Pont ARGoS-ROS :><next-line>Dans certains cas,
    l'architecture de Mercator permet de faire communiquer ARGoS avec ROS.
    Cela se fait via des n�uds ROS qui publient ou s'abonnent aux donn�es
    simul�es (ex. position, mesures de capteurs).

    <item><strong|Avantage :><next-line>Cette int�gration vous permet
    d'utiliser les outils ROS (rviz, rosbag, etc.) pour visualiser et
    analyser vos r�sultats de simulation de mani�re similaire � un
    d�ploiement r�el.
  </itemize>

  <hrule>

  <subsection*|6. Ressources Compl�mentaires>

  <\itemize>
    <item><strong|Documentation ARGoS :> Consultez le <hlink|wiki
    d'ARGoS|http://argos-sim.info/wiki/> pour plus de d�tails sur la
    configuration et l'extension des fonctionnalit�s.

    <item><strong|Exemples de Configuration Mercator :> Le rapport Mercator
    fournit des exemples concrets de fichiers de configuration et de
    structures de contr�le, qui peuvent servir de r�f�rence pour adapter vos
    propres simulations.
  </itemize>

  <hrule>

  Ce crash course devrait vous donner une vue d'ensemble sur comment utiliser
  ARGoS pour simuler la plateforme Mercator, comme illustr� dans le rapport
  technique. Si vous souhaitez approfondir un point pr�cis (ex. l'�criture
  d'un contr�leur ou la configuration d'un mod�le physique), n'h�sitez pas �
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
      <with|par-left|<quote|1tab>|1. Pr�sentation d'ARGoS
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

      <with|par-left|<quote|1tab>|5. Int�gration avec ROS (Optionnel)
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-5>>

      <with|par-left|<quote|1tab>|6. Ressources Compl�mentaires
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-6>>
    </associate>
  </collection>
</auxiliary>