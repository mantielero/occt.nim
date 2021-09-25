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

## !!!Ignored construct:  # _BRepAdaptor_HCompCurve_HeaderFile [NewLine] # _BRepAdaptor_HCompCurve_HeaderFile [NewLine] # < Standard . hxx > [NewLine] # < Standard_Type . hxx > [NewLine] # < BRepAdaptor_CompCurve . hxx > [NewLine] # < Adaptor3d_HCurve . hxx > [NewLine] class Standard_OutOfRange ;
## Error: did not expect <!!!

discard "forward decl of Standard_NoSuchObject"
discard "forward decl of Standard_DomainError"
discard "forward decl of BRepAdaptor_CompCurve"
discard "forward decl of Adaptor3d_Curve"
discard "forward decl of BRepAdaptor_HCompCurve"
discard "forward decl of BRepAdaptor_HCompCurve"
type
  HandleBRepAdaptorHCompCurveBRepAdaptorHCompCurve* = Handle[BRepAdaptorHCompCurve]
  BRepAdaptorHCompCurve* {.importcpp: "BRepAdaptor_HCompCurve",
                          header: "BRepAdaptor_HCompCurve.hxx", bycopy.} = object of Adaptor3dHCurve ##
                                                                                              ## !
                                                                                              ## Creates
                                                                                              ## an
                                                                                              ## empty
                                                                                              ## GenHCurve.


proc constructBRepAdaptorHCompCurve*(): BRepAdaptorHCompCurve {.constructor,
    importcpp: "BRepAdaptor_HCompCurve(@)", header: "BRepAdaptor_HCompCurve.hxx".}
proc constructBRepAdaptorHCompCurve*(c: BRepAdaptorCompCurve): BRepAdaptorHCompCurve {.
    constructor, importcpp: "BRepAdaptor_HCompCurve(@)",
    header: "BRepAdaptor_HCompCurve.hxx".}
proc set*(this: var BRepAdaptorHCompCurve; c: BRepAdaptorCompCurve) {.
    importcpp: "Set", header: "BRepAdaptor_HCompCurve.hxx".}
proc curve*(this: BRepAdaptorHCompCurve): Adaptor3dCurve {.noSideEffect,
    importcpp: "Curve", header: "BRepAdaptor_HCompCurve.hxx".}
proc getCurve*(this: var BRepAdaptorHCompCurve): var Adaptor3dCurve {.
    importcpp: "GetCurve", header: "BRepAdaptor_HCompCurve.hxx".}
proc changeCurve*(this: var BRepAdaptorHCompCurve): var BRepAdaptorCompCurve {.
    importcpp: "ChangeCurve", header: "BRepAdaptor_HCompCurve.hxx".}
type
  BRepAdaptorHCompCurvebaseType* = Adaptor3dHCurve

proc getTypeName*(): cstring {.importcpp: "BRepAdaptor_HCompCurve::get_type_name(@)",
                            header: "BRepAdaptor_HCompCurve.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "BRepAdaptor_HCompCurve::get_type_descriptor(@)",
    header: "BRepAdaptor_HCompCurve.hxx".}
proc dynamicType*(this: BRepAdaptorHCompCurve): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "BRepAdaptor_HCompCurve.hxx".}
## !!!Ignored construct:  # TheCurve BRepAdaptor_CompCurve [NewLine] # TheCurve_hxx < BRepAdaptor_CompCurve . hxx > [NewLine] # Adaptor3d_GenHCurve BRepAdaptor_HCompCurve [NewLine] # Adaptor3d_GenHCurve_hxx < BRepAdaptor_HCompCurve . hxx > [NewLine] # Handle_Adaptor3d_GenHCurve opencascade :: handle < BRepAdaptor_HCompCurve > [end of template] [NewLine] # < Adaptor3d_GenHCurve . lxx > [NewLine] # TheCurve [NewLine] # TheCurve_hxx [NewLine] # Adaptor3d_GenHCurve [NewLine] # Adaptor3d_GenHCurve_hxx [NewLine] # Handle_Adaptor3d_GenHCurve [NewLine] #  _BRepAdaptor_HCompCurve_HeaderFile
## Error: did not expect <!!!

