##  Created on: 1991-10-10
##  Created by: Jean Claude VAUTHIER
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

discard "forward decl of Standard_OutOfRange"
discard "forward decl of gp_Pnt"
type
  ConvertElementarySurfaceToBSplineSurface* {.
      importcpp: "Convert_ElementarySurfaceToBSplineSurface",
      header: "Convert_ElementarySurfaceToBSplineSurface.hxx", bycopy.} = object of RootObj


proc uDegree*(this: ConvertElementarySurfaceToBSplineSurface): cint {.noSideEffect,
    cdecl, importcpp: "UDegree", dynlib: tkmath.}
proc vDegree*(this: ConvertElementarySurfaceToBSplineSurface): cint {.noSideEffect,
    cdecl, importcpp: "VDegree", dynlib: tkmath.}
proc nbUPoles*(this: ConvertElementarySurfaceToBSplineSurface): cint {.noSideEffect,
    cdecl, importcpp: "NbUPoles", dynlib: tkmath.}
proc nbVPoles*(this: ConvertElementarySurfaceToBSplineSurface): cint {.noSideEffect,
    cdecl, importcpp: "NbVPoles", dynlib: tkmath.}
proc nbUKnots*(this: ConvertElementarySurfaceToBSplineSurface): cint {.noSideEffect,
    cdecl, importcpp: "NbUKnots", dynlib: tkmath.}
proc nbVKnots*(this: ConvertElementarySurfaceToBSplineSurface): cint {.noSideEffect,
    cdecl, importcpp: "NbVKnots", dynlib: tkmath.}
proc isUPeriodic*(this: ConvertElementarySurfaceToBSplineSurface): bool {.
    noSideEffect, cdecl, importcpp: "IsUPeriodic", dynlib: tkmath.}
proc isVPeriodic*(this: ConvertElementarySurfaceToBSplineSurface): bool {.
    noSideEffect, cdecl, importcpp: "IsVPeriodic", dynlib: tkmath.}
proc pole*(this: ConvertElementarySurfaceToBSplineSurface; uIndex: cint; vIndex: cint): Pnt {.
    noSideEffect, cdecl, importcpp: "Pole", dynlib: tkmath.}
proc weight*(this: ConvertElementarySurfaceToBSplineSurface; uIndex: cint;
            vIndex: cint): cfloat {.noSideEffect, cdecl, importcpp: "Weight",
                                 dynlib: tkmath.}
proc uKnot*(this: ConvertElementarySurfaceToBSplineSurface; uIndex: cint): cfloat {.
    noSideEffect, cdecl, importcpp: "UKnot", dynlib: tkmath.}
proc vKnot*(this: ConvertElementarySurfaceToBSplineSurface; uIndex: cint): cfloat {.
    noSideEffect, cdecl, importcpp: "VKnot", dynlib: tkmath.}
proc uMultiplicity*(this: ConvertElementarySurfaceToBSplineSurface; uIndex: cint): cint {.
    noSideEffect, cdecl, importcpp: "UMultiplicity", dynlib: tkmath.}
proc vMultiplicity*(this: ConvertElementarySurfaceToBSplineSurface; vIndex: cint): cint {.
    noSideEffect, cdecl, importcpp: "VMultiplicity", dynlib: tkmath.}