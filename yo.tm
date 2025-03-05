<TeXmacs|2.1.2>

<style|<tuple|generic|french>>

<\body>
  Voici un exemple détaillé d'une procédure étape par étape pour reproduire
  l'approche décrite dans le mémoire de Loems, en utilisant ROS Noetic sur
  des robots e\<nbhyph\>puck (avec l'extension Gumstix Overo, c'est-à-dire
  les G\<nbhyph\>pucks) :

  <hrule>

  <subsection*|1. Préparation de la machine hôte (Ubuntu 20.04 LTS)>

  <\enumerate>
    <item><strong|Mettre à jour le système :>

    <code|<\code*>
      sudo apt update && sudo apt upgrade -y

      \;
    </code*>>

    <item><strong|Configurer le fuseau horaire (si nécessaire) :>

    <code|<\code*>
      sudo dpkg-reconfigure tzdata

      \;
    </code*>>
  </enumerate>

  <hrule>

  <subsection*|2. Installation de ROS Noetic>

  <\enumerate>
    <item><strong|Configurer les sources ROS :><next-line>Ajoutez la clé GPG
    et les sources de ROS Noetic :

    <code|<\code*>
      sudo sh -c 'echo ``deb http://packages.ros.org/ros/ubuntu $(lsb_release
      -sc) main'' \<gtr\> /etc/apt/sources.list.d/ros-latest.list'

      sudo apt install curl # si ce n'est pas déjà fait

      curl -s https://raw.githubusercontent.com/ros/rosdistro/master/ros.asc
      \| sudo apt-key add -

      \;
    </code*>>

    <item><strong|Installer ROS Noetic Desktop Full :>

    <code|<\code*>
      sudo apt update

      sudo apt install ros-noetic-desktop-full -y

      \;
    </code*>>

    <item><strong|Installer les dépendances de ROS pour le build et le
    développement :>

    <code|<\code*>
      sudo apt install python3-rosdep python3-rosinstall
      python3-rosinstall-generator python3-wstool build-essential -y

      \;
    </code*>>

    <item><strong|Initialiser rosdep :>

    <code|<\code*>
      sudo rosdep init

      rosdep update

      \;
    </code*>>
  </enumerate>

  <hrule>

  <subsection*|3. Configuration du Workspace Catkin>

  <\enumerate>
    <item><strong|Créer un espace de travail Catkin :>

    <code|<\code*>
      mkdir -p ~/catkin_ws/src

      cd ~/catkin_ws/

      catkin_make

      \;
    </code*>>

    <item><strong|Configurer l'environnement (ajouter dans votre .bashrc) :>

    <code|<\code*>
      echo ``source ~/catkin_ws/devel/setup.bash'' \<gtr\>\<gtr\> ~/.bashrc

      source ~/.bashrc

      \;
    </code*>>
  </enumerate>

  <hrule>

  <subsection*|4. Récupération et Compilation du Code de Contrôle>

  <\enumerate>
    <item><strong|Cloner (ou copier) les packages utilisés dans le mémoire de
    Loems :><next-line>Par exemple, si le mémoire fournit un dépôt Git
    contenant le code :

    <code|<\code*>
      cd ~/catkin_ws/src

      git clone \<less\>URL_DU_DEPOT\<gtr\>

      \;
    </code*>>

    <em|(Remplacez <code*|\<less\>URL_DU_DEPOT\<gtr\>> par l'adresse
    réelle.)>

    <item><strong|Installer les dépendances spécifiques du package
    :><next-line>Dans le répertoire racine de votre workspace, exécutez :

    <code|<\code*>
      rosdep install --from-paths src --ignore-src -r -y

      \;
    </code*>>

    <item><strong|Compiler le workspace :>

    <code|<\code*>
      cd ~/catkin_ws

      catkin_make

      \;
    </code*>>
  </enumerate>

  <hrule>

  <subsection*|5. Configuration et Flashing de l'OS sur les e\<nbhyph\>puck
  (G\<nbhyph\>pucks)>

  <\enumerate>
    <item><strong|Télécharger l'image DeimOS adaptée aux G\<nbhyph\>pucks
    :><next-line>Rendez-vous sur le dépôt ou la page officielle du projet
    DeimOS (indiqué dans le mémoire) et téléchargez l'image précompilée.

    <item><strong|Flasher l'image sur la Gumstix Overo COM
    :><next-line>Utilisez un outil comme <code*|dd> ou une interface
    graphique (comme Balena Etcher). Par exemple :

    <code|<\code*>
      sudo dd if=DeimOS-image.img of=/dev/sdX bs=4M status=progress && sync

      \;
    </code*>>

    <em|(Remplacez <code*|/dev/sdX> par le bon périphérique correspondant à
    votre carte.)>

    <item><strong|Configurer la connexion réseau :><next-line>Assurez-vous
    que le G\<nbhyph\>puck se connecte au réseau (via Wi\<nbhyph\>Fi ou USB)
    afin qu'il puisse communiquer avec votre machine hôte.
  </enumerate>

  <hrule>

  <subsection*|6. Lancement et Test des Nodes ROS>

  <\enumerate>
    <item><strong|Vérifier que ROS communique bien avec le robot
    :><next-line>Lancez un terminal et listez les topics :

    <code|<\code*>
      rostopic list

      \;
    </code*>>

    <item><strong|Lancer la simulation (si vous voulez tester dans ARGoS) ou
    le node de contrôle sur le robot :><next-line>Par exemple, pour lancer le
    node principal :

    <code|<\code*>
      roslaunch \<less\>nom_du_package\<gtr\>
      \<less\>fichier_launch\<gtr\>.launch

      \;
    </code*>>

    <em|(Remplacez <code*|\<less\>nom_du_package\<gtr\>> et
    <code*|\<less\>fichier_launch\<gtr\>.launch> par les noms appropriés
    selon votre code.)>

    <item><strong|Visualiser les messages ROS avec rviz ou rosbag
    :><next-line>Pour lancer rviz :

    <code|<\code*>
      rviz

      \;
    </code*>>

    Vous pourrez ensuite ajouter les displays nécessaires (comme le robot, la
    carte, etc.).
  </enumerate>

  <hrule>

  <subsection*|7. Déploiement sur le Robot>

  <\enumerate>
    <item><strong|Assurez-vous que le G\<nbhyph\>puck (avec DeimOS) est bien
    démarré et connecté au réseau.>

    <item><strong|Configurez les paramètres de communication ROS (par
    exemple, définissez la variable d'environnement ROS_MASTER_URI sur l'IP
    de votre machine hôte si vous travaillez en réseau) :><next-line>Sur le
    robot (via SSH par exemple) :

    <code|<\code*>
      export ROS_MASTER_URI=http://\<less\>IP_de_votre_machine\<gtr\>:11311

      export ROS_HOSTNAME=\<less\>IP_du_robot\<gtr\> \ \ # Optionnel, selon
      la configuration

      \;
    </code*>>

    <item><strong|Lancez le node de contrôle sur le robot :><next-line>Par
    exemple :

    <code|<\code*>
      roslaunch \<less\>nom_du_package\<gtr\>
      \<less\>fichier_launch_robot\<gtr\>.launch

      \;
    </code*>>
  </enumerate>

  <hrule>

  <subsection*|8. Tests Finaux et Débogage>

  <\enumerate>
    <item><strong|Utilisez <code*|rostopic echo> pour vérifier que les
    données (capteurs, odométrie, etc.) circulent correctement :>

    <code|<\code*>
      rostopic echo /rvr/odom

      \;
    </code*>>

    <item><strong|Si vous rencontrez des erreurs, vérifiez les logs :>

    <code|<\code*>
      roslaunch \<less\>nom_du_package\<gtr\>
      \<less\>fichier_launch\<gtr\>.launch --screen

      \;
    </code*>>

    <item><strong|Testez les comportements (par exemple, des comportements
    d'agrégation, d'exploration, etc.) décrits dans le mémoire, et comparez
    les résultats aux résultats du mémoire.>
  </enumerate>

  <hrule>

  <subsection*|Remarques supplémentaires>

  <\itemize>
    <item><strong|Documentation et réglages spécifiques :><next-line>Le
    mémoire de Loems fournit probablement des réglages spécifiques pour les
    paramètres (comme les paramètres des comportements, du SLAM, etc.).
    Consultez-le pour adapter vos fichiers de configuration (fichiers YAML,
    launch files, etc.) aux valeurs décrites.

    <item><strong|Dépannage de la communication :><next-line>Si vous utilisez
    plusieurs machines (hôte et robot), vérifiez bien la configuration du
    réseau et des variables d'environnement ROS (<em|ROS_MASTER_URI> et
    <em|ROS_HOSTNAME>).

    <item><strong|Simulation avec ARGoS :><next-line>Si vous souhaitez tester
    en simulation, assurez-vous que ARGoS est correctement intégré à ROS via
    le package ARGoS ROS Bridge.
  </itemize>

  <hrule>

  En suivant ces étapes et en adaptant les commandes aux spécificités de
  votre projet (chemins, noms de packages, adresses IP, etc.), vous devriez
  être en mesure de reproduire l'approche du mémoire de Loems en utilisant
  ROS Noetic sur des e\<nbhyph\>puck (G\<nbhyph\>pucks).

  N'hésitez pas à consulter les sections pertinentes du mémoire pour ajuster
  les paramètres et vérifier que chaque étape correspond aux exigences
  expérimentales décrites.
