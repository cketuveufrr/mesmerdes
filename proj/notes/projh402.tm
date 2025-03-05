<TeXmacs|2.1.2>

<style|<tuple|beamer|french>>

<\body>
  <screens|<\hidden>
    <tit|m�moire loems>

    \;

    <with|font-series|bold|contexte> : utiliser des petits robots
    ind�pendants et sans intelligence centralis�e pour ex�cuter des t�ches

    <with|font-series|bold|SLAM> : type de t�che � ex�cuter
    <math|\<rightarrow\>> mapping d'environnement

    <with|font-series|bold|avantages> :\ 

    <\itemize>
      <item>tol�rant aux fautes (mort individuelle, pas de central<\footnote>
        donc moins critique
      </footnote>)

      <item>scalable (pour ajouter des robots, suffit de rajouter des robots)

      <item>flexible (<todo|?>)
    </itemize>
  </hidden>|<\hidden>
    <tit|>

    \;

    <with|font-series|bold|programmation> : la difficult� est de savoir faire
    un comportement global � partir d'un comportement individuel
    <math|\<rightarrow\>> inspiration des <with|font-shape|italic|animaux>
    (ACO, birds, <text-dots>)

    <with|font-series|bold|utilit�> : environnement large et dangereux
    (risque de perte d'un robot)

    <with|font-series|bold|questions centrales> :\ 

    <\itemize>
      <item>comment explorer et r�colter l'info

      <item>comment partager l'info

      <item>comment utiliser l'info pour produire des cartes
    </itemize>

    \;
  </hidden>|<\hidden>
    <tit|comment explorer et r�colter l'info ?>

    <with|font-series|bold|IRIDIA 2019> : usage de random walk, algorithme de
    Gmapping et multirobot_map_merge pour faire du
    <with|font-shape|italic|swarm mapping>.\ 

    <todo|<with|font-series|bold|ballistic motion>> : variante du random walk
    plus efficace (couvre plus d'espace).

    <with|font-series|bold|robots> : e-pucks (utilis� par IRIDIA 2019)
    <math|\<rightarrow\>> Mercator = version am�lior�e

    <with|font-series|bold|odometry> : se localise dans l'espace<\footnote>
      le e-puck pouvait juste <with|font-shape|italic|estimer> sa
      localisation � partir de ses rotations
    </footnote>

    \;
  </hidden>|<\hidden>
    <tit|comment partager l'info>

    \;

    <with|font-series|bold|usuel> : use des infrastructures externes

    <with|font-series|bold|solutions> :\ 

    <\itemize>
      <item>ad-hoc networks<\footnote>
        connexion non centralis�e, unitaire entre les diff�rents robots
      </footnote>, d�j� utilis� (UAV, <text-dots><todo|autre>)

      <math|\<rightarrow\>> mesh = chaque robot est une maille du r�seau

      <math|\<rightarrow\>> mobile = mobile quoi
    </itemize>

    <with|font-series|bold|exploitation> : usage des cartes g�n�r�es pour
    <with|font-shape|italic|coordonner> la strat�gie d'exploration\ 
  </hidden>|<\hidden>
    <tit|>

    \;

    <with|font-series|bold|><with|font-series|bold|automatic off-line design>
    :\ 

    <\itemize>
      <math|\<rightarrow\>> automatic : ajustement de param�tre pour r�pondre
      � la commande globale demand�e

      <math|\<rightarrow\>> off-line : on programme en simulateur avant
      d'aller irl (on-line = ajustements faits en temps r�el)
    </itemize>

    <with|font-series|bold|SLAM> : <with|font-series|bold|m>ap et
    s'<with|font-series|bold|a>uto-<with|font-series|bold|l>ocaliser de
    mani�re <with|font-series|bold|s>imultan�e

    <math|\<rightarrow\>> utile pour des environnements qui
    <with|font-shape|italic|�voluent>

    <with|font-series|bold|><with|font-series|bold|distributed SLAM> : dans
    le contexte de la robotique en essaim

    <math|\<rightarrow\>> \ \ 
  </hidden>|<\hidden>
    <tit|<todo|approches de SLAM>>

    \;

    l'approche par <with|font-series|bold|filtre de Kalman> utilise ledit
    filtre pour estimer � post�riori<\footnote>
      <todo|pas du SLAM donc?>
    </footnote> pour estimer la probabilit� de pr�sence des features
    d�tect�es par le robot.
  </hidden>|<\hidden>
    <tit|scaling et data sharing>

    <with|font-series|bold|probl�me>: passer � un syst�me multi-robots pose
    le probl�me de <with|font-shape|italic|data-sharing>.\ 

    <\itemize>
      <item>single: estimations locales dans le frame du robot (que ce qu'il
      y a ) c�t� de lui)

      <item>multi (sans GPS): avoir une vision partag�e de l'environnement
    </itemize>

    <with|font-series|bold|distinction entre raw et processed>:

    <\itemize>
      <item>raw: scale poorly (trop de data � partager d�s qu'on explore un
      peu)

      <item>processed: d�pend d'infrastructures externes (en tout cas pour
      les approches les plus common)
    </itemize>

    \;
  </hidden>|<\hidden>
    <tit|shared situational awarness>

    elle peut �tre atteinte en partageant de la raw data.\ 

    <with|font-series|bold|requiert>: partage d'informations sensorielles et
    de raw data!

    \;
  </hidden>|<\hidden>
    <tit|>

    \;
  </hidden>|<\hidden>
    <tit|approches>

    1. partial SLAM technique: on stitch les diff�rentes d�couvertes en
    consid�rant un <with|font-shape|italic|error rate> et puis envoyer aux
    membres du swarm (donc pas centralis�), mais donc c'est pas du tout
    scalable (seul un leading partie fait le taff)

    2. utiliser un algorithme distribu� pour partager et fusionner les
    occupancy grids et au final on converge vers la m�me carte. pour bien
    performer il faut que les robots se rencontrent souvent et le soucis
    c'est d'atteindre un consensus avec de la data conflicting.

    <math|\<rightarrow\>> notre approche = on fait du
    <with|font-series|bold|<with|font-shape|italic|distributed mapping>>,
    c'est � dire que chaque agent fait sa carte dans son coin et on merge
    quand on rencontre, probl�mes :

    <\itemize>
      <item>r�soudre le map merging problem

      <item>restreindre l'over confidence de l'agent vis-�-vis de ses propres
      cartes
    </itemize>
  </hidden>|<\hidden>
    <tit|map merging problem>

    \;

    le probl�me est bien g�r� quand on a une carte statique produite apr�s
    coup, cependant pour le cas de la carte produite au fur et � mesure,
    c'est un peu plus compliquado.

    quand on merge sans avoir d'infos sur les positions relatives on fait par
    <todo|reconnaissance de patterns> et sinon, dans tous les cas on fait via
    les occupancy grid.

    <with|font-series|bold|conflicting data>: un peu le probl�me � r�soudre
    anyway, on peut faire du 2D matching problem, o� on fait un vote bas� sur
    la segmentation d'area.

    part du principe que les cartes sont <with|font-series|bold|same
    quality>, et on peut qualifier les maps rien qu'avec du
    <with|font-series|bold|CNN>
  </hidden>|<\hidden>
    <tit|multi-robot exploration>

    en gros c'est une t�che <with|font-series|bold|d�centralis�e> qui permet
    de map des endroits.\ 

    <todo|Kegeleirs et al> ont un peu �tudi� comment les diff�rents random
    walk influencent le mapping

    en gros : ballistic motion + position de d�part connue
  </hidden>|<\hidden>
    <tit|2d occupancy grid>

    \;

    on partage l'information sous forme d'image, elle m�me processed.\ 

    <with|font-series|bold|occupancy<text-dots>>: grille avec portions
    indiquant:

    <\itemize>
      <item>occup�

      <item>libre

      <item>inaccessible
    </itemize>

    c'est grave utile pour le cas des cartes avec non structur� et o� c'est
    dur d'extraire des d�tails complexes

    on utilise de plus en plus les lidar 3d (plus pr�cis), mais moins adapt�
    � l'essaim vu que robot plus complexes
  </hidden>|<\hidden>
    <tit|gmapping>

    c'est un rospackage, bas� sur les Lidar (laser based), avec combinaison
    particule filter et resampling

    il met � jour la position de chaque <with|font-series|bold|particule><\footnote>
      hypoth�se sur la position et l'orientation du robot dans l'espace
    </footnote> en utilisant l'odom�trie, puis il fait un laser scan matching
    pour ajuster la position par rapport � ce qui est vu par la
    carte<\footnote>
      <todo|j'ai pas vraiment pig�>
    </footnote>.\ 

    pour limiter la capacit� du lidar, le param�tre maxUrange de ROS est
    r�gl� � 0.4m (coup� le faisceau au dela)<\footnote>
      filtr� par le logiciel
    </footnote> pour pas lire ce qui est hors de la zone de test<\footnote>
      et si t'es sur le bord, du moment que t'as plus de 40cm\ 
    </footnote>

    on connait � l'avance la position et l'orientation initiale, donc on peut
    corriger l'odom�trie

    \;

    \;
  </hidden>|<\shown>
    <tit|map-server>

    le package ros offre un outil appel� map-saver. permet de garder une map
    g�n�r�e par le slam directement sur le disque.
  </shown>|<\hidden>
    <tit|annexe - m�thode de Kalman>

    <with|font-series|bold|but>: estimer un �tat (ex: position)\ 

    <with|font-series|bold|m�thode>: utiliser pr�dictions du mod�le de
    mouvement et mesure des capteurs

    <with|font-series|bold|particularit�>: <todo|utilise distributions
    gaussiennes pour les incertitudes et met � jour les estimations
    r�cursivement><\footnote>
      rien compris
    </footnote> <math|\<rightarrow\>> utile pour les syst�mes lin�aires
  </hidden>|<\hidden>
    <tit|pistes>

    <\itemize>
      <item>n�cessaire d'avoir la position de d�part ?
    </itemize>

    \;
  </hidden>|<\hidden>
    <tit|questions>

    <\itemize>
      <item>diff�rence entre le e-puck et le <math|\<pi\>>-puck ?
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