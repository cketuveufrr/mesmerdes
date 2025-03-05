<TeXmacs|2.1.2>

<style|<tuple|generic|french>>

<\body>
  <part*|Questions>

  C'est quoi ROS ? Comment ça marche ? DemiOS ? Que devrais-je faire
  exactement ?\ 

  \ <new-page>

  <part*|Random walk for sm>

  the article is about random walk for swarm mapping. the meaning is that we
  are going to do random walk, that means that each step of our path is
  decided randomly <todo|et décidé quand ? à quel moment ?>. we use it for
  swarm mapping, that simply means that we use it to map a place using a
  swarm (essaim) of robots. so what we are doing is using random walk
  displacement for our swarm, to do mapping.

  <subsection|abstract>

  research in swarm (before us, <todo|quelle recherche>) has shown that
  robots swarm are effective <todo|par rapport?> in the exploration of
  unknown environnements. however, little work has been done to use this in
  the context of mapping. conceiving robots swarms that can map an unknown
  env in a robust, scalable and flexible way.\ 

  the paper talks about a way which indepenendtly, robots do a random walk on
  the map, and then they merge their maps when meeting each other, into a
  single <with|font-shape|italic|global> one (<todo|after what?>).\ 

  en terme de random walk, on en a 5 différents explorés, et dans l'article,
  on voit lesquels sont plus efficaces que les autres. on utilise 10 e-pucks
  <todo|que sont leur spécificités?> pour cela. et on a vu qu'on peut
  collectivement map l'entièreté en combinant leur maps incomplètes à chacun.
  la qualité de la carte dépend de plusieurs paramètres, parmi ces
  paramètres, nous avons évidemment la manière dont les robots se déplacent
  dans l'espace, notamment la <with|font-shape|italic|ballistic motion> qui
  donne les meilleurs résultats.\ 

  <subsection|instroduction>

  par définition, un swarm est un essain de robots qui opèrent de manière
  autonome (on n'a pas à les diriger) et n'ont pas besoin d'une
  infrastructure particulière (pour donner des commandes,<text-dots>) ou d'un
  leader. en plus, ce genre de fonctionnement possède des propriétés
  désirables, comme la scalability (on peut facilement étendre <todo|y a pas
  des problèmes de <with|font-shape|italic|plus de collisions??>>,
  flexibilité c'est à dire qu'ils peuvent s'adapter à plusieurs
  environnements (et qu'on peut facilement leur faire faire plusieurs choses
  différentes), et la tolérance aux fautes (si un robot est défaillant, les
  autres continuent quand même à faire leur travail et ça sera pas la mort).

  le mapping est logiquement la première chose qu'un ordinateur fait quand il
  arrive dans un endroit inconnu. des <with|font-series|bold|méthodes> ont
  été précédemment développées pour faire ceci, mais souvent elles sont trop
  générale <todo|et/ou> dépendantes de l'usage spécifique (use case).

  les meilleures méthodes entrent souvent en conflit avec le fait que les
  robots utilisés\ 
</body>

<\initial>
  <\collection>
    <associate|page-medium|paper>
  </collection>
</initial>

<\references>
  <\collection>
    <associate|auto-1|<tuple|?|1|C:\\Users\\Salman\\AppData\\Roaming\\TeXmacs\\texts\\scratch\\no_name_14.tm>>
    <associate|auto-2|<tuple|?|?|C:\\Users\\Salman\\AppData\\Roaming\\TeXmacs\\texts\\scratch\\no_name_14.tm>>
    <associate|auto-3|<tuple|1|?|C:\\Users\\Salman\\AppData\\Roaming\\TeXmacs\\texts\\scratch\\no_name_14.tm>>
    <associate|auto-4|<tuple|2|?|C:\\Users\\Salman\\AppData\\Roaming\\TeXmacs\\texts\\scratch\\no_name_14.tm>>
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|toc>
      <vspace*|2fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|font-size|<quote|1.19>|Questions>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-1><vspace|1fn>
    </associate>
  </collection>
</auxiliary>