# PROVIDES: HandleChFiDS_ChamfSpine ChFiDS_CircSection ChFiDS_CommonPoint ChFiDS_FaceInterference HandleChFiDS_FilSpine ChFiDS_Map ChFiDS_Regul HandleChFiDS_Spine HandleChFiDS_Stripe ChFiDS_StripeMap HandleChFiDS_SurfData
# DEPENDS: ChFiDS_Spine Adaptor3dCurve ChFiDS_Spine ChFiDS_SequenceOfSurfData Adaptor3dHCurve ChFiDS_SecArray1 StandardTransient StandardTransient StandardTransient

type
  HandleChFiDS_ChamfSpine* = Handle[ChFiDS_ChamfSpine]
## ! Provides  data specific to chamfers
## ! distances on  each  of faces.

type
  ChFiDS_CircSection* {.importcpp: "ChFiDS_CircSection",
                       header: "ChFiDS_CircSection.hxx", bycopy.} = object

type
  ChFiDS_CommonPoint* {.importcpp: "ChFiDS_CommonPoint",
                       header: "ChFiDS_CommonPoint.hxx", bycopy.} = object ## ! Empty
                                                                      ## constructor.

type
  ChFiDS_FaceInterference* {.importcpp: "ChFiDS_FaceInterference",
                            header: "ChFiDS_FaceInterference.hxx", bycopy.} = object

type
  HandleChFiDS_FilSpine* = Handle[ChFiDS_FilSpine]
## ! Provides  data specific to  the fillets -
## ! vector or rule  of evolution (C2).

type
  ChFiDS_Map* {.importcpp: "ChFiDS_Map", header: "ChFiDS_Map.hxx", bycopy.} = object ## !
                                                                             ## Create an
                                                                             ## empty Map

type
  ChFiDS_Regul* {.importcpp: "ChFiDS_Regul", header: "ChFiDS_Regul.hxx", bycopy.} = object

type
  HandleChFiDS_Spine* = Handle[ChFiDS_Spine]
## ! Contains information necessary for construction of
## ! a 3D fillet or chamfer:
## !
## ! - guideline composed of edges of the solid, tangents
## ! between them, and borders by faces tangents
## ! between them.
## !
## ! Tools for construction of the Sp
## ! by propagation from an edge of solid
## ! are provided in the Builder of Fil3d.
## !
## ! The Spine contains among others the
## ! information about the nature of extremities
## ! of the fillet ( on free border , on section or closed ).
## !
## ! IMPORTANT NOTE  :    the guideline
## ! represented in this way is not C2, although the path
## ! claims it. Several palliative workarounds
## ! (see the methods at the end) are planned,
## ! but they are not enough. It is necessary to change
## ! the approach and double the Spine of line C2 with
## ! the known consequences for management of
## ! interactions between KPart Blend in Fil3d.

type
  HandleChFiDS_Stripe* = Handle[ChFiDS_Stripe]
## ! Data characterising a band of fillet.

type
  ChFiDS_StripeMap* {.importcpp: "ChFiDS_StripeMap",
                     header: "ChFiDS_StripeMap.hxx", bycopy.} = object

type
  HandleChFiDS_SurfData* = Handle[ChFiDS_SurfData]
## ! data structure for all information related to  the
## ! fillet and to 2 faces vis a vis

type
  ChFiDS_ChamfSpine* {.importcpp: "ChFiDS_ChamfSpine",
                      header: "ChFiDS_ChamfSpine.hxx", bycopy.} = object of ChFiDS_Spine
    ## Standard_Boolean dison1;

type
  ChFiDS_ElSpine* {.importcpp: "ChFiDS_ElSpine", header: "ChFiDS_ElSpine.hxx", bycopy.} = object of Adaptor3dCurve

type
  ChFiDS_FilSpine* {.importcpp: "ChFiDS_FilSpine", header: "ChFiDS_FilSpine.hxx",
                    bycopy.} = object of ChFiDS_Spine

type
  ChFiDS_HData* {.importcpp: "ChFiDS_HData", header: "ChFiDS_HData.hxx", bycopy.} = object of ChFiDS_SequenceOfSurfData

type
  HandleChFiDS_HElSpine* = Handle[ChFiDS_HElSpine]
  ChFiDS_HElSpine* {.importcpp: "ChFiDS_HElSpine", header: "ChFiDS_HElSpine.hxx",
                    bycopy.} = object of Adaptor3dHCurve ## ! Creates an empty GenHCurve.

type
  ChFiDS_SecHArray1* {.importcpp: "ChFiDS_SecHArray1",
                      header: "ChFiDS_SecHArray1.hxx", bycopy.} = object of ChFiDS_SecArray1

type
  ChFiDS_Spine* {.importcpp: "ChFiDS_Spine", header: "ChFiDS_Spine.hxx", bycopy.} = object of StandardTransient

type
  ChFiDS_Stripe* {.importcpp: "ChFiDS_Stripe", header: "ChFiDS_Stripe.hxx", bycopy.} = object of StandardTransient

## ! fillet and to 2 faces vis a vis
type
  ChFiDS_SurfData* {.importcpp: "ChFiDS_SurfData", header: "ChFiDS_SurfData.hxx",
                    bycopy.} = object of StandardTransient


