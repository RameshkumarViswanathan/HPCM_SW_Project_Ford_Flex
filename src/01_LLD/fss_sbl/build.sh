#!/bin/sh
export COMPILER=v4.9.4.1

#-------  InternalServer-P --------
export PATH=$PATH:/home/user/ToolChain/gnutri_v4.9.4.1-11fcedf-lin64/bin
export TRICORE_GCC=/home/user/ToolChain/gnutri_v4.9.4.1-11fcedf-lin64
export RLM_LICENSE=INBASDPC15914@5053

#-------  InternalServer-R --------
# export PATH=$PATH:/home/user123/share_folder/HighTechCompiler/gnutri_v4.9.4.1-11fcedf-lin64/bin
# export TRICORE_GCC=/home/user123/share_folder/HighTechCompiler/gnutri_v4.9.4.1-11fcedf-lin64
# #export PERL5LIB=$(PWD)/other_files/product_config
# export RLM_LICENSE=INBASDPC15842@5053

##-------  CloudServer  --------
#export PATH=$PATH:/home/clouduser/HighTecCompiler/bin
#export TRICORE_GCC=/home/clouduser/HighTecCompiler
##export PERL5LIB=$(PWD)/other_files/product_config
#export RLM_LICENSE=10.179.21.195@5053

START=$(date +%s)
if make "$@"; then
  echo BUILD SUCCESSFUL
  END=$(date +%s)
  DIFF=$(( $END - $START ))
  echo "It took $DIFF seconds"
  exit 0
else
  echo "BUILD FAILED!" 1>&2
  exit 1
fi
