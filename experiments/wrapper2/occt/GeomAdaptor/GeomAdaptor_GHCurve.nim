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

## !!!Ignored construct:  # _GeomAdaptor_GHCurve_HeaderFile [NewLine] # _GeomAdaptor_GHCurve_HeaderFile [NewLine] # ../Standard/Standard.hxx [NewLine] # ../Standard/Standard_Type.hxx [NewLine] # GeomAdaptor_Curve.hxx [NewLine] # ../Adaptor3d/Adaptor3d_HCurve.hxx [NewLine] class Standard_OutOfRange ;
## Error: did not expect <!!!

discard "forward decl of Standard_NoSuchObject"
discard "forward decl of Standard_DomainError"
discard "forward decl of GeomAdaptor_Curve"
discard "forward decl of Adaptor3d_Curve"
discard "forward decl of GeomAdaptor_GHCurve"
discard "forward decl of GeomAdaptor_GHCurve"
type
  Handle_GeomAdaptor_GHCurveGeomAdaptor_GHCurve* = handle[GeomAdaptor_GHCurve]
  GeomAdaptor_GHCurve* {.importcpp: "GeomAdaptor_GHCurve",
                        header: "GeomAdaptor_GHCurve.hxx", bycopy.} = object of Adaptor3d_HCurve ##
                                                                                          ## !
                                                                                          ## Creates
                                                                                          ## an
                                                                                          ## empty
                                                                                          ## GenHCurve.


proc constructGeomAdaptor_GHCurve*(): GeomAdaptor_GHCurve {.constructor,
    importcpp: "GeomAdaptor_GHCurve(@)", header: "GeomAdaptor_GHCurve.hxx".}
proc constructGeomAdaptor_GHCurve*(C: GeomAdaptor_Curve): GeomAdaptor_GHCurve {.
    constructor, importcpp: "GeomAdaptor_GHCurve(@)",
    header: "GeomAdaptor_GHCurve.hxx".}
proc Set*(this: var GeomAdaptor_GHCurve; C: GeomAdaptor_Curve) {.importcpp: "Set",
    header: "GeomAdaptor_GHCurve.hxx".}
proc Curve*(this: GeomAdaptor_GHCurve): Adaptor3d_Curve {.noSideEffect,
    importcpp: "Curve", header: "GeomAdaptor_GHCurve.hxx".}
proc GetCurve*(this: var GeomAdaptor_GHCurve): var Adaptor3d_Curve {.
    importcpp: "GetCurve", header: "GeomAdaptor_GHCurve.hxx".}
proc ChangeCurve*(this: var GeomAdaptor_GHCurve): var GeomAdaptor_Curve {.
    importcpp: "ChangeCurve", header: "GeomAdaptor_GHCurve.hxx".}
type
  GeomAdaptor_GHCurvebase_type* = Adaptor3d_HCurve

proc get_type_name*(): cstring {.importcpp: "GeomAdaptor_GHCurve::get_type_name(@)",
                              header: "GeomAdaptor_GHCurve.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "GeomAdaptor_GHCurve::get_type_descriptor(@)",
    header: "GeomAdaptor_GHCurve.hxx".}
proc DynamicType*(this: GeomAdaptor_GHCurve): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "GeomAdaptor_GHCurve.hxx".}
## !!!Ignored construct:  # TheCurve GeomAdaptor_Curve [NewLine] # TheCurve_hxx < GeomAdaptor_Curve . hxx > [NewLine] # Adaptor3d_GenHCurve GeomAdaptor_GHCurve [NewLine] # Adaptor3d_GenHCurve_hxx < GeomAdaptor_GHCurve . hxx > [NewLine] # Handle_Adaptor3d_GenHCurve opencascade :: handle < GeomAdaptor_GHCurve > [end of template] [NewLine] # < Adaptor3d_GenHCurve . lxx > [NewLine] # TheCurve [NewLine] # TheCurve_hxx [NewLine] # Adaptor3d_GenHCurve [NewLine] # Adaptor3d_GenHCurve_hxx [NewLine] # Handle_Adaptor3d_GenHCurve [NewLine] #  _GeomAdaptor_GHCurve_HeaderFile [NewLine]
## Error: did not expect <!!!
