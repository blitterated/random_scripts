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


# Misc Utils

utils="utils"
base_url="http://ftp.oldskool.org/pub/misc/Software/Utils/"

mkdir "utils" && cd $_

put_section_header "$utils" "$base_url"

echo '\nCHARSET.COM'; curl -o 'CHARSET.COM' "${base_url}CHARSET.COM"
echo '\nCHECKIT_2.1.zip'; curl -o 'CHECKIT_2.1.zip' "${base_url}CHECKIT_2.1.zip"
echo '\nDCF.ZIP'; curl -o 'DCF.ZIP' "${base_url}DCF.ZIP"
echo '\nDISKDUPE.ZIP'; curl -o 'DISKDUPE.ZIP' "${base_url}DISKDUPE.ZIP"
echo '\nDXP234.ZIP'; curl -o 'DXP234.ZIP' "${base_url}DXP234.ZIP"
echo '\nKBDTEST.EXE'; curl -o 'KBDTEST.EXE' "${base_url}KBDTEST.EXE"
echo '\nQRAM.zip'; curl -o 'QRAM.zip' "${base_url}QRAM.zip"
echo '\nSCRUB.COM'; curl -o 'SCRUB.COM' "${base_url}SCRUB.COM"
echo '\nUNICGA.LZH'; curl -o 'UNICGA.LZH' "${base_url}UNICGA.LZH"
echo '\ncutemouse21b4.zip'; curl -o 'cutemouse21b4.zip' "${base_url}cutemouse21b4.zip"
echo '\ncutemouse191.zip'; curl -o 'cutemouse191.zip' "${base_url}cutemouse191.zip"
echo '\ntestems.zip'; curl -o 'testems.zip' "${base_url}testems.zip"


# PC Tools 6.0

pc_tools="pc_tools"
pc_tools_ver="6.0"
# base_url stays the same for now

mkdir -p "${pc_tools}/${pc_tools_ver}" & cd $_

put_section_header "${utils} - ${pc_tools} - ${pc_tools_ver}" "$base_url"

echo '\nPC-Tools 6.0 (3.5).7z'; curl -o 'PC-Tools 6.0 (3.5).7z' "${base_url}PC-Tools%206.0%20(3.5).7z"
echo '\nPC-Tools 6.0 (5.25).7z'; curl -o 'PC-Tools 6.0 (5.25).7z' "${base_url}PC-Tools%206.0%20(5.25).7z"

cd ..


# PC Tools 7.1

pc_tools_ver="7.1"
base_url="http://ftp.oldskool.org/pub/misc/Software/Utils/PC%20Tools/7.1%20DOS/"

mkdir "$pc_tools_ver" && cd $_

put_section_header "${utils} - ${pc_tools} - ${pc_tools_ver}" "$base_url"

