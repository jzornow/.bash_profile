CURRENT="$(dirname "${BASH_SOURCE[0]}")"

for f in $CURRENT/.bash_profile_components/*; do 
  source $f; 
done
