##  Created by: Eugeny MALTCHIKOV
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

import
  ../Standard/Standard_Integer, ../Standard/Standard_Boolean, IntPolyh_Couple

discard "forward decl of IntPolyh_Couple"
type
  IntPolyh_CoupleMapHasher* {.importcpp: "IntPolyh_CoupleMapHasher",
                             header: "IntPolyh_CoupleMapHasher.hxx", bycopy.} = object ##
                                                                                  ## !
                                                                                  ## Computes
                                                                                  ## a
                                                                                  ## hash
                                                                                  ## code
                                                                                  ## for
                                                                                  ## the
                                                                                  ## given
                                                                                  ## couple,
                                                                                  ## in
                                                                                  ## the
                                                                                  ## range
                                                                                  ## [1,
                                                                                  ## theUpperBound]
                                                                                  ##
                                                                                  ## !
                                                                                  ## @param
                                                                                  ## theCouple
                                                                                  ## the
                                                                                  ## couple
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


proc HashCode*(theCouple: IntPolyh_Couple; theUpperBound: Standard_Integer): Standard_Integer {.
    importcpp: "IntPolyh_CoupleMapHasher::HashCode(@)",
    header: "IntPolyh_CoupleMapHasher.hxx".}
proc IsEqual*(theCouple1: IntPolyh_Couple; theCouple2: IntPolyh_Couple): Standard_Boolean {.
    importcpp: "IntPolyh_CoupleMapHasher::IsEqual(@)",
    header: "IntPolyh_CoupleMapHasher.hxx".}