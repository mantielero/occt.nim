##  Created on: 1993-02-19
##  Created by: Remi LEQUETTE
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

## !!!Ignored construct:  # _BRepAdaptor_HCurve_HeaderFile [NewLine] # _BRepAdaptor_HCurve_HeaderFile [NewLine] # ../Standard/Standard.hxx [NewLine] # ../Standard/Standard_Type.hxx [NewLine] # BRepAdaptor_Curve.hxx [NewLine] # ../Adaptor3d/Adaptor3d_HCurve.hxx [NewLine] class Standard_OutOfRange ;
## Error: did not expect <!!!

discard "forward decl of Standard_NoSuchObject"
discard "forward decl of Standard_DomainError"
discard "forward decl of BRepAdaptor_Curve"
discard "forward decl of Adaptor3d_Curve"
discard "forward decl of BRepAdaptor_HCurve"
discard "forward decl of BRepAdaptor_HCurve"
type
  Handle_BRepAdaptor_HCurveBRepAdaptor_HCurve* = handle[BRepAdaptor_HCurve]
  BRepAdaptor_HCurve* {.importcpp: "BRepAdaptor_HCurve",
                       header: "BRepAdaptor_HCurve.hxx", bycopy.} = object of Adaptor3d_HCurve ##
                                                                                        ## !
                                                                                        ## Creates
                                                                                        ## an
                                                                                        ## empty
                                                                                        ## GenHCurve.


proc constructBRepAdaptor_HCurve*(): BRepAdaptor_HCurve {.constructor,
    importcpp: "BRepAdaptor_HCurve(@)", header: "BRepAdaptor_HCurve.hxx".}
proc constructBRepAdaptor_HCurve*(C: BRepAdaptor_Curve): BRepAdaptor_HCurve {.
    constructor, importcpp: "BRepAdaptor_HCurve(@)",
    header: "BRepAdaptor_HCurve.hxx".}
proc Set*(this: var BRepAdaptor_HCurve; C: BRepAdaptor_Curve) {.importcpp: "Set",
    header: "BRepAdaptor_HCurve.hxx".}
proc Curve*(this: BRepAdaptor_HCurve): Adaptor3d_Curve {.noSideEffect,
    importcpp: "Curve", header: "BRepAdaptor_HCurve.hxx".}
proc GetCurve*(this: var BRepAdaptor_HCurve): var Adaptor3d_Curve {.
    importcpp: "GetCurve", header: "BRepAdaptor_HCurve.hxx".}
proc ChangeCurve*(this: var BRepAdaptor_HCurve): var BRepAdaptor_Curve {.
    importcpp: "ChangeCurve", header: "BRepAdaptor_HCurve.hxx".}
type
  BRepAdaptor_HCurvebase_type* = Adaptor3d_HCurve

proc get_type_name*(): cstring {.importcpp: "BRepAdaptor_HCurve::get_type_name(@)",
                              header: "BRepAdaptor_HCurve.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "BRepAdaptor_HCurve::get_type_descriptor(@)",
    header: "BRepAdaptor_HCurve.hxx".}
proc DynamicType*(this: BRepAdaptor_HCurve): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "BRepAdaptor_HCurve.hxx".}
## !!!Ignored construct:  # TheCurve BRepAdaptor_Curve [NewLine] # TheCurve_hxx < BRepAdaptor_Curve . hxx > [NewLine] # Adaptor3d_GenHCurve BRepAdaptor_HCurve [NewLine] # Adaptor3d_GenHCurve_hxx < BRepAdaptor_HCurve . hxx > [NewLine] # Handle_Adaptor3d_GenHCurve opencascade :: handle < BRepAdaptor_HCurve > [end of template] [NewLine] # < Adaptor3d_GenHCurve . lxx > [NewLine] # TheCurve [NewLine] # TheCurve_hxx [NewLine] # Adaptor3d_GenHCurve [NewLine] # Adaptor3d_GenHCurve_hxx [NewLine] # Handle_Adaptor3d_GenHCurve [NewLine] #  _BRepAdaptor_HCurve_HeaderFile [NewLine]
## Error: did not expect <!!!
