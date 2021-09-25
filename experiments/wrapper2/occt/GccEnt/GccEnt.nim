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

discard "forward decl of GccEnt_QualifiedLin"
discard "forward decl of gp_Lin2d"
discard "forward decl of GccEnt_QualifiedCirc"
discard "forward decl of gp_Circ2d"
discard "forward decl of GccEnt_QualifiedLin"
discard "forward decl of GccEnt_QualifiedCirc"
type
  GccEnt* {.importcpp: "GccEnt", header: "GccEnt.hxx", bycopy.} = object ## ! Prints the name of Position type as a String on the Stream.


proc print*(thePosition: GccEntPosition; theStream: var StandardOStream): var StandardOStream {.
    importcpp: "GccEnt::Print(@)", header: "GccEnt.hxx".}
proc positionToString*(thePosition: GccEntPosition): StandardCString {.
    importcpp: "GccEnt::PositionToString(@)", header: "GccEnt.hxx".}
proc positionFromString*(thePositionString: StandardCString): GccEntPosition {.
    importcpp: "GccEnt::PositionFromString(@)", header: "GccEnt.hxx".}
proc positionFromString*(thePositionString: StandardCString;
                        thePosition: var GccEntPosition): bool {.
    importcpp: "GccEnt::PositionFromString(@)", header: "GccEnt.hxx".}
proc unqualified*(obj: Lin2d): GccEntQualifiedLin {.
    importcpp: "GccEnt::Unqualified(@)", header: "GccEnt.hxx".}
proc unqualified*(obj: Circ2d): GccEntQualifiedCirc {.
    importcpp: "GccEnt::Unqualified(@)", header: "GccEnt.hxx".}
proc enclosing*(obj: Circ2d): GccEntQualifiedCirc {.
    importcpp: "GccEnt::Enclosing(@)", header: "GccEnt.hxx".}
proc enclosed*(obj: Lin2d): GccEntQualifiedLin {.importcpp: "GccEnt::Enclosed(@)",
    header: "GccEnt.hxx".}
proc enclosed*(obj: Circ2d): GccEntQualifiedCirc {.importcpp: "GccEnt::Enclosed(@)",
    header: "GccEnt.hxx".}
proc outside*(obj: Lin2d): GccEntQualifiedLin {.importcpp: "GccEnt::Outside(@)",
    header: "GccEnt.hxx".}
proc outside*(obj: Circ2d): GccEntQualifiedCirc {.importcpp: "GccEnt::Outside(@)",
    header: "GccEnt.hxx".}
