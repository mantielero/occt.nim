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

## !!!Ignored construct:  # _BRepAdaptor_HCompCurve_HeaderFile [NewLine] # _BRepAdaptor_HCompCurve_HeaderFile [NewLine] # ../Standard/Standard.hxx [NewLine] # ../Standard/Standard_Type.hxx [NewLine] # BRepAdaptor_CompCurve.hxx [NewLine] # ../Adaptor3d/Adaptor3d_HCurve.hxx [NewLine] class Standard_OutOfRange ;
## Error: did not expect <!!!

discard "forward decl of Standard_NoSuchObject"
discard "forward decl of Standard_DomainError"
discard "forward decl of BRepAdaptor_CompCurve"
discard "forward decl of Adaptor3d_Curve"
discard "forward decl of BRepAdaptor_HCompCurve"
discard "forward decl of BRepAdaptor_HCompCurve"
type
  Handle_BRepAdaptor_HCompCurveBRepAdaptor_HCompCurve* = handle[
      BRepAdaptor_HCompCurve]
  BRepAdaptor_HCompCurve* {.importcpp: "BRepAdaptor_HCompCurve",
                           header: "BRepAdaptor_HCompCurve.hxx", bycopy.} = object of Adaptor3d_HCurve ##
                                                                                                ## !
                                                                                                ## Creates
                                                                                                ## an
                                                                                                ## empty
                                                                                                ## GenHCurve.


proc constructBRepAdaptor_HCompCurve*(): BRepAdaptor_HCompCurve {.constructor,
    importcpp: "BRepAdaptor_HCompCurve(@)", header: "BRepAdaptor_HCompCurve.hxx".}
proc constructBRepAdaptor_HCompCurve*(C: BRepAdaptor_CompCurve): BRepAdaptor_HCompCurve {.
    constructor, importcpp: "BRepAdaptor_HCompCurve(@)",
    header: "BRepAdaptor_HCompCurve.hxx".}
proc Set*(this: var BRepAdaptor_HCompCurve; C: BRepAdaptor_CompCurve) {.
    importcpp: "Set", header: "BRepAdaptor_HCompCurve.hxx".}
proc Curve*(this: BRepAdaptor_HCompCurve): Adaptor3d_Curve {.noSideEffect,
    importcpp: "Curve", header: "BRepAdaptor_HCompCurve.hxx".}
proc GetCurve*(this: var BRepAdaptor_HCompCurve): var Adaptor3d_Curve {.
    importcpp: "GetCurve", header: "BRepAdaptor_HCompCurve.hxx".}
proc ChangeCurve*(this: var BRepAdaptor_HCompCurve): var BRepAdaptor_CompCurve {.
    importcpp: "ChangeCurve", header: "BRepAdaptor_HCompCurve.hxx".}
type
  BRepAdaptor_HCompCurvebase_type* = Adaptor3d_HCurve

proc get_type_name*(): cstring {.importcpp: "BRepAdaptor_HCompCurve::get_type_name(@)",
                              header: "BRepAdaptor_HCompCurve.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "BRepAdaptor_HCompCurve::get_type_descriptor(@)",
    header: "BRepAdaptor_HCompCurve.hxx".}
proc DynamicType*(this: BRepAdaptor_HCompCurve): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "BRepAdaptor_HCompCurve.hxx".}
## !!!Ignored construct:  # TheCurve BRepAdaptor_CompCurve [NewLine] # TheCurve_hxx < BRepAdaptor_CompCurve . hxx > [NewLine] # Adaptor3d_GenHCurve BRepAdaptor_HCompCurve [NewLine] # Adaptor3d_GenHCurve_hxx < BRepAdaptor_HCompCurve . hxx > [NewLine] # Handle_Adaptor3d_GenHCurve opencascade :: handle < BRepAdaptor_HCompCurve > [end of template] [NewLine] # < Adaptor3d_GenHCurve . lxx > [NewLine] # TheCurve [NewLine] # TheCurve_hxx [NewLine] # Adaptor3d_GenHCurve [NewLine] # Adaptor3d_GenHCurve_hxx [NewLine] # Handle_Adaptor3d_GenHCurve [NewLine] #  _BRepAdaptor_HCompCurve_HeaderFile [NewLine]
## Error: did not expect <!!!
