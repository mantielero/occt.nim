##  Created on: 2016-12-13
##  Copyright (c) 2016 OPEN CASCADE SAS
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

## ! Hasher of Quantity_Color.

type
  QuantityColorHasher* {.importcpp: "Quantity_ColorHasher",
                        header: "Quantity_ColorHasher.hxx", bycopy.} = object ## ! Returns hash code for the given RGB color, in the range [1,
                                                                         ## theUpperBound]
                                                                         ## ! @param
                                                                         ## theColor the RGB color object which hash code is to be
                                                                         ## computed
                                                                         ## ! @param
                                                                         ## theUpperBound the upper bound of the range a
                                                                         ## computing range must be within
                                                                         ## ! @return a
                                                                         ## computed hash code, in the range [1,
                                                                         ## theUpperBound]


proc hashCode*(theColor: QuantityColor; theUpperBound: StandardInteger): StandardInteger {.
    importcpp: "Quantity_ColorHasher::HashCode(@)",
    header: "Quantity_ColorHasher.hxx".}
proc isEqual*(theColor1: QuantityColor; theColor2: QuantityColor): StandardBoolean {.
    importcpp: "Quantity_ColorHasher::IsEqual(@)",
    header: "Quantity_ColorHasher.hxx".}

