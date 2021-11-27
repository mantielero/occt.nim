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

discard "forward decl of Standard_OutOfRange"
discard "forward decl of Standard_NoSuchObject"
discard "forward decl of Standard_DomainError"
discard "forward decl of Geom2dAdaptor_Curve"
discard "forward decl of Adaptor2d_Curve2d"
discard "forward decl of Geom2dAdaptor_GHCurve"
type
  HandleGeom2dAdaptorGHCurve* = Handle[Geom2dAdaptorGHCurve]
  Geom2dAdaptorGHCurve* {.importcpp: "Geom2dAdaptor_GHCurve",
                         header: "Geom2dAdaptor_GHCurve.hxx", bycopy.} = object of Adaptor2dHCurve2d ##
                                                                                              ## !
                                                                                              ## Creates
                                                                                              ## an
                                                                                              ## empty
                                                                                              ## GenHCurve2d.


proc newGeom2dAdaptorGHCurve*(): Geom2dAdaptorGHCurve {.cdecl, constructor,
    importcpp: "Geom2dAdaptor_GHCurve(@)", header: "Geom2dAdaptor_GHCurve.hxx".}
proc newGeom2dAdaptorGHCurve*(c: Geom2dAdaptorCurve): Geom2dAdaptorGHCurve {.cdecl,
    constructor, importcpp: "Geom2dAdaptor_GHCurve(@)", header: "Geom2dAdaptor_GHCurve.hxx".}
proc set*(this: var Geom2dAdaptorGHCurve; c: Geom2dAdaptorCurve) {.cdecl,
    importcpp: "Set", header: "Geom2dAdaptor_GHCurve.hxx".}
proc curve2d*(this: Geom2dAdaptorGHCurve): Adaptor2dCurve2d {.noSideEffect, cdecl,
    importcpp: "Curve2d", header: "Geom2dAdaptor_GHCurve.hxx".}
proc changeCurve2d*(this: var Geom2dAdaptorGHCurve): var Geom2dAdaptorCurve {.cdecl,
    importcpp: "ChangeCurve2d", header: "Geom2dAdaptor_GHCurve.hxx".}
type
  Geom2dAdaptorGHCurvebaseType* = Adaptor2dHCurve2d

##  #define TheCurve Geom2dAdaptor_Curve
##  #define TheCurve_hxx <Geom2dAdaptor_Curve.hxx>
##  #define Adaptor2d_GenHCurve2d Geom2dAdaptor_GHCurve
##  #define Adaptor2d_GenHCurve2d_hxx <Geom2dAdaptor_GHCurve.hxx>
##  #define Handle_Adaptor2d_GenHCurve2d Handle(Geom2dAdaptor_GHCurve)
##
##  #include <Adaptor2d_GenHCurve2d.lxx>
##
##  #undef TheCurve
##  #undef TheCurve_hxx
##  #undef Adaptor2d_GenHCurve2d
##  #undef Adaptor2d_GenHCurve2d_hxx
##  #undef Handle_Adaptor2d_GenHCurve2d
