import ../../tkxsbase/transfer/transfer_types
import ../../tkernel/standard/standard_types
type
  STEPControlStepModelType* {.size: sizeof(cint),
                             importcpp: "STEPControl_StepModelType",
                             header: "STEPControl_StepModelType.hxx".} = enum
    STEPControlAsIs, STEPControlManifoldSolidBrep, STEPControlBrepWithVoids,
    STEPControlFacetedBrep, STEPControlFacetedBrepAndBrepWithVoids,
    STEPControlShellBasedSurfaceModel, STEPControlGeometricCurveSet,
    STEPControlHybrid

  STEPControlWriter* {.importcpp: "STEPControl_Writer",
                      header: "STEPControl_Writer.hxx", bycopy.} = object 

  STEPControlActorRead* {.importcpp: "STEPControl_ActorRead",
                         header: "STEPControl_ActorRead.hxx", bycopy.} = object of TransferActorOfTransientProcess 

  HandleSTEPControlActorRead* = Handle[STEPControlActorRead]                                                                                                            

  STEPControlActorWrite* {.importcpp: "STEPControl_ActorWrite",
                          header: "STEPControl_ActorWrite.hxx", bycopy.} = object of TransferActorOfFinderProcess 

  HandleSTEPControlActorWrite* = Handle[STEPControlActorWrite]

  STEPControlController* {.importcpp: "STEPControl_Controller",
                          header: "STEPControl_Controller.hxx", bycopy.} = object of XSControlController 
                          header: "STEPControl_Controller.hxx", bycopy.} = object of XSControlController 

  HandleSTEPControlController* = Handle[STEPControlController]

                          header: "STEPControl_Controller.hxx", bycopy.} = object of XSControlController 
  STEPControlReader* {.importcpp: "STEPControl_Reader",
                      header: "STEPControl_Reader.hxx", bycopy.} = object of XSControlReader 

