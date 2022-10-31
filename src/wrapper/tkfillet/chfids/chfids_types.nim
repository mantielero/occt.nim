import ../../tkbrep/topods/topods_types
import ../../tkg3d/adaptor3d/adaptor3d_types
import ../../tkbrep/toptools/toptools_types
import ../../tkernel/ncollection/ncollection_types
import ../../tkernel/standard/standard_types
type
  ChFiDS_ChamfMethod* {.size: sizeof(cint), importcpp: "ChFiDS_ChamfMethod",
                       header: "ChFiDS_ChamfMethod.hxx".} = enum
    ChFiDS_Sym, ChFiDS_TwoDist, ChFiDS_DistAngle

  ChFiDS_ChamfMode* {.size: sizeof(cint), importcpp: "ChFiDS_ChamfMode",
                     header: "ChFiDS_ChamfMode.hxx".} = enum 
    ChFiDS_ClassicChamfer,    
    ChFiDS_ConstThroatChamfer, 
    ChFiDS_ConstThroatWithPenetrationChamfer

  ChFiDS_ErrorStatus* {.size: sizeof(cint), importcpp: "ChFiDS_ErrorStatus",
                       header: "ChFiDS_ErrorStatus.hxx".} = enum
    ChFiDS_Ok, ChFiDS_Error, ChFiDS_WalkingFailure, ChFiDS_StartsolFailure,
    ChFiDS_TwistedSurface

  ChFiDS_ListIteratorOfListOfHElSpine* {.importcpp:"NCollection_List<Handle(ChFiDS_HElSpine)>::Iterator", header:"ChFiDS_ListOfHElSpine.hxx",bycopy.} = object

  ChFiDS_ListIteratorOfListOfStripe* {.importcpp:"NCollection_List<Handle(ChFiDS_Stripe)>::Iterator", header:"ChFiDS_ListOfStripe.hxx",bycopy.}  = object

  ChFiDS_ListIteratorOfRegularities* {.importcpp:"NCollection_List<ChFiDS_Regul>::Iterator", header:"ChFiDS_Regularities.hxx",bycopy.}  = object

  ChFiDS_State* {.size: sizeof(cint), importcpp: "ChFiDS_State",
                 header: "ChFiDS_State.hxx".} = enum
    ChFiDS_OnSame, ChFiDS_OnDiff, ChFiDS_AllSame, ChFiDS_BreakPoint,
    ChFiDS_FreeBoundary, ChFiDS_Closed, ChFiDS_Tangent

  ChFiDS_TypeOfConcavity* {.size: sizeof(cint),
                           importcpp: "ChFiDS_TypeOfConcavity",
                           header: "ChFiDS_TypeOfConcavity.hxx".} = enum
    ChFiDS_Concave, ChFiDS_Convex, ChFiDS_Tangential, ChFiDS_FreeBound, ChFiDS_Other

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

  ChFiDS_ListOfHElSpine* = NCollectionList[Handle[ChFiDS_HElSpine]]

  ChFiDS_ListOfStripe* = NCollectionList[Handle[ChFiDS_Stripe]]

  ChFiDS_IndexedDataMapOfVertexListOfStripe* = NCollectionIndexedDataMap[
      TopoDS_Vertex, ChFiDS_ListOfStripe, TopToolsShapeMapHasher]

  ChFiDS_Regularities* = NCollectionList[ChFiDS_Regul]

  ChFiDS_SecArray1* = NCollectionArray1[ChFiDS_CircSection]

  ChFiDS_SequenceOfSpine* = NCollectionSequence[Handle[ChFiDS_Spine]]

  ChFiDS_SequenceOfSurfData* = NCollectionSequence[Handle[ChFiDS_SurfData]]

  ChFiDS_StripeArray1* = NCollectionArray1[Handle[ChFiDS_Stripe]]

  ChFiDS_ElSpine* {.importcpp: "ChFiDS_ElSpine", header: "ChFiDS_ElSpine.hxx", bycopy.} = object of Adaptor3dCurve

  ChFiDS_HData* {.importcpp: "ChFiDS_HData", header: "ChFiDS_HData.hxx", bycopy.} = object of ChFiDS_SequenceOfSurfData

  ChFiDS_HElSpine* {.importcpp: "ChFiDS_HElSpine", header: "ChFiDS_HElSpine.hxx",
                    bycopy.} = object of Adaptor3dHCurve 

  HandleChFiDS_HElSpine* = Handle[ChFiDS_HElSpine]

  ChFiDS_SecHArray1* {.importcpp: "ChFiDS_SecHArray1",
                      header: "ChFiDS_SecHArray1.hxx", bycopy.} = object of ChFiDS_SecArray1

  ChFiDS_Spine* {.importcpp: "ChFiDS_Spine", header: "ChFiDS_Spine.hxx", bycopy.} = object of StandardTransient

  ChFiDS_FilSpine* {.importcpp: "ChFiDS_FilSpine", header: "ChFiDS_FilSpine.hxx",
                    bycopy.} = object of ChFiDS_Spine

  HandleChFiDS_FilSpine* = Handle[ChFiDS_FilSpine]

  ChFiDS_ChamfSpine* {.importcpp: "ChFiDS_ChamfSpine",
                      header: "ChFiDS_ChamfSpine.hxx", bycopy.} = object of ChFiDS_Spine

  HandleChFiDS_ChamfSpine* = Handle[ChFiDS_ChamfSpine]

  HandleChFiDS_Spine* = Handle[ChFiDS_Spine]

  ChFiDS_Stripe* {.importcpp: "ChFiDS_Stripe", header: "ChFiDS_Stripe.hxx", bycopy.} = object of StandardTransient

  HandleChFiDS_Stripe* = Handle[ChFiDS_Stripe]

  ChFiDS_Stripe* {.importcpp: "ChFiDS_Stripe", header: "ChFiDS_Stripe.hxx", bycopy.} = object of StandardTransient
  ChFiDS_SurfData* {.importcpp: "ChFiDS_SurfData", header: "ChFiDS_SurfData.hxx",
                    bycopy.} = object of StandardTransient

  HandleChFiDS_SurfData* = Handle[ChFiDS_SurfData]

