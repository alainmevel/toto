# $Id: options.mk 502 2019-04-05 13:17:14Z EM7 $
#options de compilation et d'edition de lien :
_CC_OPTS=-DSY_MSW -DWIN32 -DGCC -m32
_CPP_OPTS=$(_CINCL)

_LD_LIBS=-Xlinker -no-whole-archive -lkernel32
_LD_OPTS=-Xlinker -whole-archive

#edition de liens :
_LD1=gcc -o $@ $(_LD_OPTS)
_LD2=$(_LD_LIBS)
#edition de liens intermediaire :
_LDI1=ar -ruv $@
_LDI2=
_AR=ar
#compilation :
_CC1=cd $(@D);gcc -c -o $@ -I.. $(_CPP_OPTS) $(_CC_OPTS)
_CC2=

