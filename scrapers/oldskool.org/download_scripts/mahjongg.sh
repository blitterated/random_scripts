#!/bin/sh

put_section_header () {
  local title="$1"
  local url="$2"

  echo "\n\n${title}"
  echo '------------------------------------------------------------'
  echo "target:\t$(pwd)"
  echo "source:\t${url}"
  echo
}

mahjongg="mahjongg"
base_url="http://ftp.oldskool.org/pub/uwpuml/mahjongg/misc/"

mkdir "${mahjongg}" && cd $_

put_section_header "$mahjongg" "$base_url"

echo '\n00-index.txt'; curl -o '00-index.txt' "${base_url}00-index.txt"
echo '\nhkmj.zip'; curl -o 'hkmj.zip' "${base_url}hkmj.zip"
echo '\nmjvga30a.zip'; curl -o 'mjvga30a.zip' "${base_url}mjvga30a.zip"
echo '\nmjvga30b.zip'; curl -o 'mjvga30b.zip' "${base_url}mjvga30b.zip"
echo '\npcx2tis1.zip'; curl -o 'pcx2tis1.zip' "${base_url}pcx2tis1.zip"
echo '\nsoltil30.zip'; curl -o 'soltil30.zip' "${base_url}soltil30.zip"
echo '\ntiles1p1.exe'; curl -o 'tiles1p1.exe' "${base_url}tiles1p1.exe"
echo '\nviewset2.zip'; curl -o 'viewset2.zip' "${base_url}viewset2.zip"


vgatiles="vgatiles"
base_url="http://ftp.oldskool.org/pub/uwpuml/mahjongg/vgatiles/"

mkdir "${vgatiles}" && cd $_

put_section_header "${mahjongg} - ${vgatiles}" "$base_url"

echo '\n00-index.txt'; curl -o '00-index.txt' "${base_url}00-index.txt"
echo '\n3models.zip'; curl -o '3models.zip' "${base_url}3models.zip"
echo '\nanimals.zip'; curl -o 'animals.zip' "${base_url}animals.zip"
echo '\narchery.zip'; curl -o 'archery.zip' "${base_url}archery.zip"
echo '\nartcolny.zip'; curl -o 'artcolny.zip' "${base_url}artcolny.zip"
echo '\nastrol.zip'; curl -o 'astrol.zip' "${base_url}astrol.zip"
echo '\ncards.zip'; curl -o 'cards.zip' "${base_url}cards.zip"
echo '\ncelebs1.zip'; curl -o 'celebs1.zip' "${base_url}celebs1.zip"
echo '\ncelebs2.zip'; curl -o 'celebs2.zip' "${base_url}celebs2.zip"
echo '\ncivilwar.zip'; curl -o 'civilwar.zip' "${base_url}civilwar.zip"
echo '\nclassic.zip'; curl -o 'classic.zip' "${base_url}classic.zip"
echo '\nclassic2.zip'; curl -o 'classic2.zip' "${base_url}classic2.zip"
echo '\ndeckcard.zip'; curl -o 'deckcard.zip' "${base_url}deckcard.zip"
echo '\ndiana1.zip'; curl -o 'diana1.zip' "${base_url}diana1.zip"
echo '\ndiana2.zip'; curl -o 'diana2.zip' "${base_url}diana2.zip"
echo '\ndifergie.zip'; curl -o 'difergie.zip' "${base_url}difergie.zip"
echo '\ndrafting.zip'; curl -o 'drafting.zip' "${base_url}drafting.zip"
echo '\neltronic.zip'; curl -o 'eltronic.zip' "${base_url}eltronic.zip"
echo '\nfaces.zip'; curl -o 'faces.zip' "${base_url}faces.zip"
echo '\nfaces3.zip'; curl -o 'faces3.zip' "${base_url}faces3.zip"
echo '\nfaces4.zip'; curl -o 'faces4.zip' "${base_url}faces4.zip"
echo '\nfaces5.zip'; curl -o 'faces5.zip' "${base_url}faces5.zip"
echo '\nfieldbio.zip'; curl -o 'fieldbio.zip' "${base_url}fieldbio.zip"
echo '\nflags.zip'; curl -o 'flags.zip' "${base_url}flags.zip"
echo '\nfunnies.zip'; curl -o 'funnies.zip' "${base_url}funnies.zip"
echo '\nhkclassc.zip'; curl -o 'hkclassc.zip' "${base_url}hkclassc.zip"
echo '\nhobo.zip'; curl -o 'hobo.zip' "${base_url}hobo.zip"
echo '\nmagic.zip'; curl -o 'magic.zip' "${base_url}magic.zip"
echo '\nmedieval.zip'; curl -o 'medieval.zip' "${base_url}medieval.zip"
echo '\nmjblocks.zip'; curl -o 'mjblocks.zip' "${base_url}mjblocks.zip"
echo '\nmjrank.zip'; curl -o 'mjrank.zip' "${base_url}mjrank.zip"
echo '\nmjscots.zip'; curl -o 'mjscots.zip' "${base_url}mjscots.zip"
echo '\nmjvflgcd.zip'; curl -o 'mjvflgcd.zip' "${base_url}mjvflgcd.zip"
echo '\nmjvgadm4.zip'; curl -o 'mjvgadm4.zip' "${base_url}mjvgadm4.zip"
echo '\nnations.zip'; curl -o 'nations.zip' "${base_url}nations.zip"
echo '\nnfl.zip'; curl -o 'nfl.zip' "${base_url}nfl.zip"
echo '\nnothing.zip'; curl -o 'nothing.zip' "${base_url}nothing.zip"
echo '\noldenglh.zip'; curl -o 'oldenglh.zip' "${base_url}oldenglh.zip"
echo '\npatches.zip'; curl -o 'patches.zip' "${base_url}patches.zip"
echo '\npatterns.zip'; curl -o 'patterns.zip' "${base_url}patterns.zip"
echo '\nphantom.zip'; curl -o 'phantom.zip' "${base_url}phantom.zip"
echo '\npool.zip'; curl -o 'pool.zip' "${base_url}pool.zip"
echo '\nrisen.zip'; curl -o 'risen.zip' "${base_url}risen.zip"
echo '\nrisen2.zip'; curl -o 'risen2.zip' "${base_url}risen2.zip"
echo '\nsesame.zip'; curl -o 'sesame.zip' "${base_url}sesame.zip"
echo '\nsgenius.zip'; curl -o 'sgenius.zip' "${base_url}sgenius.zip"
echo '\nspace.zip'; curl -o 'space.zip' "${base_url}space.zip"
echo '\nstillife.zip'; curl -o 'stillife.zip' "${base_url}stillife.zip"
echo '\ntis.zip'; curl -o 'tis.zip' "${base_url}tis.zip"
echo '\nwacktile.zip'; curl -o 'wacktile.zip' "${base_url}wacktile.zip"

cd ../..