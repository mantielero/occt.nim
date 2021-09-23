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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../TColgp/TColgp_Array2OfPnt,
  ../TColStd/TColStd_Array2OfReal, ../TColStd/TColStd_Array1OfReal,
  ../TColStd/TColStd_Array1OfInteger, ../Standard/Standard_Integer,
  ../Standard/Standard_Boolean, ../Standard/Standard_Real

discard "forward decl of Standard_OutOfRange"
discard "forward decl of gp_Pnt"
type
  Convert_ElementarySurfaceToBSplineSurface* {.
      importcpp: "Convert_ElementarySurfaceToBSplineSurface",
      header: "Convert_ElementarySurfaceToBSplineSurface.hxx", bycopy.} = object


proc UDegree*(this: Convert_ElementarySurfaceToBSplineSurface): Standard_Integer {.
    noSideEffect, importcpp: "UDegree",
    header: "Convert_ElementarySurfaceToBSplineSurface.hxx".}
proc VDegree*(this: Convert_ElementarySurfaceToBSplineSurface): Standard_Integer {.
    noSideEffect, importcpp: "VDegree",
    header: "Convert_ElementarySurfaceToBSplineSurface.hxx".}
proc NbUPoles*(this: Convert_ElementarySurfaceToBSplineSurface): Standard_Integer {.
    noSideEffect, importcpp: "NbUPoles",
    header: "Convert_ElementarySurfaceToBSplineSurface.hxx".}
proc NbVPoles*(this: Convert_ElementarySurfaceToBSplineSurface): Standard_Integer {.
    noSideEffect, importcpp: "NbVPoles",
    header: "Convert_ElementarySurfaceToBSplineSurface.hxx".}
proc NbUKnots*(this: Convert_ElementarySurfaceToBSplineSurface): Standard_Integer {.
    noSideEffect, importcpp: "NbUKnots",
    header: "Convert_ElementarySurfaceToBSplineSurface.hxx".}
proc NbVKnots*(this: Convert_ElementarySurfaceToBSplineSurface): Standard_Integer {.
    noSideEffect, importcpp: "NbVKnots",
    header: "Convert_ElementarySurfaceToBSplineSurface.hxx".}
proc IsUPeriodic*(this: Convert_ElementarySurfaceToBSplineSurface): Standard_Boolean {.
    noSideEffect, importcpp: "IsUPeriodic",
    header: "Convert_ElementarySurfaceToBSplineSurface.hxx".}
proc IsVPeriodic*(this: Convert_ElementarySurfaceToBSplineSurface): Standard_Boolean {.
    noSideEffect, importcpp: "IsVPeriodic",
    header: "Convert_ElementarySurfaceToBSplineSurface.hxx".}
proc Pole*(this: Convert_ElementarySurfaceToBSplineSurface;
          UIndex: Standard_Integer; VIndex: Standard_Integer): gp_Pnt {.noSideEffect,
    importcpp: "Pole", header: "Convert_ElementarySurfaceToBSplineSurface.hxx".}
proc Weight*(this: Convert_ElementarySurfaceToBSplineSurface;
            UIndex: Standard_Integer; VIndex: Standard_Integer): Standard_Real {.
    noSideEffect, importcpp: "Weight",
    header: "Convert_ElementarySurfaceToBSplineSurface.hxx".}
proc UKnot*(this: Convert_ElementarySurfaceToBSplineSurface;
           UIndex: Standard_Integer): Standard_Real {.noSideEffect,
    importcpp: "UKnot", header: "Convert_ElementarySurfaceToBSplineSurface.hxx".}
proc VKnot*(this: Convert_ElementarySurfaceToBSplineSurface;
           UIndex: Standard_Integer): Standard_Real {.noSideEffect,
    importcpp: "VKnot", header: "Convert_ElementarySurfaceToBSplineSurface.hxx".}
proc UMultiplicity*(this: Convert_ElementarySurfaceToBSplineSurface;
                   UIndex: Standard_Integer): Standard_Integer {.noSideEffect,
    importcpp: "UMultiplicity",
    header: "Convert_ElementarySurfaceToBSplineSurface.hxx".}
proc VMultiplicity*(this: Convert_ElementarySurfaceToBSplineSurface;
                   VIndex: Standard_Integer): Standard_Integer {.noSideEffect,
    importcpp: "VMultiplicity",
    header: "Convert_ElementarySurfaceToBSplineSurface.hxx".}