</body>

<\initial>
  <\collection>
    <associate|page-medium|paper>
  </collection>
</initial>

<\references>
  <\collection>
    <associate|auto-1|<tuple|?|1>>
    <associate|auto-2|<tuple|2|1>>
    <associate|auto-3|<tuple|4|1>>
    <associate|auto-4|<tuple|2|2>>
    <associate|auto-5|<tuple|3|2>>
    <associate|auto-6|<tuple|3|2>>
    <associate|auto-7|<tuple|3|3>>
    <associate|auto-8|<tuple|3|3>>
    <associate|auto-9|<tuple|3|4>>
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|toc>
      <with|par-left|<quote|1tab>|1. Préparation de la machine hôte (Ubuntu
      20.04 LTS) <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-1>>

      <with|par-left|<quote|1tab>|2. Installation de ROS Noetic
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-2>>

      <with|par-left|<quote|1tab>|3. Configuration du Workspace Catkin
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-3>>

      <with|par-left|<quote|1tab>|4. Récupération et Compilation du Code de
      Contrôle <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-4>>

      <with|par-left|<quote|1tab>|5. Configuration et Flashing de l'OS sur
      les e\<nbhyph\>puck (G\<nbhyph\>pucks)
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-5>>

      <with|par-left|<quote|1tab>|6. Lancement et Test des Nodes ROS
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-6>>

      <with|par-left|<quote|1tab>|7. Déploiement sur le Robot
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-7>>

      <with|par-left|<quote|1tab>|8. Tests Finaux et Débogage
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-8>>

      <with|par-left|<quote|1tab>|Remarques supplémentaires
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-9>>
    </associate>
  </collection>
</auxiliary>