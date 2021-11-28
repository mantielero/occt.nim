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

discard "forward decl of Standard_OutOfRange"
discard "forward decl of Standard_NoSuchObject"
discard "forward decl of Standard_DomainError"
discard "forward decl of Adaptor3d_IsoCurve"
discard "forward decl of Adaptor3d_Curve"
discard "forward decl of Adaptor3d_HIsoCurve"
type
  HandleAdaptor3dHIsoCurve* = Handle[Adaptor3dHIsoCurve]
  Adaptor3dHIsoCurve* {.importcpp: "Adaptor3d_HIsoCurve",
                       header: "Adaptor3d_HIsoCurve.hxx", bycopy.} = object of Adaptor3dHCurve ##
                                                                                        ## !
                                                                                        ## Creates
                                                                                        ## an
                                                                                        ## empty
                                                                                        ## GenHCurve.


proc newAdaptor3dHIsoCurve*(): Adaptor3dHIsoCurve {.cdecl, constructor,
    importcpp: "Adaptor3d_HIsoCurve(@)", dynlib: tkg3d.}
proc newAdaptor3dHIsoCurve*(c: Adaptor3dIsoCurve): Adaptor3dHIsoCurve {.cdecl,
    constructor, importcpp: "Adaptor3d_HIsoCurve(@)", dynlib: tkg3d.}
proc set*(this: var Adaptor3dHIsoCurve; c: Adaptor3dIsoCurve) {.cdecl,
    importcpp: "Set", dynlib: tkg3d.}
proc curve*(this: Adaptor3dHIsoCurve): Adaptor3dCurve {.noSideEffect, cdecl,
    importcpp: "Curve", dynlib: tkg3d.}
proc getCurve*(this: var Adaptor3dHIsoCurve): var Adaptor3dCurve {.cdecl,
    importcpp: "GetCurve", dynlib: tkg3d.}
proc changeCurve*(this: var Adaptor3dHIsoCurve): var Adaptor3dIsoCurve {.cdecl,
    importcpp: "ChangeCurve", dynlib: tkg3d.}
type
  Adaptor3dHIsoCurvebaseType* = Adaptor3dHCurve

##  #define TheCurve Adaptor3d_IsoCurve
##  #define TheCurve_hxx <Adaptor3d_IsoCurve.hxx>
##  #define Adaptor3d_GenHCurve Adaptor3d_HIsoCurve
##  #define Adaptor3d_GenHCurve_hxx <Adaptor3d_HIsoCurve.hxx>
##  #define Handle_Adaptor3d_GenHCurve Handle(Adaptor3d_HIsoCurve)
##
##  #include <Adaptor3d_GenHCurve.lxx>
##
##  #undef TheCurve
##  #undef TheCurve_hxx
##  #undef Adaptor3d_GenHCurve
##  #undef Adaptor3d_GenHCurve_hxx
##  #undef Handle_Adaptor3d_GenHCurve
