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

discard "forward decl of Geom2dAdaptor_Curve"
type
  Geom2dGccQCurve* {.importcpp: "Geom2dGcc_QCurve", header: "Geom2dGcc_QCurve.hxx",
                    bycopy.} = object


proc constructGeom2dGccQCurve*(curve: Geom2dAdaptorCurve; qualifier: GccEntPosition): Geom2dGccQCurve {.
    constructor, importcpp: "Geom2dGcc_QCurve(@)", header: "Geom2dGcc_QCurve.hxx".}
proc qualified*(this: Geom2dGccQCurve): Geom2dAdaptorCurve {.noSideEffect,
    importcpp: "Qualified", header: "Geom2dGcc_QCurve.hxx".}
proc qualifier*(this: Geom2dGccQCurve): GccEntPosition {.noSideEffect,
    importcpp: "Qualifier", header: "Geom2dGcc_QCurve.hxx".}
proc isUnqualified*(this: Geom2dGccQCurve): bool {.noSideEffect,
    importcpp: "IsUnqualified", header: "Geom2dGcc_QCurve.hxx".}
proc isEnclosing*(this: Geom2dGccQCurve): bool {.noSideEffect,
    importcpp: "IsEnclosing", header: "Geom2dGcc_QCurve.hxx".}
proc isEnclosed*(this: Geom2dGccQCurve): bool {.noSideEffect,
    importcpp: "IsEnclosed", header: "Geom2dGcc_QCurve.hxx".}
proc isOutside*(this: Geom2dGccQCurve): bool {.noSideEffect, importcpp: "IsOutside",
    header: "Geom2dGcc_QCurve.hxx".}
