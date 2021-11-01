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
discard "forward decl of BRepAdaptor_CompCurve"
discard "forward decl of Adaptor3d_Curve"
discard "forward decl of BRepAdaptor_HCompCurve"
type
  HandleBRepAdaptorHCompCurve* = Handle[BRepAdaptorHCompCurve]
  BRepAdaptorHCompCurve* {.importcpp: "BRepAdaptor_HCompCurve",
                          header: "BRepAdaptor_HCompCurve.hxx", bycopy.} = object of Adaptor3dHCurve ##
                                                                                              ## !
                                                                                              ## Creates
                                                                                              ## an
                                                                                              ## empty
                                                                                              ## GenHCurve.


proc newBRepAdaptorHCompCurve*(): BRepAdaptorHCompCurve {.cdecl, constructor,
    importcpp: "BRepAdaptor_HCompCurve(@)", dynlib: tkbrep.}
proc newBRepAdaptorHCompCurve*(c: BRepAdaptorCompCurve): BRepAdaptorHCompCurve {.
    cdecl, constructor, importcpp: "BRepAdaptor_HCompCurve(@)", dynlib: tkbrep.}
proc set*(this: var BRepAdaptorHCompCurve; c: BRepAdaptorCompCurve) {.cdecl,
    importcpp: "Set", dynlib: tkbrep.}
proc curve*(this: BRepAdaptorHCompCurve): Adaptor3dCurve {.noSideEffect, cdecl,
    importcpp: "Curve", dynlib: tkbrep.}
proc getCurve*(this: var BRepAdaptorHCompCurve): var Adaptor3dCurve {.cdecl,
    importcpp: "GetCurve", dynlib: tkbrep.}
proc changeCurve*(this: var BRepAdaptorHCompCurve): var BRepAdaptorCompCurve {.cdecl,
    importcpp: "ChangeCurve", dynlib: tkbrep.}
type
  BRepAdaptorHCompCurvebaseType* = Adaptor3dHCurve

##  #define TheCurve BRepAdaptor_CompCurve
##  #define TheCurve_hxx <BRepAdaptor_CompCurve.hxx>
##  #define Adaptor3d_GenHCurve BRepAdaptor_HCompCurve
##  #define Adaptor3d_GenHCurve_hxx <BRepAdaptor_HCompCurve.hxx>
##  #define Handle_Adaptor3d_GenHCurve Handle(BRepAdaptor_HCompCurve)
##
##  #include <Adaptor3d_GenHCurve.lxx>
##
##  #undef TheCurve
##  #undef TheCurve_hxx
##  #undef Adaptor3d_GenHCurve
##  #undef Adaptor3d_GenHCurve_hxx
##  #undef Handle_Adaptor3d_GenHCurve
