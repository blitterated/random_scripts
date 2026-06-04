#!/bin/sh

base_url="http://ftp.oldskool.org/pub/misc/Software/Games/INFOGOLD/"
dest_folder="infogold"

mkdir "$dest_folder"
cd "$dest_folder"

echo '\nHGTTG_G.360'; curl -o "HGTTG_G.360" "${base_url}HGTTG_G.360"
echo '\nHGTTG_G.TC'; curl -o "HGTTG_G.TC" "${base_url}HGTTG_G.TC"
echo '\nHGTTG_G.TXT'; curl -o "HGTTG_G.TXT" "${base_url}HGTTG_G.TXT"
echo '\nHGTTG_G.ZIP'; curl -o "HGTTG_G.ZIP" "${base_url}HGTTG_G.ZIP"
echo '\nLEATHERG.360'; curl -o "LEATHERG.360" "${base_url}LEATHERG.360"
echo '\nLEATHERG.TC'; curl -o "LEATHERG.TC" "${base_url}LEATHERG.TC"
echo '\nLEATHERG.TXT'; curl -o "LEATHERG.TXT" "${base_url}LEATHERG.TXT"
echo '\nLEATHERG.ZIP'; curl -o "LEATHERG.ZIP" "${base_url}LEATHERG.ZIP"
echo '\nZORK1G.180'; curl -o "ZORK1G.180" "${base_url}ZORK1G.180"
echo '\nZORK1G.TC'; curl -o "ZORK1G.TC" "${base_url}ZORK1G.TC"
echo '\nZORK1G.TXT'; curl -o "ZORK1G.TXT" "${base_url}ZORK1G.TXT"
echo '\nZORK1G.ZIP'; curl -o "ZORK1G.ZIP" "${base_url}ZORK1G.ZIP"