echo '\nPCTD7101.360'; curl -o 'PCTD7101.360' "${base_url}PCTD7101.360"
echo '\nPCTD7101.ZIP'; curl -o 'PCTD7101.ZIP' "${base_url}PCTD7101.ZIP"
echo '\nPCTD7102.360'; curl -o 'PCTD7102.360' "${base_url}PCTD7102.360"
echo '\nPCTD7102.ZIP'; curl -o 'PCTD7102.ZIP' "${base_url}PCTD7102.ZIP"
echo '\nPCTD7103.360'; curl -o 'PCTD7103.360' "${base_url}PCTD7103.360"
echo '\nPCTD7103.ZIP'; curl -o 'PCTD7103.ZIP' "${base_url}PCTD7103.ZIP"
echo '\nPCTD7104.360'; curl -o 'PCTD7104.360' "${base_url}PCTD7104.360"
echo '\nPCTD7104.ZIP'; curl -o 'PCTD7104.ZIP' "${base_url}PCTD7104.ZIP"
echo '\nPCTD7105.360'; curl -o 'PCTD7105.360' "${base_url}PCTD7105.360"
echo '\nPCTD7105.ZIP'; curl -o 'PCTD7105.ZIP' "${base_url}PCTD7105.ZIP"
echo '\nPCTD7106.360'; curl -o 'PCTD7106.360' "${base_url}PCTD7106.360"
echo '\nPCTD7106.ZIP'; curl -o 'PCTD7106.ZIP' "${base_url}PCTD7106.ZIP"
echo '\nPCTD7107.360'; curl -o 'PCTD7107.360' "${base_url}PCTD7107.360"
echo '\nPCTD7107.ZIP'; curl -o 'PCTD7107.ZIP' "${base_url}PCTD7107.ZIP"
echo '\nPCTD7108.360'; curl -o 'PCTD7108.360' "${base_url}PCTD7108.360"
echo '\nPCTD7108.ZIP'; curl -o 'PCTD7108.ZIP' "${base_url}PCTD7108.ZIP"
echo '\nPCTD7109.360'; curl -o 'PCTD7109.360' "${base_url}PCTD7109.360"
echo '\nPCTD7109.ZIP'; curl -o 'PCTD7109.ZIP' "${base_url}PCTD7109.ZIP"
echo '\nPCTD7110.360'; curl -o 'PCTD7110.360' "${base_url}PCTD7110.360"
echo '\nPCTD7110.ZIP'; curl -o 'PCTD7110.ZIP' "${base_url}PCTD7110.ZIP"
echo '\nPCTD7111.360'; curl -o 'PCTD7111.360' "${base_url}PCTD7111.360"
echo '\nPCTD7111.ZIP'; curl -o 'PCTD7111.ZIP' "${base_url}PCTD7111.ZIP"
echo '\nPCTD7112.360'; curl -o 'PCTD7112.360' "${base_url}PCTD7112.360"
echo '\nPCTD7112.ZIP'; curl -o 'PCTD7112.ZIP' "${base_url}PCTD7112.ZIP"
echo '\nPCTD7113.360'; curl -o 'PCTD7113.360' "${base_url}PCTD7113.360"
echo '\nPCTD7113.ZIP'; curl -o 'PCTD7113.ZIP' "${base_url}PCTD7113.ZIP"
echo '\nPCTD7114.360'; curl -o 'PCTD7114.360' "${base_url}PCTD7114.360"
echo '\nPCTD7114.ZIP'; curl -o 'PCTD7114.ZIP' "${base_url}PCTD7114.ZIP"
echo '\npctd7101.txt'; curl -o 'pctd7101.txt' "${base_url}pctd7101.txt"
echo '\npctd7102.txt'; curl -o 'pctd7102.txt' "${base_url}pctd7102.txt"
echo '\npctd7103.txt'; curl -o 'pctd7103.txt' "${base_url}pctd7103.txt"
echo '\npctd7104.txt'; curl -o 'pctd7104.txt' "${base_url}pctd7104.txt"
echo '\npctd7105.txt'; curl -o 'pctd7105.txt' "${base_url}pctd7105.txt"
echo '\npctd7106.txt'; curl -o 'pctd7106.txt' "${base_url}pctd7106.txt"
echo '\npctd7107.txt'; curl -o 'pctd7107.txt' "${base_url}pctd7107.txt"
echo '\npctd7108.txt'; curl -o 'pctd7108.txt' "${base_url}pctd7108.txt"
echo '\npctd7109.txt'; curl -o 'pctd7109.txt' "${base_url}pctd7109.txt"
echo '\npctd7110.txt'; curl -o 'pctd7110.txt' "${base_url}pctd7110.txt"
echo '\npctd7111.txt'; curl -o 'pctd7111.txt' "${base_url}pctd7111.txt"
echo '\npctd7112.txt'; curl -o 'pctd7112.txt' "${base_url}pctd7112.txt"
echo '\npctd7113.txt'; curl -o 'pctd7113.txt' "${base_url}pctd7113.txt"
echo '\npctd7114.txt'; curl -o 'pctd7114.txt' "${base_url}pctd7114.txt"

cd ../..


# Norton Utilities 4.5

norton_utils="norton_utils"
norton_utils_ver="4.5"
base_url="http://ftp.oldskool.org/pub/misc/Software/Utils/Norton%20Utilities/NU45/"

mkdir -p "${norton_utils}/${norton_utils_ver}" & cd $_

put_section_header "${utils} - ${norton_utils} - ${norton_utils_ver}" "$base_url"

echo '\nNORTON1.ZIP'; curl -o 'NORTON1.ZIP' "${base_url}NORTON1.ZIP"
echo '\nNORTON2.ZIP'; curl -o 'NORTON2.ZIP' "${base_url}NORTON2.ZIP"
echo '\nNU452OF3.ZIP'; curl -o 'NU452OF3.ZIP' "${base_url}NU452OF3.ZIP"
echo '\nNU453OF3.ZIP'; curl -o 'NU453OF3.ZIP' "${base_url}NU453OF3.ZIP"

cd ..


# Norton Utilities 6.0

norton_utils_ver="6.0"
base_url="http://ftp.oldskool.org/pub/misc/Software/Utils/Norton%20Utilities/NU60/"

mkdir -p "${norton_utils}/${norton_utils_ver}" & cd $_

echo '\nNU601OF4.TXT'; curl -o 'NU601OF4.TXT' "${base_url}NU601OF4.TXT"
echo '\nNU601OF4.ZIP'; curl -o 'NU601OF4.ZIP' "${base_url}NU601OF4.ZIP"
echo '\nNU602OF4.TXT'; curl -o 'NU602OF4.TXT' "${base_url}NU602OF4.TXT"
echo '\nNU602OF4.ZIP'; curl -o 'NU602OF4.ZIP' "${base_url}NU602OF4.ZIP"
echo '\nNU603OF4.TXT'; curl -o 'NU603OF4.TXT' "${base_url}NU603OF4.TXT"
echo '\nNU603OF4.ZIP'; curl -o 'NU603OF4.ZIP' "${base_url}NU603OF4.ZIP"
echo '\nNU604OF4.TXT'; curl -o 'NU604OF4.TXT' "${base_url}NU604OF4.TXT"
echo '\nNU604OF4.ZIP'; curl -o 'NU604OF4.ZIP' "${base_url}NU604OF4.ZIP"

