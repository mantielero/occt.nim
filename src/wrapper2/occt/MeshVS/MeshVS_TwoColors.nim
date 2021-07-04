##  Created on: 2003-10-08
##  Created by: Alexander SOLOVYOV
##  Copyright (c) 2003-2014 OPEN CASCADE SAS
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
  ../Quantity/Quantity_Color

type
  MeshVS_TwoColors* {.importcpp: "MeshVS_TwoColors",
                     header: "MeshVS_TwoColors.hxx", bycopy.} = object
    r1* {.importc: "r1".} {.bitsize: 8.}: cuint
    g1* {.importc: "g1".} {.bitsize: 8.}: cuint
    b1* {.importc: "b1".} {.bitsize: 8.}: cuint
    r2* {.importc: "r2".} {.bitsize: 8.}: cuint
    g2* {.importc: "g2".} {.bitsize: 8.}: cuint
    b2* {.importc: "b2".} {.bitsize: 8.}: cuint


## ! Computes a hash code for the key, in the range [1, theUpperBound]
## ! @param theKey the key which hash code is to be computed
## ! @param theUpperBound the upper bound of the range a computing hash code must be within
## ! @return a computed hash code, in the range [1, theUpperBound]

proc HashCode*(theKey: MeshVS_TwoColors; theUpperBound: Standard_Integer): Standard_Integer {.
    importcpp: "HashCode(@)", header: "MeshVS_TwoColors.hxx".}
proc IsEqual*(K1: MeshVS_TwoColors; K2: MeshVS_TwoColors): Standard_Boolean {.
    importcpp: "IsEqual(@)", header: "MeshVS_TwoColors.hxx".}
proc `==`*(K1: MeshVS_TwoColors; K2: MeshVS_TwoColors): Standard_Boolean {.
    importcpp: "(# == #)", header: "MeshVS_TwoColors.hxx".}
proc BindTwoColors*(a1: Quantity_Color; a2: Quantity_Color): MeshVS_TwoColors {.
    importcpp: "BindTwoColors(@)", header: "MeshVS_TwoColors.hxx".}
proc ExtractColor*(a1: var MeshVS_TwoColors; a2: Standard_Integer): Quantity_Color {.
    importcpp: "ExtractColor(@)", header: "MeshVS_TwoColors.hxx".}
proc ExtractColors*(a1: var MeshVS_TwoColors; a2: var Quantity_Color;
                   a3: var Quantity_Color) {.importcpp: "ExtractColors(@)",
    header: "MeshVS_TwoColors.hxx".}