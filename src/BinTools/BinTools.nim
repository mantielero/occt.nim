##  Created on: 2004-05-11
##  Created by: Sergey ZARITCHNY <szy@opencascade.com>
##  Copyright (c) 2004-2014 OPEN CASCADE SAS
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

discard "forward decl of TopoDS_Shape"
discard "forward decl of BinTools_ShapeSet"
discard "forward decl of BinTools_Curve2dSet"
discard "forward decl of BinTools_CurveSet"
discard "forward decl of BinTools_SurfaceSet"
discard "forward decl of BinTools_LocationSet"
type
  BinTools* {.importcpp: "BinTools", header: "BinTools.hxx", bycopy.} = object


proc putReal*(os: var StandardOStream; theValue: cfloat): var StandardOStream {.
    importcpp: "BinTools::PutReal(@)", header: "BinTools.hxx".}
proc putShortReal*(os: var StandardOStream; theValue: StandardShortReal): var StandardOStream {.
    importcpp: "BinTools::PutShortReal(@)", header: "BinTools.hxx".}
proc putInteger*(os: var StandardOStream; theValue: cint): var StandardOStream {.
    importcpp: "BinTools::PutInteger(@)", header: "BinTools.hxx".}
proc putBool*(os: var StandardOStream; theValue: bool): var StandardOStream {.
    importcpp: "BinTools::PutBool(@)", header: "BinTools.hxx".}
proc putExtChar*(os: var StandardOStream; theValue: StandardExtCharacter): var StandardOStream {.
    importcpp: "BinTools::PutExtChar(@)", header: "BinTools.hxx".}
proc getReal*(`is`: var StandardIStream; theValue: var cfloat): var StandardIStream {.
    importcpp: "BinTools::GetReal(@)", header: "BinTools.hxx".}
proc getShortReal*(`is`: var StandardIStream; theValue: var StandardShortReal): var StandardIStream {.
    importcpp: "BinTools::GetShortReal(@)", header: "BinTools.hxx".}
proc getInteger*(`is`: var StandardIStream; theValue: var cint): var StandardIStream {.
    importcpp: "BinTools::GetInteger(@)", header: "BinTools.hxx".}
proc getBool*(`is`: var StandardIStream; theValue: var bool): var StandardIStream {.
    importcpp: "BinTools::GetBool(@)", header: "BinTools.hxx".}
proc getExtChar*(`is`: var StandardIStream; theValue: var StandardExtCharacter): var StandardIStream {.
    importcpp: "BinTools::GetExtChar(@)", header: "BinTools.hxx".}
proc write*(theShape: TopoDS_Shape; theStream: var StandardOStream;
           theRange: MessageProgressRange = messageProgressRange()) {.
    importcpp: "BinTools::Write(@)", header: "BinTools.hxx".}
proc read*(theShape: var TopoDS_Shape; theStream: var StandardIStream;
          theRange: MessageProgressRange = messageProgressRange()) {.
    importcpp: "BinTools::Read(@)", header: "BinTools.hxx".}
proc write*(theShape: TopoDS_Shape; theFile: StandardCString;
           theRange: MessageProgressRange = messageProgressRange()): bool {.
    importcpp: "BinTools::Write(@)", header: "BinTools.hxx".}
proc read*(theShape: var TopoDS_Shape; theFile: StandardCString;
          theRange: MessageProgressRange = messageProgressRange()): bool {.
    importcpp: "BinTools::Read(@)", header: "BinTools.hxx".}

























