#!/bin/bash/template
#
#
trap 'main_fn' SIGINT # If interrupt then goes to main_fn.
#
set -e # Exits if ever any non 0 exits.
#
"$(dirname "$(readlink -f "$0")")" # Script directory.
#
# Template for tab completion:
# Read_**
  re_** () {
      tmpdir**=$(date "+/tmp/%Y%m%d%H%M%S$$")
      mkdir "${tmpdir**}"
      for ptag** in "${predefinedtags**[@]}" ; do
        touch "${tmpdir**}"/"${ptag**}"
      done
      readetags**=$(cd "${tmpdir**}" || printf "internal error" ; read -re usertags** ; printf "%s" "${usertags**}")
      rm -rf "${tmpdir**}" 2>/dev/null >/dev/null
      eval "${1}"=\"\$\{readetags**\}\"
    }
#
# Template for read action and print out array with description:
    tput setaf 3; clear # Sets the colour of the output and then  
        predefinedtags**=(Main thing1 thing2 thing3) # All items including main option.
        predefinedtags****=(thing1 thing2 thing3) # All items.
        predefinedtags******=("desceg1" "desceg2" "desceg3") # All descriptons.       
            printf "\n\n.........Title.........\n\nMain.. \n\n" # Title print.
                for ((i=0; i< "${#predefinedtags****[@]}"; i++)) do 
                  printf "%s\t\t%s\n" "${predefinedtags****[$i]}" "${predefinedtags******[$i]}"
                done # For loop linking titles to descriptions.
        printf '\n'; reade** tags** # New line and read tags command.
        echo -e "$tags4 selected \n" # Prints selecion and a new line.
#
# Yes or no if statement. (Defaults yes on enter)
  read -r -p "Yes or NO, [Y/n]? " xx # Reads the 
  if [[ "$xx" == "y" || "$xx" == "Y" || "$xx" == "" ]]; then
    $xxx
  else
    $xxx
  fi
#
# If string = this then do that.
  if [ "$xx" == "xx" ]; then
    $xxx
  elif [ "$xx" == "xxx" ]; then
    $xxx
  fi
#
#
