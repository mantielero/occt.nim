##  Created on: 1996-01-18
##  Created by: Frederic MAUPAS
##  Copyright (c) 1996-1999 Matra Datavision
##  Copyright (c) 1999-2014 OPEN CASCADE SAS
##
##  This file is part of Open CASCADE Technology software library.
##
##  This library is free software; you can redistribute it and/or modify it under
##  the terms of the GNU Lesser General Public License version 2.1 as published
##  by the Free Software Foundation, with special exception defined in the file
##  OCCT_LGPL_EXCEPTION.txt. Consult the file LICENSE_LGPL_21.txt included in OCCT
##  distribution for complete text of the license and disclaimer of any warranty.
##
##  Alternatively, this file may be used under the terms of Open CASCADE
##  commercial license or contractual agreement.

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../Standard/Standard_Boolean,
  ../Standard/Standard_Real, ../Standard/Standard_Integer,
  ../Standard/Standard_CString, ../StepBasic/StepBasic_SiPrefix

discard "forward decl of StepGeom_GeomRepContextAndGlobUnitAssCtxAndGlobUncertaintyAssCtx"
discard "forward decl of StepRepr_GlobalUnitAssignedContext"
discard "forward decl of StepBasic_NamedUnit"
discard "forward decl of StepRepr_GlobalUncertaintyAssignedContext"
discard "forward decl of StepBasic_SiUnit"
type
  STEPConstruct_UnitContext* {.importcpp: "STEPConstruct_UnitContext",
                              header: "STEPConstruct_UnitContext.hxx", bycopy.} = object ##
                                                                                    ## !
                                                                                    ## Creates
                                                                                    ## empty
                                                                                    ## tool
                                                                                    ##
                                                                                    ## !
                                                                                    ## Fills
                                                                                    ## numerical
                                                                                    ## equivalent
                                                                                    ## of
                                                                                    ## SiUnitName
                                                                                    ## (in
                                                                                    ## SI
                                                                                    ## value)
                                                                                    ##
                                                                                    ## !
                                                                                    ## Returns
                                                                                    ## False
                                                                                    ## if
                                                                                    ## name
                                                                                    ## SiUnit
                                                                                    ## Name
                                                                                    ## not
                                                                                    ## recognized


proc constructSTEPConstruct_UnitContext*(): STEPConstruct_UnitContext {.
    constructor, importcpp: "STEPConstruct_UnitContext(@)",
    header: "STEPConstruct_UnitContext.hxx".}
proc Init*(this: var STEPConstruct_UnitContext; Tol3d: Standard_Real) {.
    importcpp: "Init", header: "STEPConstruct_UnitContext.hxx".}
proc IsDone*(this: STEPConstruct_UnitContext): Standard_Boolean {.noSideEffect,
    importcpp: "IsDone", header: "STEPConstruct_UnitContext.hxx".}
proc Value*(this: STEPConstruct_UnitContext): handle[
    StepGeom_GeomRepContextAndGlobUnitAssCtxAndGlobUncertaintyAssCtx] {.
    noSideEffect, importcpp: "Value", header: "STEPConstruct_UnitContext.hxx".}
proc ComputeFactors*(this: var STEPConstruct_UnitContext;
                    aContext: handle[StepRepr_GlobalUnitAssignedContext]): Standard_Integer {.
    importcpp: "ComputeFactors", header: "STEPConstruct_UnitContext.hxx".}
proc ComputeFactors*(this: var STEPConstruct_UnitContext;
                    aUnit: handle[StepBasic_NamedUnit]): Standard_Integer {.
    importcpp: "ComputeFactors", header: "STEPConstruct_UnitContext.hxx".}
proc ComputeTolerance*(this: var STEPConstruct_UnitContext; aContext: handle[
    StepRepr_GlobalUncertaintyAssignedContext]): Standard_Integer {.
    importcpp: "ComputeTolerance", header: "STEPConstruct_UnitContext.hxx".}
proc LengthFactor*(this: STEPConstruct_UnitContext): Standard_Real {.noSideEffect,
    importcpp: "LengthFactor", header: "STEPConstruct_UnitContext.hxx".}
proc PlaneAngleFactor*(this: STEPConstruct_UnitContext): Standard_Real {.
    noSideEffect, importcpp: "PlaneAngleFactor",
    header: "STEPConstruct_UnitContext.hxx".}
proc SolidAngleFactor*(this: STEPConstruct_UnitContext): Standard_Real {.
    noSideEffect, importcpp: "SolidAngleFactor",
    header: "STEPConstruct_UnitContext.hxx".}
proc Uncertainty*(this: STEPConstruct_UnitContext): Standard_Real {.noSideEffect,
    importcpp: "Uncertainty", header: "STEPConstruct_UnitContext.hxx".}
proc AreaFactor*(this: STEPConstruct_UnitContext): Standard_Real {.noSideEffect,
    importcpp: "AreaFactor", header: "STEPConstruct_UnitContext.hxx".}
proc VolumeFactor*(this: STEPConstruct_UnitContext): Standard_Real {.noSideEffect,
    importcpp: "VolumeFactor", header: "STEPConstruct_UnitContext.hxx".}
proc HasUncertainty*(this: STEPConstruct_UnitContext): Standard_Boolean {.
    noSideEffect, importcpp: "HasUncertainty",
    header: "STEPConstruct_UnitContext.hxx".}
proc LengthDone*(this: STEPConstruct_UnitContext): Standard_Boolean {.noSideEffect,
    importcpp: "LengthDone", header: "STEPConstruct_UnitContext.hxx".}
proc PlaneAngleDone*(this: STEPConstruct_UnitContext): Standard_Boolean {.
    noSideEffect, importcpp: "PlaneAngleDone",
    header: "STEPConstruct_UnitContext.hxx".}
proc SolidAngleDone*(this: STEPConstruct_UnitContext): Standard_Boolean {.
    noSideEffect, importcpp: "SolidAngleDone",
    header: "STEPConstruct_UnitContext.hxx".}
proc AreaDone*(this: STEPConstruct_UnitContext): Standard_Boolean {.noSideEffect,
    importcpp: "AreaDone", header: "STEPConstruct_UnitContext.hxx".}
proc VolumeDone*(this: STEPConstruct_UnitContext): Standard_Boolean {.noSideEffect,
    importcpp: "VolumeDone", header: "STEPConstruct_UnitContext.hxx".}
proc StatusMessage*(this: STEPConstruct_UnitContext; status: Standard_Integer): Standard_CString {.
    noSideEffect, importcpp: "StatusMessage",
    header: "STEPConstruct_UnitContext.hxx".}
proc ConvertSiPrefix*(aPrefix: StepBasic_SiPrefix): Standard_Real {.
    importcpp: "STEPConstruct_UnitContext::ConvertSiPrefix(@)",
    header: "STEPConstruct_UnitContext.hxx".}