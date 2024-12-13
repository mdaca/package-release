 #!/bin/bash  
              if [[ "$1" == "$2" ]]; then
                  echo "They are equal 1"
                  compare_result=2
                  return $compare_result
              fi

              # Convert version strings to arrays
              IFS='.' read -r -a ver1 <<< "$1"
              IFS='.' read -r -a ver2 <<< "$2"

              # Compare each part of the version
              for (( i=0; i<${#ver1[@]}; i++ )); do
                  v1=${ver1[i]:-0}
                  v2=${ver2[i]:-0}

                  if (( 10#$v1 > 10#$v2 )); then
                  compare_result=0
                     return $compare_result
                  elif (( 10#$v1 < 10#$v2 )); then
                     compare_result=1
                      return $compare_result
                  fi
              done
              echo "They are equal 2"
             compare_result=2
             return $compare_result  # They are equal
          
