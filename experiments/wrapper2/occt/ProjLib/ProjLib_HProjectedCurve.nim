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

## !!!Ignored construct:  # _ProjLib_HProjectedCurve_HeaderFile [NewLine] # _ProjLib_HProjectedCurve_HeaderFile [NewLine] # ../Standard/Standard.hxx [NewLine] # ../Standard/Standard_Type.hxx [NewLine] # ProjLib_ProjectedCurve.hxx [NewLine] # ../Adaptor2d/Adaptor2d_HCurve2d.hxx [NewLine] class Standard_OutOfRange ;
## Error: did not expect <!!!

discard "forward decl of Standard_NoSuchObject"
discard "forward decl of Standard_DomainError"
discard "forward decl of ProjLib_ProjectedCurve"
discard "forward decl of Adaptor2d_Curve2d"
discard "forward decl of ProjLib_HProjectedCurve"
discard "forward decl of ProjLib_HProjectedCurve"
type
  Handle_ProjLib_HProjectedCurveProjLib_HProjectedCurve* = handle[
      ProjLib_HProjectedCurve]
  ProjLib_HProjectedCurve* {.importcpp: "ProjLib_HProjectedCurve",
                            header: "ProjLib_HProjectedCurve.hxx", bycopy.} = object of Adaptor2d_HCurve2d ##
                                                                                                    ## !
                                                                                                    ## Creates
                                                                                                    ## an
                                                                                                    ## empty
                                                                                                    ## GenHCurve2d.


proc constructProjLib_HProjectedCurve*(): ProjLib_HProjectedCurve {.constructor,
    importcpp: "ProjLib_HProjectedCurve(@)", header: "ProjLib_HProjectedCurve.hxx".}
proc constructProjLib_HProjectedCurve*(C: ProjLib_ProjectedCurve): ProjLib_HProjectedCurve {.
    constructor, importcpp: "ProjLib_HProjectedCurve(@)",
    header: "ProjLib_HProjectedCurve.hxx".}
proc Set*(this: var ProjLib_HProjectedCurve; C: ProjLib_ProjectedCurve) {.
    importcpp: "Set", header: "ProjLib_HProjectedCurve.hxx".}
proc Curve2d*(this: ProjLib_HProjectedCurve): Adaptor2d_Curve2d {.noSideEffect,
    importcpp: "Curve2d", header: "ProjLib_HProjectedCurve.hxx".}
proc ChangeCurve2d*(this: var ProjLib_HProjectedCurve): var ProjLib_ProjectedCurve {.
    importcpp: "ChangeCurve2d", header: "ProjLib_HProjectedCurve.hxx".}
type
  ProjLib_HProjectedCurvebase_type* = Adaptor2d_HCurve2d

proc get_type_name*(): cstring {.importcpp: "ProjLib_HProjectedCurve::get_type_name(@)",
                              header: "ProjLib_HProjectedCurve.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "ProjLib_HProjectedCurve::get_type_descriptor(@)",
    header: "ProjLib_HProjectedCurve.hxx".}
proc DynamicType*(this: ProjLib_HProjectedCurve): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "ProjLib_HProjectedCurve.hxx".}
## !!!Ignored construct:  # TheCurve ProjLib_ProjectedCurve [NewLine] # TheCurve_hxx < ProjLib_ProjectedCurve . hxx > [NewLine] # Adaptor2d_GenHCurve2d ProjLib_HProjectedCurve [NewLine] # Adaptor2d_GenHCurve2d_hxx < ProjLib_HProjectedCurve . hxx > [NewLine] # Handle_Adaptor2d_GenHCurve2d opencascade :: handle < ProjLib_HProjectedCurve > [end of template] [NewLine] # < Adaptor2d_GenHCurve2d . lxx > [NewLine] # TheCurve [NewLine] # TheCurve_hxx [NewLine] # Adaptor2d_GenHCurve2d [NewLine] # Adaptor2d_GenHCurve2d_hxx [NewLine] # Handle_Adaptor2d_GenHCurve2d [NewLine] #  _ProjLib_HProjectedCurve_HeaderFile [NewLine]
## Error: did not expect <!!!
