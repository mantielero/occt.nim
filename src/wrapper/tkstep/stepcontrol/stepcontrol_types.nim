# PROVIDES: STEPControlStepModelType STEPControlWriter
# DEPENDS:  Handle[STEPControlActorRead]                                                                                                              Handle[STEPControlActorWrite]  Handle[STEPControlController] TransferActorOfTransientProcess TransferActorOfFinderProcess XSControlController XSControlReader

import tkstep/stepcontrol/stepcontrol_types
import tkxsbase/transfer/transfer_types
import tkernel/standard/standard_types
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

  HandleSTEPControlActorRead* = Handle[STEPControlActorRead]                                                                                                            

  HandleSTEPControlActorWrite* = Handle[STEPControlActorWrite]

  HandleSTEPControlController* = Handle[STEPControlController]

  STEPControlActorRead* {.importcpp: "STEPControl_ActorRead",
                         header: "STEPControl_ActorRead.hxx", bycopy.} = object of TransferActorOfTransientProcess 

  STEPControlActorWrite* {.importcpp: "STEPControl_ActorWrite",
                          header: "STEPControl_ActorWrite.hxx", bycopy.} = object of TransferActorOfFinderProcess 

  STEPControlController* {.importcpp: "STEPControl_Controller",
                          header: "STEPControl_Controller.hxx", bycopy.} = object of XSControlController 

                          header: "STEPControl_Controller.hxx", bycopy.} = object of XSControlController 
  STEPControlReader* {.importcpp: "STEPControl_Reader",
                      header: "STEPControl_Reader.hxx", bycopy.} = object of XSControlReader 


