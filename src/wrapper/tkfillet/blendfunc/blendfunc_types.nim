type
  BlendFunc* {.importcpp: "BlendFunc", header: "BlendFunc.hxx", bycopy.} = object
type
  BlendFuncChamfer* {.importcpp: "BlendFunc_Chamfer",
                     header: "BlendFunc_Chamfer.hxx", bycopy.} = object of BlendFuncGenChamfer
type
  BlendFuncChamfInv* {.importcpp: "BlendFunc_ChamfInv",
                      header: "BlendFunc_ChamfInv.hxx", bycopy.} = object of BlendFuncGenChamfInv
type
  BlendFuncChAsym* {.importcpp: "BlendFunc_ChAsym", header: "BlendFunc_ChAsym.hxx",
                    bycopy.} = object of BlendFunction
type
  BlendFuncChAsymInv* {.importcpp: "BlendFunc_ChAsymInv",
                       header: "BlendFunc_ChAsymInv.hxx", bycopy.} = object of BlendFuncInv
type
  BlendFuncConstRad* {.importcpp: "BlendFunc_ConstRad",
                      header: "BlendFunc_ConstRad.hxx", bycopy.} = object of BlendFunction
type
  BlendFuncConstRadInv* {.importcpp: "BlendFunc_ConstRadInv",
                         header: "BlendFunc_ConstRadInv.hxx", bycopy.} = object of BlendFuncInv
type
  BlendFuncConstThroat* {.importcpp: "BlendFunc_ConstThroat",
                         header: "BlendFunc_ConstThroat.hxx", bycopy.} = object of BlendFuncGenChamfer
type
  BlendFuncConstThroatInv* {.importcpp: "BlendFunc_ConstThroatInv",
                            header: "BlendFunc_ConstThroatInv.hxx", bycopy.} = object of BlendFuncGenChamfInv
type
  BlendFuncConstThroatWithPenetration* {.importcpp: "BlendFunc_ConstThroatWithPenetration", header: "BlendFunc_ConstThroatWithPenetration.hxx",
                                        bycopy.} = object of BlendFuncConstThroat
type
  BlendFuncConstThroatWithPenetrationInv* {.
      importcpp: "BlendFunc_ConstThroatWithPenetrationInv",
      header: "BlendFunc_ConstThroatWithPenetrationInv.hxx", bycopy.} = object of BlendFuncConstThroatInv
type
  BlendFuncCorde* {.importcpp: "BlendFunc_Corde", header: "BlendFunc_Corde.hxx",
                   bycopy.} = object
type
  BlendFuncCSCircular* {.importcpp: "BlendFunc_CSCircular",
                        header: "BlendFunc_CSCircular.hxx", bycopy.} = object of BlendCSFunction ##
                                                                                          ## !
                                                                                          ## Creates
                                                                                          ## a
                                                                                          ## function
                                                                                          ## for
                                                                                          ## a
                                                                                          ## circular
                                                                                          ## blending
                                                                                          ## between
                                                                                          ##
                                                                                          ## !
                                                                                          ## a
                                                                                          ## curve
                                                                                          ## <C>
                                                                                          ## and
                                                                                          ## a
                                                                                          ## surface
                                                                                          ## <S>.
                                                                                          ## The
                                                                                          ## direction
                                                                                          ## of
                                                                                          ##
                                                                                          ## !
                                                                                          ## the
                                                                                          ## planes
                                                                                          ## are
                                                                                          ## given
                                                                                          ## by
                                                                                          ## <CGuide>.
                                                                                          ## The
                                                                                          ## position
                                                                                          ## of
                                                                                          ##
                                                                                          ## !
                                                                                          ## the
                                                                                          ## plane
                                                                                          ## is
                                                                                          ## determined
                                                                                          ## on
                                                                                          ## the
                                                                                          ## curve
                                                                                          ## <C>.
                                                                                          ## <L>
                                                                                          ##
                                                                                          ## !
                                                                                          ## defines
                                                                                          ## the
                                                                                          ## change
                                                                                          ## of
                                                                                          ## parameter
                                                                                          ## between
                                                                                          ## <C>
                                                                                          ## and
                                                                                          ##
                                                                                          ## !
                                                                                          ## <CGuide>.
                                                                                          ## So,
                                                                                          ## the
                                                                                          ## planes
                                                                                          ## are
                                                                                          ## defined
                                                                                          ## as
                                                                                          ## described
                                                                                          ##
                                                                                          ## !
                                                                                          ## below
                                                                                          ## :
                                                                                          ##
                                                                                          ## !
                                                                                          ## t
                                                                                          ## is
                                                                                          ## the
                                                                                          ## current
                                                                                          ## parameter
                                                                                          ## on
                                                                                          ## the
                                                                                          ## guide
                                                                                          ## line.
                                                                                          ##
                                                                                          ## !
                                                                                          ## Pguide
                                                                                          ## =
                                                                                          ## C(L(t));
                                                                                          ## Nguide
                                                                                          ## =
                                                                                          ## CGuide'(t)/||CGuide'(t)||
type
  BlendFuncCSConstRad* {.importcpp: "BlendFunc_CSConstRad",
                        header: "BlendFunc_CSConstRad.hxx", bycopy.} = object of BlendCSFunction
type
  BlendFuncEvolRad* {.importcpp: "BlendFunc_EvolRad",
                     header: "BlendFunc_EvolRad.hxx", bycopy.} = object of BlendFunction
type
  BlendFuncEvolRadInv* {.importcpp: "BlendFunc_EvolRadInv",
                        header: "BlendFunc_EvolRadInv.hxx", bycopy.} = object of BlendFuncInv
type
  BlendFuncGenChamfer* {.importcpp: "BlendFunc_GenChamfer",
                        header: "BlendFunc_GenChamfer.hxx", bycopy.} = object of BlendFunction
type
  BlendFuncGenChamfInv* {.importcpp: "BlendFunc_GenChamfInv",
                         header: "BlendFunc_GenChamfInv.hxx", bycopy.} = object of BlendFuncInv
type
  BlendFuncRuled* {.importcpp: "BlendFunc_Ruled", header: "BlendFunc_Ruled.hxx",
                   bycopy.} = object of BlendFunction
type
  BlendFuncRuledInv* {.importcpp: "BlendFunc_RuledInv",
                      header: "BlendFunc_RuledInv.hxx", bycopy.} = object of BlendFuncInv
type
  BlendFuncTensor* {.importcpp: "BlendFunc_Tensor", header: "BlendFunc_Tensor.hxx",
                    bycopy.} = object
