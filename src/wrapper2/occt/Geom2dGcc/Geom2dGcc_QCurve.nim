##  Created on: 1991-04-15
##  Created by: Philippe DAUTRY
##  Copyright (c) 1991-1999 Matra Datavision
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
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../GccEnt/GccEnt_Position,
  ../Geom2dAdaptor/Geom2dAdaptor_Curve, ../Standard/Standard_Boolean

discard "forward decl of Geom2dAdaptor_Curve"
type
  Geom2dGcc_QCurve* {.importcpp: "Geom2dGcc_QCurve",
                     header: "Geom2dGcc_QCurve.hxx", bycopy.} = object


proc constructGeom2dGcc_QCurve*(Curve: Geom2dAdaptor_Curve;
                               Qualifier: GccEnt_Position): Geom2dGcc_QCurve {.
    constructor, importcpp: "Geom2dGcc_QCurve(@)", header: "Geom2dGcc_QCurve.hxx".}
proc Qualified*(this: Geom2dGcc_QCurve): Geom2dAdaptor_Curve {.noSideEffect,
    importcpp: "Qualified", header: "Geom2dGcc_QCurve.hxx".}
proc Qualifier*(this: Geom2dGcc_QCurve): GccEnt_Position {.noSideEffect,
    importcpp: "Qualifier", header: "Geom2dGcc_QCurve.hxx".}
proc IsUnqualified*(this: Geom2dGcc_QCurve): Standard_Boolean {.noSideEffect,
    importcpp: "IsUnqualified", header: "Geom2dGcc_QCurve.hxx".}
proc IsEnclosing*(this: Geom2dGcc_QCurve): Standard_Boolean {.noSideEffect,
    importcpp: "IsEnclosing", header: "Geom2dGcc_QCurve.hxx".}
proc IsEnclosed*(this: Geom2dGcc_QCurve): Standard_Boolean {.noSideEffect,
    importcpp: "IsEnclosed", header: "Geom2dGcc_QCurve.hxx".}
proc IsOutside*(this: Geom2dGcc_QCurve): Standard_Boolean {.noSideEffect,
    importcpp: "IsOutside", header: "Geom2dGcc_QCurve.hxx".}