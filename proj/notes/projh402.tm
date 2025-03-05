<TeXmacs|2.1.2>

<style|<tuple|beamer|french>>

<\body>
  <screens|<\hidden>
    <tit|mémoire loems>

    \;

    <with|font-series|bold|contexte> : utiliser des petits robots
    indépendants et sans intelligence centralisée pour exécuter des tâches

    <with|font-series|bold|SLAM> : type de tâche à exécuter
    <math|\<rightarrow\>> mapping d'environnement

    <with|font-series|bold|avantages> :\ 

    <\itemize>
      <item>tolérant aux fautes (mort individuelle, pas de central<\footnote>
        donc moins critique
      </footnote>)

      <item>scalable (pour ajouter des robots, suffit de rajouter des robots)

      <item>flexible (<todo|?>)
    </itemize>
  </hidden>|<\hidden>
    <tit|>

    \;

    <with|font-series|bold|programmation> : la difficulté est de savoir faire
    un comportement global à partir d'un comportement individuel
    <math|\<rightarrow\>> inspiration des <with|font-shape|italic|animaux>
    (ACO, birds, <text-dots>)

    <with|font-series|bold|utilité> : environnement large et dangereux
    (risque de perte d'un robot)

    <with|font-series|bold|questions centrales> :\ 

    <\itemize>
      <item>comment explorer et récolter l'info

      <item>comment partager l'info

      <item>comment utiliser l'info pour produire des cartes
    </itemize>

    \;
  </hidden>|<\hidden>
    <tit|comment explorer et récolter l'info ?>

    <with|font-series|bold|IRIDIA 2019> : usage de random walk, algorithme de
    Gmapping et multirobot_map_merge pour faire du
    <with|font-shape|italic|swarm mapping>.\ 

    <todo|<with|font-series|bold|ballistic motion>> : variante du random walk
    plus efficace (couvre plus d'espace).

    <with|font-series|bold|robots> : e-pucks (utilisé par IRIDIA 2019)
    <math|\<rightarrow\>> Mercator = version améliorée

    <with|font-series|bold|odometry> : se localise dans l'espace<\footnote>
      le e-puck pouvait juste <with|font-shape|italic|estimer> sa
      localisation à partir de ses rotations
    </footnote>

    \;
  </hidden>|<\hidden>
    <tit|comment partager l'info>

    \;

    <with|font-series|bold|usuel> : use des infrastructures externes

    <with|font-series|bold|solutions> :\ 

    <\itemize>
      <item>ad-hoc networks<\footnote>
        connexion non centralisée, unitaire entre les différents robots
      </footnote>, déjà utilisé (UAV, <text-dots><todo|autre>)

      <math|\<rightarrow\>> mesh = chaque robot est une maille du réseau

      <math|\<rightarrow\>> mobile = mobile quoi
    </itemize>

    <with|font-series|bold|exploitation> : usage des cartes générées pour
    <with|font-shape|italic|coordonner> la stratégie d'exploration\ 
  </hidden>|<\hidden>
    <tit|>

    \;

    <with|font-series|bold|><with|font-series|bold|automatic off-line design>
    :\ 

    <\itemize>
      <math|\<rightarrow\>> automatic : ajustement de paramètre pour répondre
      à la commande globale demandée

      <math|\<rightarrow\>> off-line : on programme en simulateur avant
      d'aller irl (on-line = ajustements faits en temps réel)
    </itemize>

    <with|font-series|bold|SLAM> : <with|font-series|bold|m>ap et
    s'<with|font-series|bold|a>uto-<with|font-series|bold|l>ocaliser de
    manière <with|font-series|bold|s>imultanée

    <math|\<rightarrow\>> utile pour des environnements qui
    <with|font-shape|italic|évoluent>

    <with|font-series|bold|><with|font-series|bold|distributed SLAM> : dans
    le contexte de la robotique en essaim

    <math|\<rightarrow\>> \ \ 
  </hidden>|<\hidden>
    <tit|<todo|approches de SLAM>>

    \;

    l'approche par <with|font-series|bold|filtre de Kalman> utilise ledit
    filtre pour estimer à postériori<\footnote>
      <todo|pas du SLAM donc?>
    </footnote> pour estimer la probabilité de présence des features
    détectées par le robot.
  </hidden>|<\hidden>
    <tit|scaling et data sharing>

    <with|font-series|bold|problème>: passer à un système multi-robots pose
    le problème de <with|font-shape|italic|data-sharing>.\ 

    <\itemize>
      <item>single: estimations locales dans le frame du robot (que ce qu'il
      y a ) côté de lui)

      <item>multi (sans GPS): avoir une vision partagée de l'environnement
    </itemize>

    <with|font-series|bold|distinction entre raw et processed>:

    <\itemize>
      <item>raw: scale poorly (trop de data à partager dès qu'on explore un
      peu)

      <item>processed: dépend d'infrastructures externes (en tout cas pour
      les approches les plus common)
    </itemize>

    \;
  </hidden>|<\hidden>
    <tit|shared situational awarness>

    elle peut être atteinte en partageant de la raw data.\ 

    <with|font-series|bold|requiert>: partage d'informations sensorielles et
    de raw data!

    \;
  </hidden>|<\hidden>
    <tit|>

    \;
  </hidden>|<\hidden>
    <tit|approches>

    1. partial SLAM technique: on stitch les différentes découvertes en
    considérant un <with|font-shape|italic|error rate> et puis envoyer aux
    membres du swarm (donc pas centralisé), mais donc c'est pas du tout
    scalable (seul un leading partie fait le taff)

    2. utiliser un algorithme distribué pour partager et fusionner les
    occupancy grids et au final on converge vers la même carte. pour bien
    performer il faut que les robots se rencontrent souvent et le soucis
    c'est d'atteindre un consensus avec de la data conflicting.

    <math|\<rightarrow\>> notre approche = on fait du
    <with|font-series|bold|<with|font-shape|italic|distributed mapping>>,
    c'est à dire que chaque agent fait sa carte dans son coin et on merge
    quand on rencontre, problèmes :

    <\itemize>
      <item>résoudre le map merging problem

      <item>restreindre l'over confidence de l'agent vis-à-vis de ses propres
      cartes
    </itemize>
  </hidden>|<\hidden>
    <tit|map merging problem>

    \;

    le problème est bien géré quand on a une carte statique produite après
    coup, cependant pour le cas de la carte produite au fur et à mesure,
    c'est un peu plus compliquado.

    quand on merge sans avoir d'infos sur les positions relatives on fait par
    <todo|reconnaissance de patterns> et sinon, dans tous les cas on fait via
    les occupancy grid.

    <with|font-series|bold|conflicting data>: un peu le problème à résoudre
    anyway, on peut faire du 2D matching problem, où on fait un vote basé sur
    la segmentation d'area.

    part du principe que les cartes sont <with|font-series|bold|same
    quality>, et on peut qualifier les maps rien qu'avec du
    <with|font-series|bold|CNN>
  </hidden>|<\hidden>
    <tit|multi-robot exploration>

    en gros c'est une tâche <with|font-series|bold|décentralisée> qui permet
    de map des endroits.\ 

    <todo|Kegeleirs et al> ont un peu étudié comment les différents random
    walk influencent le mapping

    en gros : ballistic motion + position de départ connue
  </hidden>|<\hidden>
    <tit|2d occupancy grid>

    \;

    on partage l'information sous forme d'image, elle même processed.\ 

    <with|font-series|bold|occupancy<text-dots>>: grille avec portions
    indiquant:

    <\itemize>
      <item>occupé

      <item>libre

      <item>inaccessible
    </itemize>

    c'est grave utile pour le cas des cartes avec non structuré et où c'est
    dur d'extraire des détails complexes

    on utilise de plus en plus les lidar 3d (plus précis), mais moins adapté
    à l'essaim vu que robot plus complexes
  </hidden>|<\hidden>
    <tit|gmapping>

    c'est un rospackage, basé sur les Lidar (laser based), avec combinaison
    particule filter et resampling

    il met à jour la position de chaque <with|font-series|bold|particule><\footnote>
      hypothèse sur la position et l'orientation du robot dans l'espace
    </footnote> en utilisant l'odométrie, puis il fait un laser scan matching
    pour ajuster la position par rapport à ce qui est vu par la
    carte<\footnote>
      <todo|j'ai pas vraiment pigé>
    </footnote>.\ 

    pour limiter la capacité du lidar, le paramètre maxUrange de ROS est
    réglé à 0.4m (coupé le faisceau au dela)<\footnote>
      filtré par le logiciel
    </footnote> pour pas lire ce qui est hors de la zone de test<\footnote>
      et si t'es sur le bord, du moment que t'as plus de 40cm\ 
    </footnote>

    on connait à l'avance la position et l'orientation initiale, donc on peut
    corriger l'odométrie

    \;

    \;
  </hidden>|<\shown>
    <tit|map-server>

    le package ros offre un outil appelé map-saver. permet de garder une map
    générée par le slam directement sur le disque.
  </shown>|<\hidden>
    <tit|annexe - méthode de Kalman>

    <with|font-series|bold|but>: estimer un état (ex: position)\ 

    <with|font-series|bold|méthode>: utiliser prédictions du modèle de
    mouvement et mesure des capteurs

    <with|font-series|bold|particularité>: <todo|utilise distributions
    gaussiennes pour les incertitudes et met à jour les estimations
    récursivement><\footnote>
      rien compris
    </footnote> <math|\<rightarrow\>> utile pour les systèmes linéaires
  </hidden>|<\hidden>
    <tit|pistes>

    <\itemize>
      <item>nécessaire d'avoir la position de départ ?
    </itemize>

    \;
  </hidden>|<\hidden>
    <tit|questions>

    <\itemize>
      <item>différence entre le e-puck et le <math|\<pi\>>-puck ?
    </itemize>

    \;
  </hidden>>
</body>

<\initial>
  <\collection>
    <associate|font-base-size|13>
    <associate|page-medium|paper>
  </collection>
</initial>

<\references>
  <\collection>
    <associate|footnote-1|<tuple|1|1>>
    <associate|footnote-2|<tuple|2|?>>
    <associate|footnote-3|<tuple|3|?>>
    <associate|footnote-4|<tuple|4|?>>
    <associate|footnote-5|<tuple|5|?>>
    <associate|footnote-6|<tuple|6|?>>
    <associate|footnote-7|<tuple|7|?>>
    <associate|footnote-8|<tuple|8|?>>
    <associate|footnote-9|<tuple|9|?>>
    <associate|footnr-1|<tuple|1|1>>
    <associate|footnr-2|<tuple|2|?>>
    <associate|footnr-3|<tuple|3|?>>
    <associate|footnr-4|<tuple|4|?>>
    <associate|footnr-5|<tuple|5|?>>
    <associate|footnr-6|<tuple|6|?>>
    <associate|footnr-7|<tuple|7|?>>
    <associate|footnr-8|<tuple|8|?>>
    <associate|footnr-9|<tuple|9|?>>
  </collection>
</references>