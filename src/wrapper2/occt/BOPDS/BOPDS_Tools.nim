##  Created by: Peter KURNEV
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

## ! The class BOPDS_Tools contains
## ! a set auxiliary static functions
## ! of the package BOPDS

type
  BOPDS_Tools* {.importcpp: "BOPDS_Tools", header: "BOPDS_Tools.hxx", bycopy.} = object ##
                                                                                ## !
                                                                                ## Converts
                                                                                ## the
                                                                                ## conmbination
                                                                                ## of
                                                                                ## two
                                                                                ## types
                                                                                ##
                                                                                ## !
                                                                                ## of
                                                                                ## shape
                                                                                ## <theT1>,<theT2>
                                                                                ##
                                                                                ## !
                                                                                ## to
                                                                                ## the
                                                                                ## one
                                                                                ## integer
                                                                                ## value,
                                                                                ## that
                                                                                ## is
                                                                                ## returned


proc typeToInteger*(theT1: TopAbsShapeEnum; theT2: TopAbsShapeEnum): StandardInteger {.
    importcpp: "BOPDS_Tools::TypeToInteger(@)", header: "BOPDS_Tools.hxx".}
proc typeToInteger*(theT: TopAbsShapeEnum): StandardInteger {.
    importcpp: "BOPDS_Tools::TypeToInteger(@)", header: "BOPDS_Tools.hxx".}
proc hasBRep*(theT: TopAbsShapeEnum): StandardBoolean {.
    importcpp: "BOPDS_Tools::HasBRep(@)", header: "BOPDS_Tools.hxx".}
proc isInterfering*(theT: TopAbsShapeEnum): StandardBoolean {.
    importcpp: "BOPDS_Tools::IsInterfering(@)", header: "BOPDS_Tools.hxx".}

