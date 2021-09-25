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
      header: "Convert_ElementarySurfaceToBSplineSurface.hxx", bycopy.} = object


proc uDegree*(this: ConvertElementarySurfaceToBSplineSurface): int {.noSideEffect,
    importcpp: "UDegree", header: "Convert_ElementarySurfaceToBSplineSurface.hxx".}
proc vDegree*(this: ConvertElementarySurfaceToBSplineSurface): int {.noSideEffect,
    importcpp: "VDegree", header: "Convert_ElementarySurfaceToBSplineSurface.hxx".}
proc nbUPoles*(this: ConvertElementarySurfaceToBSplineSurface): int {.noSideEffect,
    importcpp: "NbUPoles", header: "Convert_ElementarySurfaceToBSplineSurface.hxx".}
proc nbVPoles*(this: ConvertElementarySurfaceToBSplineSurface): int {.noSideEffect,
    importcpp: "NbVPoles", header: "Convert_ElementarySurfaceToBSplineSurface.hxx".}
proc nbUKnots*(this: ConvertElementarySurfaceToBSplineSurface): int {.noSideEffect,
    importcpp: "NbUKnots", header: "Convert_ElementarySurfaceToBSplineSurface.hxx".}
proc nbVKnots*(this: ConvertElementarySurfaceToBSplineSurface): int {.noSideEffect,
    importcpp: "NbVKnots", header: "Convert_ElementarySurfaceToBSplineSurface.hxx".}
proc isUPeriodic*(this: ConvertElementarySurfaceToBSplineSurface): bool {.
    noSideEffect, importcpp: "IsUPeriodic",
    header: "Convert_ElementarySurfaceToBSplineSurface.hxx".}
proc isVPeriodic*(this: ConvertElementarySurfaceToBSplineSurface): bool {.
    noSideEffect, importcpp: "IsVPeriodic",
    header: "Convert_ElementarySurfaceToBSplineSurface.hxx".}
proc pole*(this: ConvertElementarySurfaceToBSplineSurface; uIndex: int; vIndex: int): Pnt {.
    noSideEffect, importcpp: "Pole",
    header: "Convert_ElementarySurfaceToBSplineSurface.hxx".}
proc weight*(this: ConvertElementarySurfaceToBSplineSurface; uIndex: int; vIndex: int): float {.
    noSideEffect, importcpp: "Weight",
    header: "Convert_ElementarySurfaceToBSplineSurface.hxx".}
proc uKnot*(this: ConvertElementarySurfaceToBSplineSurface; uIndex: int): float {.
    noSideEffect, importcpp: "UKnot",
    header: "Convert_ElementarySurfaceToBSplineSurface.hxx".}
proc vKnot*(this: ConvertElementarySurfaceToBSplineSurface; uIndex: int): float {.
    noSideEffect, importcpp: "VKnot",
    header: "Convert_ElementarySurfaceToBSplineSurface.hxx".}
proc uMultiplicity*(this: ConvertElementarySurfaceToBSplineSurface; uIndex: int): int {.
    noSideEffect, importcpp: "UMultiplicity",
    header: "Convert_ElementarySurfaceToBSplineSurface.hxx".}
proc vMultiplicity*(this: ConvertElementarySurfaceToBSplineSurface; vIndex: int): int {.
    noSideEffect, importcpp: "VMultiplicity",
    header: "Convert_ElementarySurfaceToBSplineSurface.hxx".}
