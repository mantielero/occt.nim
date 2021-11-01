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
discard "forward decl of BRepAdaptor_Curve2d"
discard "forward decl of Adaptor2d_Curve2d"
discard "forward decl of BRepAdaptor_HCurve2d"
type
  HandleBRepAdaptorHCurve2d* = Handle[BRepAdaptorHCurve2d]
  BRepAdaptorHCurve2d* {.importcpp: "BRepAdaptor_HCurve2d",
                        header: "BRepAdaptor_HCurve2d.hxx", bycopy.} = object of Adaptor2dHCurve2d ##
                                                                                            ## !
                                                                                            ## Creates
                                                                                            ## an
                                                                                            ## empty
                                                                                            ## GenHCurve2d.


proc newBRepAdaptorHCurve2d*(): BRepAdaptorHCurve2d {.cdecl, constructor,
    importcpp: "BRepAdaptor_HCurve2d(@)", dynlib: tkbrep.}
proc newBRepAdaptorHCurve2d*(c: BRepAdaptorCurve2d): BRepAdaptorHCurve2d {.cdecl,
    constructor, importcpp: "BRepAdaptor_HCurve2d(@)", dynlib: tkbrep.}
proc set*(this: var BRepAdaptorHCurve2d; c: BRepAdaptorCurve2d) {.cdecl,
    importcpp: "Set", dynlib: tkbrep.}
proc curve2d*(this: BRepAdaptorHCurve2d): Adaptor2dCurve2d {.noSideEffect, cdecl,
    importcpp: "Curve2d", dynlib: tkbrep.}
proc changeCurve2d*(this: var BRepAdaptorHCurve2d): var BRepAdaptorCurve2d {.cdecl,
    importcpp: "ChangeCurve2d", dynlib: tkbrep.}
type
  BRepAdaptorHCurve2dbaseType* = Adaptor2dHCurve2d

##  #define TheCurve BRepAdaptor_Curve2d
##  #define TheCurve_hxx <BRepAdaptor_Curve2d.hxx>
##  #define Adaptor2d_GenHCurve2d BRepAdaptor_HCurve2d
##  #define Adaptor2d_GenHCurve2d_hxx <BRepAdaptor_HCurve2d.hxx>
##  #define Handle_Adaptor2d_GenHCurve2d Handle(BRepAdaptor_HCurve2d)
##
##  #include <Adaptor2d_GenHCurve2d.lxx>
##
##  #undef TheCurve
##  #undef TheCurve_hxx
##  #undef Adaptor2d_GenHCurve2d
##  #undef Adaptor2d_GenHCurve2d_hxx
##  #undef Handle_Adaptor2d_GenHCurve2d
