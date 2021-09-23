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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, GccEnt_Position, ../gp/gp_Lin2d,
  ../Standard/Standard_Boolean

discard "forward decl of gp_Lin2d"
type
  GccEnt_QualifiedLin* {.importcpp: "GccEnt_QualifiedLin",
                        header: "GccEnt_QualifiedLin.hxx", bycopy.} = object ## !
                                                                        ## Constructs a
                                                                        ## qualified line by
                                                                        ## assigning the
                                                                        ## qualifier
                                                                        ## !
                                                                        ## Qualifier to the line
                                                                        ## Qualified.
                                                                        ## !
                                                                        ## Qualifier may be:
                                                                        ## ! -
                                                                        ## GccEnt_enclosed if the solution is enclosed by the line, or
                                                                        ## ! -
                                                                        ## GccEnt_outside if both the solution and the line are external to one another, or
                                                                        ## ! -
                                                                        ## GccEnt_unqualified if all
                                                                        ## solutions apply.
                                                                        ## ! Note : the interior of a line is defined as the
                                                                        ## left-hand
                                                                        ## ! side of the line in relation to its
                                                                        ## orientation.


proc constructGccEnt_QualifiedLin*(Qualified: gp_Lin2d; Qualifier: GccEnt_Position): GccEnt_QualifiedLin {.
    constructor, importcpp: "GccEnt_QualifiedLin(@)",
    header: "GccEnt_QualifiedLin.hxx".}
proc Qualified*(this: GccEnt_QualifiedLin): gp_Lin2d {.noSideEffect,
    importcpp: "Qualified", header: "GccEnt_QualifiedLin.hxx".}
proc Qualifier*(this: GccEnt_QualifiedLin): GccEnt_Position {.noSideEffect,
    importcpp: "Qualifier", header: "GccEnt_QualifiedLin.hxx".}
proc IsUnqualified*(this: GccEnt_QualifiedLin): Standard_Boolean {.noSideEffect,
    importcpp: "IsUnqualified", header: "GccEnt_QualifiedLin.hxx".}
proc IsEnclosed*(this: GccEnt_QualifiedLin): Standard_Boolean {.noSideEffect,
    importcpp: "IsEnclosed", header: "GccEnt_QualifiedLin.hxx".}
proc IsOutside*(this: GccEnt_QualifiedLin): Standard_Boolean {.noSideEffect,
    importcpp: "IsOutside", header: "GccEnt_QualifiedLin.hxx".}