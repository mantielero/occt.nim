##  Created on: 1992-10-08
##  Created by: Isabelle GRIGNON
##  Copyright (c) 1992-1999 Matra Datavision
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

## !!!Ignored construct:  # _Adaptor3d_HCurveOnSurface_HeaderFile [NewLine] # _Adaptor3d_HCurveOnSurface_HeaderFile [NewLine] # ../Standard/Standard.hxx [NewLine] # ../Standard/Standard_Type.hxx [NewLine] # Adaptor3d_CurveOnSurface.hxx [NewLine] # Adaptor3d_HCurve.hxx [NewLine] class Standard_OutOfRange ;
## Error: did not expect <!!!

discard "forward decl of Standard_NoSuchObject"
discard "forward decl of Standard_DomainError"
discard "forward decl of Adaptor3d_CurveOnSurface"
discard "forward decl of Adaptor3d_Curve"
discard "forward decl of Adaptor3d_HCurveOnSurface"
discard "forward decl of Adaptor3d_HCurveOnSurface"
type
  Handle_Adaptor3d_HCurveOnSurfaceAdaptor3d_HCurveOnSurface* = handle[
      Adaptor3d_HCurveOnSurface]
  Adaptor3d_HCurveOnSurface* {.importcpp: "Adaptor3d_HCurveOnSurface",
                              header: "Adaptor3d_HCurveOnSurface.hxx", bycopy.} = object of Adaptor3d_HCurve ##
                                                                                                      ## !
                                                                                                      ## Creates
                                                                                                      ## an
                                                                                                      ## empty
                                                                                                      ## GenHCurve.


proc constructAdaptor3d_HCurveOnSurface*(): Adaptor3d_HCurveOnSurface {.
    constructor, importcpp: "Adaptor3d_HCurveOnSurface(@)",
    header: "Adaptor3d_HCurveOnSurface.hxx".}
proc constructAdaptor3d_HCurveOnSurface*(C: Adaptor3d_CurveOnSurface): Adaptor3d_HCurveOnSurface {.
    constructor, importcpp: "Adaptor3d_HCurveOnSurface(@)",
    header: "Adaptor3d_HCurveOnSurface.hxx".}
proc Set*(this: var Adaptor3d_HCurveOnSurface; C: Adaptor3d_CurveOnSurface) {.
    importcpp: "Set", header: "Adaptor3d_HCurveOnSurface.hxx".}
proc Curve*(this: Adaptor3d_HCurveOnSurface): Adaptor3d_Curve {.noSideEffect,
    importcpp: "Curve", header: "Adaptor3d_HCurveOnSurface.hxx".}
proc GetCurve*(this: var Adaptor3d_HCurveOnSurface): var Adaptor3d_Curve {.
    importcpp: "GetCurve", header: "Adaptor3d_HCurveOnSurface.hxx".}
proc ChangeCurve*(this: var Adaptor3d_HCurveOnSurface): var Adaptor3d_CurveOnSurface {.
    importcpp: "ChangeCurve", header: "Adaptor3d_HCurveOnSurface.hxx".}
type
  Adaptor3d_HCurveOnSurfacebase_type* = Adaptor3d_HCurve

proc get_type_name*(): cstring {.importcpp: "Adaptor3d_HCurveOnSurface::get_type_name(@)",
                              header: "Adaptor3d_HCurveOnSurface.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "Adaptor3d_HCurveOnSurface::get_type_descriptor(@)",
    header: "Adaptor3d_HCurveOnSurface.hxx".}
proc DynamicType*(this: Adaptor3d_HCurveOnSurface): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "Adaptor3d_HCurveOnSurface.hxx".}
## !!!Ignored construct:  # TheCurve Adaptor3d_CurveOnSurface [NewLine] # TheCurve_hxx < Adaptor3d_CurveOnSurface . hxx > [NewLine] # Adaptor3d_GenHCurve Adaptor3d_HCurveOnSurface [NewLine] # Adaptor3d_GenHCurve_hxx < Adaptor3d_HCurveOnSurface . hxx > [NewLine] # Handle_Adaptor3d_GenHCurve opencascade :: handle < Adaptor3d_HCurveOnSurface > [end of template] [NewLine] # < Adaptor3d_GenHCurve . lxx > [NewLine] # TheCurve [NewLine] # TheCurve_hxx [NewLine] # Adaptor3d_GenHCurve [NewLine] # Adaptor3d_GenHCurve_hxx [NewLine] # Handle_Adaptor3d_GenHCurve [NewLine] #  _Adaptor3d_HCurveOnSurface_HeaderFile [NewLine]
## Error: did not expect <!!!
