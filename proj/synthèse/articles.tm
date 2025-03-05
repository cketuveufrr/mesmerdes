<TeXmacs|2.1.2>

<style|<tuple|generic|french>>

<\body>
  <part*|Questions>

  C'est quoi ROS ? Comment �a marche ? DemiOS ? Que devrais-je faire
  exactement ?\ 

  \ <new-page>

  <part*|Random walk for sm>

  the article is about random walk for swarm mapping. the meaning is that we
  are going to do random walk, that means that each step of our path is
  decided randomly <todo|et d�cid� quand ? � quel moment ?>. we use it for
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

  en terme de random walk, on en a 5 diff�rents explor�s, et dans l'article,
  on voit lesquels sont plus efficaces que les autres. on utilise 10 e-pucks
  <todo|que sont leur sp�cificit�s?> pour cela. et on a vu qu'on peut
  collectivement map l'enti�ret� en combinant leur maps incompl�tes � chacun.
  la qualit� de la carte d�pend de plusieurs param�tres, parmi ces
  param�tres, nous avons �videmment la mani�re dont les robots se d�placent
  dans l'espace, notamment la <with|font-shape|italic|ballistic motion> qui
  donne les meilleurs r�sultats.\ 

  <subsection|instroduction>

  par d�finition, un swarm est un essain de robots qui op�rent de mani�re
  autonome (on n'a pas � les diriger) et n'ont pas besoin d'une
  infrastructure particuli�re (pour donner des commandes,<text-dots>) ou d'un
  leader. en plus, ce genre de fonctionnement poss�de des propri�t�s
  d�sirables, comme la scalability (on peut facilement �tendre <todo|y a pas
  des probl�mes de <with|font-shape|italic|plus de collisions??>>,
  flexibilit� c'est � dire qu'ils peuvent s'adapter � plusieurs
  environnements (et qu'on peut facilement leur faire faire plusieurs choses
  diff�rentes), et la tol�rance aux fautes (si un robot est d�faillant, les
  autres continuent quand m�me � faire leur travail et �a sera pas la mort).

  le mapping est logiquement la premi�re chose qu'un ordinateur fait quand il
  arrive dans un endroit inconnu. des <with|font-series|bold|m�thodes> ont
  �t� pr�c�demment d�velopp�es pour faire ceci, mais souvent elles sont trop
  g�n�rale <todo|et/ou> d�pendantes de l'usage sp�cifique (use case).

  les meilleures m�thodes entrent souvent en conflit avec le fait que les
  robots utilis�s\ 
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