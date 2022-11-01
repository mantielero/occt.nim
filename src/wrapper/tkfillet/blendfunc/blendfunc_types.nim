import ../blend/blend_types
type
  BlendFuncSectionShape* {.size: sizeof(cint), importcpp: "BlendFunc_SectionShape",
                          header: "BlendFunc_SectionShape.hxx".} = enum
    BlendFuncRational, BlendFuncQuasiAngular, BlendFuncPolynomial, BlendFuncLinear

  BlendFunc* {.importcpp: "BlendFunc", header: "BlendFunc.hxx", bycopy.} = object

  BlendFuncCorde* {.importcpp: "BlendFunc_Corde", header: "BlendFunc_Corde.hxx",
                   bycopy.} = object

  BlendFuncTensor* {.importcpp: "BlendFunc_Tensor", header: "BlendFunc_Tensor.hxx",
                    bycopy.} = object

  BlendFuncChAsym* {.importcpp: "BlendFunc_ChAsym", header: "BlendFunc_ChAsym.hxx",
                    bycopy.} = object of BlendFunction

  BlendFuncChAsymInv* {.importcpp: "BlendFunc_ChAsymInv",
                       header: "BlendFunc_ChAsymInv.hxx", bycopy.} = object of BlendFuncInv

  BlendFuncConstRad* {.importcpp: "BlendFunc_ConstRad",
                      header: "BlendFunc_ConstRad.hxx", bycopy.} = object of BlendFunction

  BlendFuncConstRadInv* {.importcpp: "BlendFunc_ConstRadInv",
                         header: "BlendFunc_ConstRadInv.hxx", bycopy.} = object of BlendFuncInv

  BlendFuncCSCircular* {.importcpp: "BlendFunc_CSCircular",
                        header: "BlendFunc_CSCircular.hxx", bycopy.} = object of BlendCSFunction 

  BlendFuncCSConstRad* {.importcpp: "BlendFunc_CSConstRad",
                        header: "BlendFunc_CSConstRad.hxx", bycopy.} = object of BlendCSFunction

  BlendFuncEvolRad* {.importcpp: "BlendFunc_EvolRad",
                     header: "BlendFunc_EvolRad.hxx", bycopy.} = object of BlendFunction

  BlendFuncEvolRadInv* {.importcpp: "BlendFunc_EvolRadInv",
                        header: "BlendFunc_EvolRadInv.hxx", bycopy.} = object of BlendFuncInv

  BlendFuncGenChamfer* {.importcpp: "BlendFunc_GenChamfer",
                        header: "BlendFunc_GenChamfer.hxx", bycopy.} = object of BlendFunction

  BlendFuncConstThroat* {.importcpp: "BlendFunc_ConstThroat",
                         header: "BlendFunc_ConstThroat.hxx", bycopy.} = object of BlendFuncGenChamfer

  BlendFuncConstThroatWithPenetration* {.importcpp: "BlendFunc_ConstThroatWithPenetration", header: "BlendFunc_ConstThroatWithPenetration.hxx",
                                        bycopy.} = object of BlendFuncConstThroat

  BlendFuncChamfer* {.importcpp: "BlendFunc_Chamfer",
                     header: "BlendFunc_Chamfer.hxx", bycopy.} = object of BlendFuncGenChamfer

  BlendFuncGenChamfInv* {.importcpp: "BlendFunc_GenChamfInv",
                         header: "BlendFunc_GenChamfInv.hxx", bycopy.} = object of BlendFuncInv

  BlendFuncConstThroatInv* {.importcpp: "BlendFunc_ConstThroatInv",
                            header: "BlendFunc_ConstThroatInv.hxx", bycopy.} = object of BlendFuncGenChamfInv

  BlendFuncConstThroatWithPenetrationInv* {.
      importcpp: "BlendFunc_ConstThroatWithPenetrationInv",
      header: "BlendFunc_ConstThroatWithPenetrationInv.hxx", bycopy.} = object of BlendFuncConstThroatInv

  BlendFuncChamfInv* {.importcpp: "BlendFunc_ChamfInv",
                      header: "BlendFunc_ChamfInv.hxx", bycopy.} = object of BlendFuncGenChamfInv

  BlendFuncRuled* {.importcpp: "BlendFunc_Ruled", header: "BlendFunc_Ruled.hxx",
                   bycopy.} = object of BlendFunction
                   #bycopy.} = object of BlendFunction

                   #bycopy.} = object of BlendFunction
  BlendFuncRuledInv* {.importcpp: "BlendFunc_RuledInv",
                      header: "BlendFunc_RuledInv.hxx", bycopy.} = object of BlendFuncInv
                      #header: "BlendFunc_RuledInv.hxx", bycopy.} = object of BlendFuncInv

