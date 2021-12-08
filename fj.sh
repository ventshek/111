#!/bin/bash
#
trap 'main_fn' SIGINT # If interrupt then goes to main_fn.
#
set -e # Exits if ever any non 0 exits.
#
dirr="$(dirname "$(readlink -f "$0")")" # Script directory.
#
clear # Clears the screen.
# Read_01
reade () {
      tmpdir1=$(date "+/tmp/%Y%m%d%H%M%S$$")
      mkdir "${tmpdir1}"
      for ptag1 in "${predefinedtags1[@]}" ; do
        touch "${tmpdir1}"/"${ptag1}"
      done
      readetags1=$(cd "${tmpdir1}" || printf "internal error" ; read -re usertags1 ; printf "%s" "${usertags1}")
      rm -rf "${tmpdir1}" 2>/dev/null >/dev/null
      eval "${1}"=\"\$\{readetags1\}\"
}
#
up_fn () {
clear
pacman --noconfirm -Syyu &> /dev/nul
pacman --noconfirm -Scc &> /dev/nul
printf "Update completed \nDisk useage:\n"
df -h
}
#
# Main app fn.
main_fn () {
    tput setaf 3; clear # Sets the colour of the output.
        predefinedtags1=(Main update 002 003) # All items including main option.
        predefinedtags11=(Update 002 003) # All items.
        predefinedtags111=("Full system update" "desceg2" "desceg3") # All descriptons.
	printf "\n\n\t.........Title.........\n\nMain..\n\n" # Title print.
                for ((i=0; i< "${#predefinedtags11[@]}"; i++)) do
                  printf "%s\t\t%s\n" "${predefinedtags11[$i]}" "${predefinedtags111[$i]}"
            done # For loop linking titles to descriptions.
        printf '\n'; reade tags # New line and read tags command.
        clear
	echo -e "$tags selected \n" # Prints selecion and a new line.
	if [ "$tags" == "update" ]; then
		up_fn; fi
	if [ "$tags" == "002" ]; then
		echo "002"; fi
}
main_fn
#
exit 0