cd ..


# Norton Utilities 8.0

norton_utils_ver="8.0"
base_url="http://ftp.oldskool.org/pub/misc/Software/Utils/Norton%20Utilities/NU80/"

mkdir -p "${norton_utils}/${norton_utils_ver}" & cd $_

put_section_header "${utils} - ${norton_utils} - ${norton_utils_ver}" "$base_url"

echo '\nnu801of4.zip'; curl -o 'nu801of4.zip' "${base_url}nu801of4.zip"
echo '\nnu802of4.zip'; curl -o 'nu802of4.zip' "${base_url}nu802of4.zip"
echo '\nnu803of4.zip'; curl -o 'nu803of4.zip' "${base_url}nu803of4.zip"
echo '\nnu804of4.zip'; curl -o 'nu804of4.zip' "${base_url}nu804of4.zip"

cd ../..


# XTreeGold

xtreegold="xtreegold"
base_url="http://ftp.oldskool.org/pub/misc/Software/Utils/XTreeGold/"

mkdir "$xtreegold"

put_section_header "${utils} - ${xtreegold}" "$base_url"

echo '\nXTGOLD1.ZIP'; curl -o 'XTGOLD1.ZIP' "${base_url}XTGOLD1.ZIP"
echo '\nXTGOLD2.ZIP'; curl -o 'XTGOLD2.ZIP' "${base_url}XTGOLD2.ZIP"
echo '\nXTGOLD3.ZIP'; curl -o 'XTGOLD3.ZIP' "${base_url}XTGOLD3.ZIP"
echo '\nXTGOLD4.ZIP'; curl -o 'XTGOLD4.ZIP' "${base_url}XTGOLD4.ZIP"

cd ..


# Diagnostics

diagnostics="diagnostics"
base_url="http://ftp.oldskool.org/pub/misc/Software/Utils/diag/"

mkdir "$diagnostics"

put_section_header "${utils} - ${diagnostics}" "$base_url"

echo '\nLandmark Service Diagnostics 2.13.18 (1992) (5.25-360k) (3.5-720K).7z'; curl -o 'Landmark Service Diagnostics 2.13.18 (1992) (5.25-360k) (3.5-720K).7z' "${base_url}Landmark%20Service%20Diagnostics%202.13.18%20(1992)%20(5.25-360k)%20(3.5-720K).7z"
echo '\nRAMTEST3.ZIP'; curl -o 'RAMTEST3.ZIP' "${base_url}RAMTEST3.ZIP"

cd ..


# CheckIt

checkit="checkit"
base_url="http://ftp.oldskool.org/pub/misc/Software/Utils/diag/Checkit/"

mkdir "$checkit"

put_section_header "${utils} - ${checkit}" "$base_url"

echo '\nCHCKIT21.ZIP'; curl -o 'CHCKIT21.ZIP' "${base_url}CHCKIT21.ZIP"
echo '\nCheckIt 1.10A (5.25-360k).7z'; curl -o 'CheckIt 1.10A (5.25-360k).7z' "${base_url}CheckIt%201.10A%20(5.25-360k).7z"
echo '\nCheckIt 2.1 (5.25-360k).7z'; curl -o 'CheckIt 2.1 (5.25-360k).7z' "${base_url}CheckIt%202.1%20(5.25-360k).7z"
echo '\nCheckIt 3.0 (1991) (5.25-360k).7z'; curl -o 'CheckIt 3.0 (1991) (5.25-360k).7z' "${base_url}CheckIt%203.0%20(1991)%20(5.25-360k).7z"
echo '\nCheckIt Pro v1.11 (3.5-1.44mb).7z'; curl -o 'CheckIt Pro v1.11 (3.5-1.44mb).7z' "${base_url}CheckIt%20Pro%20v1.11%20(3.5-1.44mb).7z"
echo '\nTouchstone demo programs.zip'; curl -o 'Touchstone demo programs.zip' "${base_url}Touchstone%20demo%20programs.zip"
echo '\ncheckit30.zip'; curl -o 'checkit30.zip' "${base_url}checkit30.zip"

cd ..


# QAPlus

qaplus="qaplus"
base_url="http://ftp.oldskool.org/pub/misc/Software/Utils/diag/QA%20Plus/"

mkdir "$qaplus"

put_section_header "${utils} - ${qaplus}" "$base_url"

echo '\nqap_v312.raw'; curl -o 'qap_v312.raw' "${base_url}qap_v312.raw"
echo '\nqap_v312.txt'; curl -o 'qap_v312.txt' "${base_url}qap_v312.txt"
echo '\nqap_v312.zip'; curl -o 'qap_v312.zip' "${base_url}qap_v312.zip"

cd ../..