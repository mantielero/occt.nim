##  Created on: 1993-06-03
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

## !!!Ignored construct:  # _Geom2dAdaptor_GHCurve_HeaderFile [NewLine] # _Geom2dAdaptor_GHCurve_HeaderFile [NewLine] # ../Standard/Standard.hxx [NewLine] # ../Standard/Standard_Type.hxx [NewLine] # Geom2dAdaptor_Curve.hxx [NewLine] # ../Adaptor2d/Adaptor2d_HCurve2d.hxx [NewLine] class Standard_OutOfRange ;
## Error: did not expect <!!!

discard "forward decl of Standard_NoSuchObject"
discard "forward decl of Standard_DomainError"
discard "forward decl of Geom2dAdaptor_Curve"
discard "forward decl of Adaptor2d_Curve2d"
discard "forward decl of Geom2dAdaptor_GHCurve"
discard "forward decl of Geom2dAdaptor_GHCurve"
type
  Handle_Geom2dAdaptor_GHCurveGeom2dAdaptor_GHCurve* = handle[
      Geom2dAdaptor_GHCurve]
  Geom2dAdaptor_GHCurve* {.importcpp: "Geom2dAdaptor_GHCurve",
                          header: "Geom2dAdaptor_GHCurve.hxx", bycopy.} = object of Adaptor2d_HCurve2d ##
                                                                                                ## !
                                                                                                ## Creates
                                                                                                ## an
                                                                                                ## empty
                                                                                                ## GenHCurve2d.


proc constructGeom2dAdaptor_GHCurve*(): Geom2dAdaptor_GHCurve {.constructor,
    importcpp: "Geom2dAdaptor_GHCurve(@)", header: "Geom2dAdaptor_GHCurve.hxx".}
proc constructGeom2dAdaptor_GHCurve*(C: Geom2dAdaptor_Curve): Geom2dAdaptor_GHCurve {.
    constructor, importcpp: "Geom2dAdaptor_GHCurve(@)",
    header: "Geom2dAdaptor_GHCurve.hxx".}
proc Set*(this: var Geom2dAdaptor_GHCurve; C: Geom2dAdaptor_Curve) {.importcpp: "Set",
    header: "Geom2dAdaptor_GHCurve.hxx".}
proc Curve2d*(this: Geom2dAdaptor_GHCurve): Adaptor2d_Curve2d {.noSideEffect,
    importcpp: "Curve2d", header: "Geom2dAdaptor_GHCurve.hxx".}
proc ChangeCurve2d*(this: var Geom2dAdaptor_GHCurve): var Geom2dAdaptor_Curve {.
    importcpp: "ChangeCurve2d", header: "Geom2dAdaptor_GHCurve.hxx".}
type
  Geom2dAdaptor_GHCurvebase_type* = Adaptor2d_HCurve2d

proc get_type_name*(): cstring {.importcpp: "Geom2dAdaptor_GHCurve::get_type_name(@)",
                              header: "Geom2dAdaptor_GHCurve.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "Geom2dAdaptor_GHCurve::get_type_descriptor(@)",
    header: "Geom2dAdaptor_GHCurve.hxx".}
proc DynamicType*(this: Geom2dAdaptor_GHCurve): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "Geom2dAdaptor_GHCurve.hxx".}
## !!!Ignored construct:  # TheCurve Geom2dAdaptor_Curve [NewLine] # TheCurve_hxx < Geom2dAdaptor_Curve . hxx > [NewLine] # Adaptor2d_GenHCurve2d Geom2dAdaptor_GHCurve [NewLine] # Adaptor2d_GenHCurve2d_hxx < Geom2dAdaptor_GHCurve . hxx > [NewLine] # Handle_Adaptor2d_GenHCurve2d opencascade :: handle < Geom2dAdaptor_GHCurve > [end of template] [NewLine] # < Adaptor2d_GenHCurve2d . lxx > [NewLine] # TheCurve [NewLine] # TheCurve_hxx [NewLine] # Adaptor2d_GenHCurve2d [NewLine] # Adaptor2d_GenHCurve2d_hxx [NewLine] # Handle_Adaptor2d_GenHCurve2d [NewLine] #  _Geom2dAdaptor_GHCurve_HeaderFile [NewLine]
## Error: did not expect <!!!
