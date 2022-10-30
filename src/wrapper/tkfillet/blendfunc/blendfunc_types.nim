# PROVIDES: BlendFuncSectionShape BlendFunc BlendFuncCorde BlendFuncTensor
# DEPENDS: BlendFuncGenChamfer BlendFuncGenChamfInv BlendFunction BlendFuncInv BlendFunction BlendFuncInv BlendFuncGenChamfer BlendFuncGenChamfInv BlendFuncConstThroat BlendFuncConstThroatInv BlendCSFunction BlendCSFunction BlendFunction BlendFuncInv BlendFunction BlendFuncInv BlendFunction BlendFuncInv

import tkfillet/blend/blend_types
import tkfillet/blendfunc/blendfunc_types
type
  BlendFuncSectionShape* {.size: sizeof(cint), importcpp: "BlendFunc_SectionShape",
                          header: "BlendFunc_SectionShape.hxx".} = enum
    BlendFuncRational, BlendFuncQuasiAngular, BlendFuncPolynomial, BlendFuncLinear

  BlendFunc* {.importcpp: "BlendFunc", header: "BlendFunc.hxx", bycopy.} = object

  BlendFuncCorde* {.importcpp: "BlendFunc_Corde", header: "BlendFunc_Corde.hxx",
                   bycopy.} = object

  BlendFuncTensor* {.importcpp: "BlendFunc_Tensor", header: "BlendFunc_Tensor.hxx",
                    bycopy.} = object

  BlendFuncChamfer* {.importcpp: "BlendFunc_Chamfer",
                     header: "BlendFunc_Chamfer.hxx", bycopy.} = object of BlendFuncGenChamfer

  BlendFuncChamfInv* {.importcpp: "BlendFunc_ChamfInv",
                      header: "BlendFunc_ChamfInv.hxx", bycopy.} = object of BlendFuncGenChamfInv

  BlendFuncChAsym* {.importcpp: "BlendFunc_ChAsym", header: "BlendFunc_ChAsym.hxx",
                    bycopy.} = object of BlendFunction

  BlendFuncChAsymInv* {.importcpp: "BlendFunc_ChAsymInv",
                       header: "BlendFunc_ChAsymInv.hxx", bycopy.} = object of BlendFuncInv

  BlendFuncConstRad* {.importcpp: "BlendFunc_ConstRad",
                      header: "BlendFunc_ConstRad.hxx", bycopy.} = object of BlendFunction

  BlendFuncConstRadInv* {.importcpp: "BlendFunc_ConstRadInv",
                         header: "BlendFunc_ConstRadInv.hxx", bycopy.} = object of BlendFuncInv

  BlendFuncConstThroat* {.importcpp: "BlendFunc_ConstThroat",
                         header: "BlendFunc_ConstThroat.hxx", bycopy.} = object of BlendFuncGenChamfer

  BlendFuncConstThroatInv* {.importcpp: "BlendFunc_ConstThroatInv",
                            header: "BlendFunc_ConstThroatInv.hxx", bycopy.} = object of BlendFuncGenChamfInv

  BlendFuncConstThroatWithPenetration* {.importcpp: "BlendFunc_ConstThroatWithPenetration", header: "BlendFunc_ConstThroatWithPenetration.hxx",
                                        bycopy.} = object of BlendFuncConstThroat

  BlendFuncConstThroatWithPenetrationInv* {.
      importcpp: "BlendFunc_ConstThroatWithPenetrationInv",
      header: "BlendFunc_ConstThroatWithPenetrationInv.hxx", bycopy.} = object of BlendFuncConstThroatInv

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

  BlendFuncGenChamfInv* {.importcpp: "BlendFunc_GenChamfInv",
                         header: "BlendFunc_GenChamfInv.hxx", bycopy.} = object of BlendFuncInv

  BlendFuncRuled* {.importcpp: "BlendFunc_Ruled", header: "BlendFunc_Ruled.hxx",
                   bycopy.} = object of BlendFunction

                   bycopy.} = object of BlendFunction
  BlendFuncRuledInv* {.importcpp: "BlendFunc_RuledInv",
                      header: "BlendFunc_RuledInv.hxx", bycopy.} = object of BlendFuncInv
                      header: "BlendFunc_RuledInv.hxx", bycopy.} = object of BlendFuncInv


