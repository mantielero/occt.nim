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
discard "forward decl of GeomAdaptor_Curve"
discard "forward decl of Adaptor3d_Curve"
discard "forward decl of GeomAdaptor_GHCurve"
type
  HandleGeomAdaptorGHCurve* = Handle[GeomAdaptorGHCurve]
  GeomAdaptorGHCurve* {.importcpp: "GeomAdaptor_GHCurve",
                       header: "GeomAdaptor_GHCurve.hxx", bycopy.} = object of Adaptor3dHCurve ##
                                                                                        ## !
                                                                                        ## Creates
                                                                                        ## an
                                                                                        ## empty
                                                                                        ## GenHCurve.


proc newGeomAdaptorGHCurve*(): GeomAdaptorGHCurve {.cdecl, constructor,
    importcpp: "GeomAdaptor_GHCurve(@)", header: "GeomAdaptor_GHCurve.hxx".}
proc newGeomAdaptorGHCurve*(c: GeomAdaptorCurve): GeomAdaptorGHCurve {.cdecl,
    constructor, importcpp: "GeomAdaptor_GHCurve(@)", header: "GeomAdaptor_GHCurve.hxx".}
proc set*(this: var GeomAdaptorGHCurve; c: GeomAdaptorCurve) {.cdecl, importcpp: "Set",
    header: "GeomAdaptor_GHCurve.hxx".}
proc curve*(this: GeomAdaptorGHCurve): Adaptor3dCurve {.noSideEffect, cdecl,
    importcpp: "Curve", header: "GeomAdaptor_GHCurve.hxx".}
proc getCurve*(this: var GeomAdaptorGHCurve): var Adaptor3dCurve {.cdecl,
    importcpp: "GetCurve", header: "GeomAdaptor_GHCurve.hxx".}
proc changeCurve*(this: var GeomAdaptorGHCurve): var GeomAdaptorCurve {.cdecl,
    importcpp: "ChangeCurve", header: "GeomAdaptor_GHCurve.hxx".}
type
  GeomAdaptorGHCurvebaseType* = Adaptor3dHCurve

##  #define TheCurve GeomAdaptor_Curve
##  #define TheCurve_hxx <GeomAdaptor_Curve.hxx>
##  #define Adaptor3d_GenHCurve GeomAdaptor_GHCurve
##  #define Adaptor3d_GenHCurve_hxx <GeomAdaptor_GHCurve.hxx>
##  #define Handle_Adaptor3d_GenHCurve Handle(GeomAdaptor_GHCurve)
##
##  #include <Adaptor3d_GenHCurve.lxx>
##
##  #undef TheCurve
##  #undef TheCurve_hxx
##  #undef Adaptor3d_GenHCurve
##  #undef Adaptor3d_GenHCurve_hxx
##  #undef Handle_Adaptor3d_GenHCurve
