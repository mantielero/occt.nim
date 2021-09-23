##  Created on: 1993-08-11
##  Created by: Bruno DUMORTIER
##  Copyright (c) 1993-1999 Matra Datavision
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

## !!!Ignored construct:  # _ProjLib_HCompProjectedCurve_HeaderFile [NewLine] # _ProjLib_HCompProjectedCurve_HeaderFile [NewLine] # ../Standard/Standard.hxx [NewLine] # ../Standard/Standard_Type.hxx [NewLine] # ProjLib_CompProjectedCurve.hxx [NewLine] # ../Adaptor2d/Adaptor2d_HCurve2d.hxx [NewLine] class Standard_OutOfRange ;
## Error: did not expect <!!!

discard "forward decl of Standard_NoSuchObject"
discard "forward decl of Standard_DomainError"
discard "forward decl of ProjLib_CompProjectedCurve"
discard "forward decl of Adaptor2d_Curve2d"
discard "forward decl of ProjLib_HCompProjectedCurve"
discard "forward decl of ProjLib_HCompProjectedCurve"
type
  Handle_ProjLib_HCompProjectedCurveProjLib_HCompProjectedCurve* = handle[
      ProjLib_HCompProjectedCurve]
  ProjLib_HCompProjectedCurve* {.importcpp: "ProjLib_HCompProjectedCurve",
                                header: "ProjLib_HCompProjectedCurve.hxx", bycopy.} = object of Adaptor2d_HCurve2d ##
                                                                                                            ## !
                                                                                                            ## Creates
                                                                                                            ## an
                                                                                                            ## empty
                                                                                                            ## GenHCurve2d.


proc constructProjLib_HCompProjectedCurve*(): ProjLib_HCompProjectedCurve {.
    constructor, importcpp: "ProjLib_HCompProjectedCurve(@)",
    header: "ProjLib_HCompProjectedCurve.hxx".}
proc constructProjLib_HCompProjectedCurve*(C: ProjLib_CompProjectedCurve): ProjLib_HCompProjectedCurve {.
    constructor, importcpp: "ProjLib_HCompProjectedCurve(@)",
    header: "ProjLib_HCompProjectedCurve.hxx".}
proc Set*(this: var ProjLib_HCompProjectedCurve; C: ProjLib_CompProjectedCurve) {.
    importcpp: "Set", header: "ProjLib_HCompProjectedCurve.hxx".}
proc Curve2d*(this: ProjLib_HCompProjectedCurve): Adaptor2d_Curve2d {.noSideEffect,
    importcpp: "Curve2d", header: "ProjLib_HCompProjectedCurve.hxx".}
proc ChangeCurve2d*(this: var ProjLib_HCompProjectedCurve): var ProjLib_CompProjectedCurve {.
    importcpp: "ChangeCurve2d", header: "ProjLib_HCompProjectedCurve.hxx".}
type
  ProjLib_HCompProjectedCurvebase_type* = Adaptor2d_HCurve2d

proc get_type_name*(): cstring {.importcpp: "ProjLib_HCompProjectedCurve::get_type_name(@)",
                              header: "ProjLib_HCompProjectedCurve.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "ProjLib_HCompProjectedCurve::get_type_descriptor(@)",
    header: "ProjLib_HCompProjectedCurve.hxx".}
proc DynamicType*(this: ProjLib_HCompProjectedCurve): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType",
    header: "ProjLib_HCompProjectedCurve.hxx".}
## !!!Ignored construct:  # TheCurve ProjLib_CompProjectedCurve [NewLine] # TheCurve_hxx < ProjLib_CompProjectedCurve . hxx > [NewLine] # Adaptor2d_GenHCurve2d ProjLib_HCompProjectedCurve [NewLine] # Adaptor2d_GenHCurve2d_hxx < ProjLib_HCompProjectedCurve . hxx > [NewLine] # Handle_Adaptor2d_GenHCurve2d opencascade :: handle < ProjLib_HCompProjectedCurve > [end of template] [NewLine] # < Adaptor2d_GenHCurve2d . lxx > [NewLine] # TheCurve [NewLine] # TheCurve_hxx [NewLine] # Adaptor2d_GenHCurve2d [NewLine] # Adaptor2d_GenHCurve2d_hxx [NewLine] # Handle_Adaptor2d_GenHCurve2d [NewLine] #  _ProjLib_HCompProjectedCurve_HeaderFile [NewLine]
## Error: did not expect <!!!
