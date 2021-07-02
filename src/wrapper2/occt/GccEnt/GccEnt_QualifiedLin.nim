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

discard "forward decl of gp_Lin2d"
type
  GccEntQualifiedLin* {.importcpp: "GccEnt_QualifiedLin",
                       header: "GccEnt_QualifiedLin.hxx", bycopy.} = object ## !
                                                                       ## Constructs a qualified line by assigning the qualifier
                                                                       ## ! Qualifier to the line
                                                                       ## Qualified.
                                                                       ## ! Qualifier may be:
                                                                       ## ! -
                                                                       ## GccEnt_enclosed if the solution is enclosed by the line, or
                                                                       ## ! -
                                                                       ## GccEnt_outside if both the solution and the line are external to one another, or
                                                                       ## ! -
                                                                       ## GccEnt_unqualified if all solutions apply.
                                                                       ## ! Note : the interior of a line is defined as the left-hand
                                                                       ## ! side of the line in relation to its
                                                                       ## orientation.


proc constructGccEntQualifiedLin*(qualified: GpLin2d; qualifier: GccEntPosition): GccEntQualifiedLin {.
    constructor, importcpp: "GccEnt_QualifiedLin(@)",
    header: "GccEnt_QualifiedLin.hxx".}
proc qualified*(this: GccEntQualifiedLin): GpLin2d {.noSideEffect,
    importcpp: "Qualified", header: "GccEnt_QualifiedLin.hxx".}
proc qualifier*(this: GccEntQualifiedLin): GccEntPosition {.noSideEffect,
    importcpp: "Qualifier", header: "GccEnt_QualifiedLin.hxx".}
proc isUnqualified*(this: GccEntQualifiedLin): StandardBoolean {.noSideEffect,
    importcpp: "IsUnqualified", header: "GccEnt_QualifiedLin.hxx".}
proc isEnclosed*(this: GccEntQualifiedLin): StandardBoolean {.noSideEffect,
    importcpp: "IsEnclosed", header: "GccEnt_QualifiedLin.hxx".}
proc isOutside*(this: GccEntQualifiedLin): StandardBoolean {.noSideEffect,
    importcpp: "IsOutside", header: "GccEnt_QualifiedLin.hxx".}

