##  Created on: 1991-03-05
##  Created by: Remy GILET
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
  GccEnt_Position, ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle

discard "forward decl of GccEnt_QualifiedLin"
discard "forward decl of gp_Lin2d"
discard "forward decl of GccEnt_QualifiedCirc"
discard "forward decl of gp_Circ2d"
discard "forward decl of GccEnt_QualifiedLin"
discard "forward decl of GccEnt_QualifiedCirc"
type
  GccEnt* {.importcpp: "GccEnt", header: "GccEnt.hxx", bycopy.} = object ## ! Prints the name of Position type as a String on the Stream.


proc Print*(thePosition: GccEnt_Position; theStream: var Standard_OStream): var Standard_OStream {.
    importcpp: "GccEnt::Print(@)", header: "GccEnt.hxx".}
proc PositionToString*(thePosition: GccEnt_Position): Standard_CString {.
    importcpp: "GccEnt::PositionToString(@)", header: "GccEnt.hxx".}
proc PositionFromString*(thePositionString: Standard_CString): GccEnt_Position {.
    importcpp: "GccEnt::PositionFromString(@)", header: "GccEnt.hxx".}
proc PositionFromString*(thePositionString: Standard_CString;
                        thePosition: var GccEnt_Position): Standard_Boolean {.
    importcpp: "GccEnt::PositionFromString(@)", header: "GccEnt.hxx".}
proc Unqualified*(Obj: gp_Lin2d): GccEnt_QualifiedLin {.
    importcpp: "GccEnt::Unqualified(@)", header: "GccEnt.hxx".}
proc Unqualified*(Obj: gp_Circ2d): GccEnt_QualifiedCirc {.
    importcpp: "GccEnt::Unqualified(@)", header: "GccEnt.hxx".}
proc Enclosing*(Obj: gp_Circ2d): GccEnt_QualifiedCirc {.
    importcpp: "GccEnt::Enclosing(@)", header: "GccEnt.hxx".}
proc Enclosed*(Obj: gp_Lin2d): GccEnt_QualifiedLin {.
    importcpp: "GccEnt::Enclosed(@)", header: "GccEnt.hxx".}
proc Enclosed*(Obj: gp_Circ2d): GccEnt_QualifiedCirc {.
    importcpp: "GccEnt::Enclosed(@)", header: "GccEnt.hxx".}
proc Outside*(Obj: gp_Lin2d): GccEnt_QualifiedLin {.importcpp: "GccEnt::Outside(@)",
    header: "GccEnt.hxx".}
proc Outside*(Obj: gp_Circ2d): GccEnt_QualifiedCirc {.
    importcpp: "GccEnt::Outside(@)", header: "GccEnt.hxx".}