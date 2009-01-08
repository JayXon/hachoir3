#Source this file to use hachoir unpacked right from svn

#Why not erase PYTHONPATH ? Conservative option chosen.
#PYTHONPATH=""

sub_projects="\
hachoir-core \
hachoir-parser \
hachoir-editor \
hachoir-metadata \
hachoir-regex \
hachoir-subfile \
"

H=$(pwd)

for dir in $sub_projects; do
    echo "$H/$dir"
  if [ "x$PYTHONPATH" = "x" ]; then
    PYTHONPATH=$H/$dir
  else
    PYTHONPATH=$PYTHONPATH:$H/$dir
  fi
done

export PYTHONPATH