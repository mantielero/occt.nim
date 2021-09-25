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

## !!!Ignored construct:  # _BRepAdaptor_HCurve_HeaderFile [NewLine] # _BRepAdaptor_HCurve_HeaderFile [NewLine] # < Standard . hxx > [NewLine] # < Standard_Type . hxx > [NewLine] # < BRepAdaptor_Curve . hxx > [NewLine] # < Adaptor3d_HCurve . hxx > [NewLine] class Standard_OutOfRange ;
## Error: did not expect <!!!

discard "forward decl of Standard_NoSuchObject"
discard "forward decl of Standard_DomainError"
discard "forward decl of BRepAdaptor_Curve"
discard "forward decl of Adaptor3d_Curve"
discard "forward decl of BRepAdaptor_HCurve"
discard "forward decl of BRepAdaptor_HCurve"
type
  HandleBRepAdaptorHCurveBRepAdaptorHCurve* = Handle[BRepAdaptorHCurve]
  BRepAdaptorHCurve* {.importcpp: "BRepAdaptor_HCurve",
                      header: "BRepAdaptor_HCurve.hxx", bycopy.} = object of Adaptor3dHCurve ##
                                                                                      ## !
                                                                                      ## Creates
                                                                                      ## an
                                                                                      ## empty
                                                                                      ## GenHCurve.


proc constructBRepAdaptorHCurve*(): BRepAdaptorHCurve {.constructor,
    importcpp: "BRepAdaptor_HCurve(@)", header: "BRepAdaptor_HCurve.hxx".}
proc constructBRepAdaptorHCurve*(c: BRepAdaptorCurve): BRepAdaptorHCurve {.
    constructor, importcpp: "BRepAdaptor_HCurve(@)",
    header: "BRepAdaptor_HCurve.hxx".}
proc set*(this: var BRepAdaptorHCurve; c: BRepAdaptorCurve) {.importcpp: "Set",
    header: "BRepAdaptor_HCurve.hxx".}
proc curve*(this: BRepAdaptorHCurve): Adaptor3dCurve {.noSideEffect,
    importcpp: "Curve", header: "BRepAdaptor_HCurve.hxx".}
proc getCurve*(this: var BRepAdaptorHCurve): var Adaptor3dCurve {.
    importcpp: "GetCurve", header: "BRepAdaptor_HCurve.hxx".}
proc changeCurve*(this: var BRepAdaptorHCurve): var BRepAdaptorCurve {.
    importcpp: "ChangeCurve", header: "BRepAdaptor_HCurve.hxx".}
type
  BRepAdaptorHCurvebaseType* = Adaptor3dHCurve

proc getTypeName*(): cstring {.importcpp: "BRepAdaptor_HCurve::get_type_name(@)",
                            header: "BRepAdaptor_HCurve.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "BRepAdaptor_HCurve::get_type_descriptor(@)",
    header: "BRepAdaptor_HCurve.hxx".}
proc dynamicType*(this: BRepAdaptorHCurve): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "BRepAdaptor_HCurve.hxx".}
## !!!Ignored construct:  # TheCurve BRepAdaptor_Curve [NewLine] # TheCurve_hxx < BRepAdaptor_Curve . hxx > [NewLine] # Adaptor3d_GenHCurve BRepAdaptor_HCurve [NewLine] # Adaptor3d_GenHCurve_hxx < BRepAdaptor_HCurve . hxx > [NewLine] # Handle_Adaptor3d_GenHCurve opencascade :: handle < BRepAdaptor_HCurve > [end of template] [NewLine] # < Adaptor3d_GenHCurve . lxx > [NewLine] # TheCurve [NewLine] # TheCurve_hxx [NewLine] # Adaptor3d_GenHCurve [NewLine] # Adaptor3d_GenHCurve_hxx [NewLine] # Handle_Adaptor3d_GenHCurve [NewLine] #  _BRepAdaptor_HCurve_HeaderFile
## Error: did not expect <!!!

