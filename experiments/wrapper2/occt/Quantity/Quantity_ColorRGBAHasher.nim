##  Copyright (c) 2017 OPEN CASCADE SAS
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

## ! Hasher of Quantity_ColorRGBA.

type
  QuantityColorRGBAHasher* {.importcpp: "Quantity_ColorRGBAHasher",
                            header: "Quantity_ColorRGBAHasher.hxx", bycopy.} = object ##
                                                                                 ## !
                                                                                 ## Returns
                                                                                 ## hash
                                                                                 ## code
                                                                                 ## for
                                                                                 ## the
                                                                                 ## given
                                                                                 ## RGBA
                                                                                 ## color,
                                                                                 ## in
                                                                                 ## the
                                                                                 ## range
                                                                                 ## [1,
                                                                                 ## theUpperBound]
                                                                                 ##
                                                                                 ## !
                                                                                 ## @param
                                                                                 ## theColor
                                                                                 ## the
                                                                                 ## RGBA
                                                                                 ## color
                                                                                 ## object
                                                                                 ## which
                                                                                 ## hash
                                                                                 ## code
                                                                                 ## is
                                                                                 ## to
                                                                                 ## be
                                                                                 ## computed
                                                                                 ##
                                                                                 ## !
                                                                                 ## @param
                                                                                 ## theUpperBound
                                                                                 ## the
                                                                                 ## upper
                                                                                 ## bound
                                                                                 ## of
                                                                                 ## the
                                                                                 ## range
                                                                                 ## a
                                                                                 ## computing
                                                                                 ## hash
                                                                                 ## code
                                                                                 ## must
                                                                                 ## be
                                                                                 ## within
                                                                                 ##
                                                                                 ## !
                                                                                 ## @return
                                                                                 ## a
                                                                                 ## computed
                                                                                 ## hash
                                                                                 ## code,
                                                                                 ## in
                                                                                 ## the
                                                                                 ## range
                                                                                 ## [1,
                                                                                 ## theUpperBound]


proc hashCode*(theColor: QuantityColorRGBA; theUpperBound: int): int {.
    importcpp: "Quantity_ColorRGBAHasher::HashCode(@)",
    header: "Quantity_ColorRGBAHasher.hxx".}
proc isEqual*(theColor1: QuantityColorRGBA; theColor2: QuantityColorRGBA): bool {.
    importcpp: "Quantity_ColorRGBAHasher::IsEqual(@)",
    header: "Quantity_ColorRGBAHasher.hxx".}
