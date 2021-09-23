##  Created on: 1992-03-23
##  Created by: Herve LEGRAND
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

import
  ../StdFail/StdFail_NotDone, ../TColStd/TColStd_SequenceOfReal,
  ../TColgp/TColgp_SequenceOfPnt

discard "forward decl of Standard_DomainError"
discard "forward decl of Standard_ConstructionError"
discard "forward decl of Standard_OutOfRange"
discard "forward decl of StdFail_NotDone"
discard "forward decl of Adaptor3d_Curve"
discard "forward decl of Adaptor2d_Curve2d"
discard "forward decl of gp_Pnt"
type
  GCPnts_UniformDeflection* {.importcpp: "GCPnts_UniformDeflection",
                             header: "GCPnts_UniformDeflection.hxx", bycopy.} = object ##
                                                                                  ## !
                                                                                  ## Constructs
                                                                                  ## an
                                                                                  ## empty
                                                                                  ## algorithm.
                                                                                  ## To
                                                                                  ## define
                                                                                  ## the
                                                                                  ## problem
                                                                                  ##
                                                                                  ## !
                                                                                  ## to
                                                                                  ## be
                                                                                  ## solved,
                                                                                  ## use
                                                                                  ## the
                                                                                  ## function
                                                                                  ## Initialize.


proc constructGCPnts_UniformDeflection*(): GCPnts_UniformDeflection {.constructor,
    importcpp: "GCPnts_UniformDeflection(@)",
    header: "GCPnts_UniformDeflection.hxx".}
proc constructGCPnts_UniformDeflection*(C: Adaptor3d_Curve;
                                       Deflection: Standard_Real; WithControl: Standard_Boolean = Standard_True): GCPnts_UniformDeflection {.
    constructor, importcpp: "GCPnts_UniformDeflection(@)",
    header: "GCPnts_UniformDeflection.hxx".}
proc constructGCPnts_UniformDeflection*(C: Adaptor2d_Curve2d;
                                       Deflection: Standard_Real; WithControl: Standard_Boolean = Standard_True): GCPnts_UniformDeflection {.
    constructor, importcpp: "GCPnts_UniformDeflection(@)",
    header: "GCPnts_UniformDeflection.hxx".}
proc constructGCPnts_UniformDeflection*(C: Adaptor3d_Curve;
                                       Deflection: Standard_Real;
                                       U1: Standard_Real; U2: Standard_Real;
    WithControl: Standard_Boolean = Standard_True): GCPnts_UniformDeflection {.
    constructor, importcpp: "GCPnts_UniformDeflection(@)",
    header: "GCPnts_UniformDeflection.hxx".}
proc constructGCPnts_UniformDeflection*(C: Adaptor2d_Curve2d;
                                       Deflection: Standard_Real;
                                       U1: Standard_Real; U2: Standard_Real;
    WithControl: Standard_Boolean = Standard_True): GCPnts_UniformDeflection {.
    constructor, importcpp: "GCPnts_UniformDeflection(@)",
    header: "GCPnts_UniformDeflection.hxx".}
proc Initialize*(this: var GCPnts_UniformDeflection; C: Adaptor3d_Curve;
                Deflection: Standard_Real;
                WithControl: Standard_Boolean = Standard_True) {.
    importcpp: "Initialize", header: "GCPnts_UniformDeflection.hxx".}
proc Initialize*(this: var GCPnts_UniformDeflection; C: Adaptor2d_Curve2d;
                Deflection: Standard_Real;
                WithControl: Standard_Boolean = Standard_True) {.
    importcpp: "Initialize", header: "GCPnts_UniformDeflection.hxx".}
proc Initialize*(this: var GCPnts_UniformDeflection; C: Adaptor3d_Curve;
                Deflection: Standard_Real; U1: Standard_Real; U2: Standard_Real;
                WithControl: Standard_Boolean = Standard_True) {.
    importcpp: "Initialize", header: "GCPnts_UniformDeflection.hxx".}
proc Initialize*(this: var GCPnts_UniformDeflection; C: Adaptor2d_Curve2d;
                Deflection: Standard_Real; U1: Standard_Real; U2: Standard_Real;
                WithControl: Standard_Boolean = Standard_True) {.
    importcpp: "Initialize", header: "GCPnts_UniformDeflection.hxx".}
proc IsDone*(this: GCPnts_UniformDeflection): Standard_Boolean {.noSideEffect,
    importcpp: "IsDone", header: "GCPnts_UniformDeflection.hxx".}
proc NbPoints*(this: GCPnts_UniformDeflection): Standard_Integer {.noSideEffect,
    importcpp: "NbPoints", header: "GCPnts_UniformDeflection.hxx".}
proc Parameter*(this: GCPnts_UniformDeflection; Index: Standard_Integer): Standard_Real {.
    noSideEffect, importcpp: "Parameter", header: "GCPnts_UniformDeflection.hxx".}
proc Value*(this: GCPnts_UniformDeflection; Index: Standard_Integer): gp_Pnt {.
    noSideEffect, importcpp: "Value", header: "GCPnts_UniformDeflection.hxx".}
proc Deflection*(this: GCPnts_UniformDeflection): Standard_Real {.noSideEffect,
    importcpp: "Deflection", header: "GCPnts_UniformDeflection.hxx".}