# PROVIDES: ChFiDS_CircSection ChFiDS_CommonPoint ChFiDS_FaceInterference ChFiDS_Map ChFiDS_Regul ChFiDS_StripeMap
# DEPENDS:  Handle[ChFiDS_ChamfSpine]  Handle[ChFiDS_FilSpine]  Handle[ChFiDS_Spine]  Handle[ChFiDS_Stripe]  Handle[ChFiDS_SurfData] ChFiDS_Spine Adaptor3dCurve ChFiDS_Spine ChFiDS_SequenceOfSurfData  Handle[ChFiDS_HElSpine] Adaptor3dHCurve ChFiDS_SecArray1 StandardTransient StandardTransient StandardTransient

import tkfillet/chfids/chfids_types
import tkg3d/adaptor3d/adaptor3d_types
import tkernel/standard/standard_types
type
  ChFiDS_CircSection* {.importcpp: "ChFiDS_CircSection",
                       header: "ChFiDS_CircSection.hxx", bycopy.} = object

  ChFiDS_CommonPoint* {.importcpp: "ChFiDS_CommonPoint",
                       header: "ChFiDS_CommonPoint.hxx", bycopy.} = object 
                                                                      

  ChFiDS_FaceInterference* {.importcpp: "ChFiDS_FaceInterference",
                            header: "ChFiDS_FaceInterference.hxx", bycopy.} = object

  ChFiDS_Map* {.importcpp: "ChFiDS_Map", header: "ChFiDS_Map.hxx", bycopy.} = object 
                                                                             
                                                                             

  ChFiDS_Regul* {.importcpp: "ChFiDS_Regul", header: "ChFiDS_Regul.hxx", bycopy.} = object

  ChFiDS_StripeMap* {.importcpp: "ChFiDS_StripeMap",
                     header: "ChFiDS_StripeMap.hxx", bycopy.} = object

  HandleChFiDS_ChamfSpine* = Handle[ChFiDS_ChamfSpine]





  HandleChFiDS_FilSpine* = Handle[ChFiDS_FilSpine]





  HandleChFiDS_Spine* = Handle[ChFiDS_Spine]


























  HandleChFiDS_Stripe* = Handle[ChFiDS_Stripe]




  HandleChFiDS_SurfData* = Handle[ChFiDS_SurfData]





  ChFiDS_ChamfSpine* {.importcpp: "ChFiDS_ChamfSpine",
                      header: "ChFiDS_ChamfSpine.hxx", bycopy.} = object of ChFiDS_Spine
    



  ChFiDS_ElSpine* {.importcpp: "ChFiDS_ElSpine", header: "ChFiDS_ElSpine.hxx", bycopy.} = object of Adaptor3dCurve



  ChFiDS_FilSpine* {.importcpp: "ChFiDS_FilSpine", header: "ChFiDS_FilSpine.hxx",
                    bycopy.} = object of ChFiDS_Spine



  ChFiDS_HData* {.importcpp: "ChFiDS_HData", header: "ChFiDS_HData.hxx", bycopy.} = object of ChFiDS_SequenceOfSurfData



  HandleChFiDS_HElSpine* = Handle[ChFiDS_HElSpine]


  ChFiDS_HElSpine* {.importcpp: "ChFiDS_HElSpine", header: "ChFiDS_HElSpine.hxx",
                    bycopy.} = object of Adaptor3dHCurve 



  ChFiDS_SecHArray1* {.importcpp: "ChFiDS_SecHArray1",
                      header: "ChFiDS_SecHArray1.hxx", bycopy.} = object of ChFiDS_SecArray1



  ChFiDS_Spine* {.importcpp: "ChFiDS_Spine", header: "ChFiDS_Spine.hxx", bycopy.} = object of StandardTransient



  ChFiDS_Stripe* {.importcpp: "ChFiDS_Stripe", header: "ChFiDS_Stripe.hxx", bycopy.} = object of StandardTransient





  ChFiDS_SurfData* {.importcpp: "ChFiDS_SurfData", header: "ChFiDS_SurfData.hxx",
                    bycopy.} = object of StandardTransient






