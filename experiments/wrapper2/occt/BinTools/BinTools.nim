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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../Standard/Standard_Real,
  ../Standard/Standard_Integer, ../Standard/Standard_Boolean,
  ../Standard/Standard_ExtCharacter, ../Standard/Standard_OStream,
  ../Standard/Standard_IStream, ../Message/Message_ProgressRange

discard "forward decl of TopoDS_Shape"
discard "forward decl of BinTools_ShapeSet"
discard "forward decl of BinTools_Curve2dSet"
discard "forward decl of BinTools_CurveSet"
discard "forward decl of BinTools_SurfaceSet"
discard "forward decl of BinTools_LocationSet"
type
  BinTools* {.importcpp: "BinTools", header: "BinTools.hxx", bycopy.} = object


proc PutReal*(OS: var Standard_OStream; theValue: Standard_Real): var Standard_OStream {.
    importcpp: "BinTools::PutReal(@)", header: "BinTools.hxx".}
proc PutShortReal*(OS: var Standard_OStream; theValue: Standard_ShortReal): var Standard_OStream {.
    importcpp: "BinTools::PutShortReal(@)", header: "BinTools.hxx".}
proc PutInteger*(OS: var Standard_OStream; theValue: Standard_Integer): var Standard_OStream {.
    importcpp: "BinTools::PutInteger(@)", header: "BinTools.hxx".}
proc PutBool*(OS: var Standard_OStream; theValue: Standard_Boolean): var Standard_OStream {.
    importcpp: "BinTools::PutBool(@)", header: "BinTools.hxx".}
proc PutExtChar*(OS: var Standard_OStream; theValue: Standard_ExtCharacter): var Standard_OStream {.
    importcpp: "BinTools::PutExtChar(@)", header: "BinTools.hxx".}
proc GetReal*(IS: var Standard_IStream; theValue: var Standard_Real): var Standard_IStream {.
    importcpp: "BinTools::GetReal(@)", header: "BinTools.hxx".}
proc GetShortReal*(IS: var Standard_IStream; theValue: var Standard_ShortReal): var Standard_IStream {.
    importcpp: "BinTools::GetShortReal(@)", header: "BinTools.hxx".}
proc GetInteger*(IS: var Standard_IStream; theValue: var Standard_Integer): var Standard_IStream {.
    importcpp: "BinTools::GetInteger(@)", header: "BinTools.hxx".}
proc GetBool*(IS: var Standard_IStream; theValue: var Standard_Boolean): var Standard_IStream {.
    importcpp: "BinTools::GetBool(@)", header: "BinTools.hxx".}
proc GetExtChar*(IS: var Standard_IStream; theValue: var Standard_ExtCharacter): var Standard_IStream {.
    importcpp: "BinTools::GetExtChar(@)", header: "BinTools.hxx".}
proc Write*(theShape: TopoDS_Shape; theStream: var Standard_OStream;
           theRange: Message_ProgressRange = Message_ProgressRange()) {.
    importcpp: "BinTools::Write(@)", header: "BinTools.hxx".}
proc Read*(theShape: var TopoDS_Shape; theStream: var Standard_IStream;
          theRange: Message_ProgressRange = Message_ProgressRange()) {.
    importcpp: "BinTools::Read(@)", header: "BinTools.hxx".}
proc Write*(theShape: TopoDS_Shape; theFile: Standard_CString;
           theRange: Message_ProgressRange = Message_ProgressRange()): Standard_Boolean {.
    importcpp: "BinTools::Write(@)", header: "BinTools.hxx".}
proc Read*(theShape: var TopoDS_Shape; theFile: Standard_CString;
          theRange: Message_ProgressRange = Message_ProgressRange()): Standard_Boolean {.
    importcpp: "BinTools::Read(@)", header: "BinTools.hxx".}