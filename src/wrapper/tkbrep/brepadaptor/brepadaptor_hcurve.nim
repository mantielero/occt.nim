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

discard "forward decl of Standard_OutOfRange"
discard "forward decl of Standard_NoSuchObject"
discard "forward decl of Standard_DomainError"
discard "forward decl of BRepAdaptor_Curve"
discard "forward decl of Adaptor3d_Curve"
discard "forward decl of BRepAdaptor_HCurve"
type
  HandleBRepAdaptorHCurve* = Handle[BRepAdaptorHCurve]
  BRepAdaptorHCurve* {.importcpp: "BRepAdaptor_HCurve",
                      header: "BRepAdaptor_HCurve.hxx", bycopy.} = object of Adaptor3dHCurve ##
                                                                                      ## !
                                                                                      ## Creates
                                                                                      ## an
                                                                                      ## empty
                                                                                      ## GenHCurve.


proc newBRepAdaptorHCurve*(): BRepAdaptorHCurve {.cdecl, constructor,
    importcpp: "BRepAdaptor_HCurve(@)", header: "BRepAdaptor_HCurve.hxx".}
proc newBRepAdaptorHCurve*(c: BRepAdaptorCurve): BRepAdaptorHCurve {.cdecl,
    constructor, importcpp: "BRepAdaptor_HCurve(@)", header: "BRepAdaptor_HCurve.hxx".}
proc set*(this: var BRepAdaptorHCurve; c: BRepAdaptorCurve) {.cdecl, importcpp: "Set",
    header: "BRepAdaptor_HCurve.hxx".}
proc curve*(this: BRepAdaptorHCurve): Adaptor3dCurve {.noSideEffect, cdecl,
    importcpp: "Curve", header: "BRepAdaptor_HCurve.hxx".}
proc getCurve*(this: var BRepAdaptorHCurve): var Adaptor3dCurve {.cdecl,
    importcpp: "GetCurve", header: "BRepAdaptor_HCurve.hxx".}
proc changeCurve*(this: var BRepAdaptorHCurve): var BRepAdaptorCurve {.cdecl,
    importcpp: "ChangeCurve", header: "BRepAdaptor_HCurve.hxx".}
type
  BRepAdaptorHCurvebaseType* = Adaptor3dHCurve

##  #define TheCurve BRepAdaptor_Curve
##  #define TheCurve_hxx <BRepAdaptor_Curve.hxx>
##  #define Adaptor3d_GenHCurve BRepAdaptor_HCurve
##  #define Adaptor3d_GenHCurve_hxx <BRepAdaptor_HCurve.hxx>
##  #define Handle_Adaptor3d_GenHCurve Handle(BRepAdaptor_HCurve)
##
##  #include <Adaptor3d_GenHCurve.lxx>
##
##  #undef TheCurve
##  #undef TheCurve_hxx
##  #undef Adaptor3d_GenHCurve
##  #undef Adaptor3d_GenHCurve_hxx
##  #undef Handle_Adaptor3d_GenHCurve
