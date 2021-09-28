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

type
  MeshVS_TwoColors* {.importcpp: "MeshVS_TwoColors",
                     header: "MeshVS_TwoColors.hxx", bycopy.} = object
    r1* {.importc: "r1", bitsize: 8.}: cuint
    g1* {.importc: "g1", bitsize: 8.}: cuint
    b1* {.importc: "b1", bitsize: 8.}: cuint
    r2* {.importc: "r2", bitsize: 8.}: cuint
    g2* {.importc: "g2", bitsize: 8.}: cuint
    b2* {.importc: "b2", bitsize: 8.}: cuint


## ! Computes a hash code for the key, in the range [1, theUpperBound]
## ! @param theKey the key which hash code is to be computed
## ! @param theUpperBound the upper bound of the range a computing hash code must be within
## ! @return a computed hash code, in the range [1, theUpperBound]

proc hashCode*(theKey: MeshVS_TwoColors; theUpperBound: cint): cint {.
    importcpp: "HashCode(@)", header: "MeshVS_TwoColors.hxx".}
proc isEqual*(k1: MeshVS_TwoColors; k2: MeshVS_TwoColors): bool {.
    importcpp: "IsEqual(@)", header: "MeshVS_TwoColors.hxx".}
proc `==`*(k1: MeshVS_TwoColors; k2: MeshVS_TwoColors): bool {.importcpp: "(# == #)",
    header: "MeshVS_TwoColors.hxx".}
proc bindTwoColors*(a1: QuantityColor; a2: QuantityColor): MeshVS_TwoColors {.
    importcpp: "BindTwoColors(@)", header: "MeshVS_TwoColors.hxx".}
proc extractColor*(a1: var MeshVS_TwoColors; a2: cint): QuantityColor {.
    importcpp: "ExtractColor(@)", header: "MeshVS_TwoColors.hxx".}
proc extractColors*(a1: var MeshVS_TwoColors; a2: var QuantityColor;
                   a3: var QuantityColor) {.importcpp: "ExtractColors(@)",
    header: "MeshVS_TwoColors.hxx".}

























