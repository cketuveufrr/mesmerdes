<TeXmacs|2.1.2>

<style|generic>

<\body>
  Très bonne question \V si ton objectif est <strong|la fiabilité maximale
  avec le moins de risque d'erreur>, notamment en ce qui concerne :

  <\itemize>
    <item>des différences de taille entre cartes SD,

    <item>l'intégrité du système (boot, partitions, etc.),

    <item>et la simplicité de restauration ou duplication,
  </itemize>

  alors voici une analyse plus poussée :

  <hrule>

  <section*|\<#1F947\> <strong|Méthode la plus robuste et fiable : <code*|dd>
  + <code*|PiShrink>>>

  <subsection*|Pourquoi ?>

  <\itemize>
    <item>Elle <strong|crée une image exacte> de la carte source.

    <item>Elle <strong|réduit la taille> à ce qui est réellement utilisé (en
    compressant l'image en taille réelle, pas en poids).

    <item>Elle <strong|permet de restaurer> sur <strong|n'importe quelle
    carte SD de même capacité nominale>, voire plus petite, tant qu'elle peut
    contenir les données effectives.

    <item>Elle <strong|conserve parfaitement> les partitions, flags de boot,
    UUID, etc.
  </itemize>

  <subsection*|Étapes détaillées :>

  <subsubsection*|1. Créer l'image disque de la carte source>

  Tu branches la carte source, repère son nom (par ex. <code*|/dev/sdX>) :

  <code|<\code*>
    sudo dd if=/dev/sdX of=~/raspbian.img bs=4M status=progress conv=fsync

    \;
  </code*>>

  <subsubsection*|2. Télécharger et exécuter <code*|PiShrink>>

  <code|<\code*>
    git clone https://github.com/Drewsif/PiShrink.git

    cd PiShrink

    chmod +x pishrink.sh

    sudo ./pishrink.sh ~/raspbian.img

    \;
  </code*>>

  Cela rend l'image auto-redimensionnable au boot (comme les images
  officielles de Raspberry Pi OS), ce qui règle les soucis de tailles
  différentes.

  <subsubsection*|3. Écrire l'image sur la carte SD de destination>

  Repère la carte SD de destination (<code*|/dev/sdY>) et exécute :

  <code|<\code*>
    sudo dd if=~/raspbian.img of=/dev/sdY bs=4M status=progress conv=fsync

    \;
  </code*>>

  <hrule>

  <section*|\<#1F9F0\> Alternatives avec plus de risques ou complexité>

  <\itemize>
    <item><strong|<code*|dd> brut sans modification> : fiable
    <strong|seulement si la destination est identique ou plus grande>. Échec
    garanti sinon.

    <item><strong|<code*|rsync>> : plus de contrôle, mais sujet aux erreurs
    de boot, permissions, flags, etc.

    <item><strong|<code*|gparted> + <code*|dd>> : efficace si bien exécuté,
    mais peut être cassant (mal redimensionner une partition root peut rendre
    le système instable).
  </itemize>

  <hrule>

  <subsection*|\<#1F9FE\> En résumé>

  <tabular|<tformat|<twith|table-hmode|min>|<twith|table-width|1par>|<cwith|1|-1|1|-1|cell-hyphen|t>|<table|<row|<cell|Méthode>|<cell|Fiabilité>|<cell|Simplicité>|<cell|Compatibilité
  avec cartes plus petites>>|<row|<cell|<code*|dd>
  seul>|<cell|Haute>|<cell|Très simple>|<cell|\<#274C\> Non, échoue si plus
  petite>>|<row|<cell|<code*|dd> + <code*|PiShrink>>|<cell|<strong|Très
  haute>>|<cell|Moyenne>|<cell|\<#2705\> Oui>>|<row|<cell|<code*|gparted> +
  <code*|dd>>|<cell|Haute>|<cell|Moyenne>|<cell|\<#2705\> Oui (si bien
  fait)>>|<row|<cell|<code*|rsync>>|<cell|Moyenne>|<cell|Complexe>|<cell|\<#2705\>
  Oui, mais risque d'erreurs système>>>>>

  <hrule>

  Souhaites-tu que je t'écrive un script complet que tu peux exécuter pour
  automatiser ce processus ?
</body>

<\initial>
  <\collection>
    <associate|page-medium|paper>
  </collection>
</initial>

<\references>
  <\collection>
    <associate|auto-1|<tuple|<with|mode|<quote|math>|\<bullet\>>|1>>
    <associate|auto-2|<tuple|<with|mode|<quote|math>|\<bullet\>>|1>>
    <associate|auto-3|<tuple|<with|mode|<quote|math>|\<bullet\>>|1>>
    <associate|auto-4|<tuple|<with|mode|<quote|math>|\<bullet\>>|1>>
    <associate|auto-5|<tuple|<with|mode|<quote|math>|\<bullet\>>|1>>
    <associate|auto-6|<tuple|<with|mode|<quote|math>|\<bullet\>>|1>>
    <associate|auto-7|<tuple|<with|mode|<quote|math>|\<bullet\>>|2>>
    <associate|auto-8|<tuple|<with|mode|<quote|math>|\<bullet\>>|2>>
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|toc>
      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|\<#1F947\>
      <with|font-series|<quote|bold>|math-font-series|<quote|bold>|Méthode la
      plus robuste et fiable : <with|font-family|<quote|tt>|dd> +
      <with|font-family|<quote|tt>|PiShrink>>>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-1><vspace|0.5fn>

      <with|par-left|<quote|1tab>|Pourquoi ?
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-2>>

      <with|par-left|<quote|1tab>|Étapes détaillées :
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-3>>

      <with|par-left|<quote|2tab>|1. Créer l'image disque de la carte source
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-4>>

      <with|par-left|<quote|2tab>|2. Télécharger et exécuter
      <with|font-family|<quote|tt>|PiShrink>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-5>>

      <with|par-left|<quote|2tab>|3. Écrire l'image sur la carte SD de
      destination <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-6>>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|\<#1F9F0\>
      Alternatives avec plus de risques ou complexité>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-7><vspace|0.5fn>

      <with|par-left|<quote|1tab>|\<#1F9FE\> En résumé
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-8>>
    </associate>
  </collection>
</auxiliary>