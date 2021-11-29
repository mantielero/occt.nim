##  Created on: 1998-05-20
##  Created by: Christian CAILLET
##  Copyright (c) 1998-1999 Matra Datavision
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

discard "forward decl of TCollection_AsciiString"
discard "forward decl of Standard_Transient"
discard "forward decl of Interface_SignLabel"
type
  HandleInterfaceSignLabel* = Handle[InterfaceSignLabel]

## ! Signature to give the Label from the Model

type
  InterfaceSignLabel* {.importcpp: "Interface_SignLabel",
                       header: "Interface_SignLabel.hxx", bycopy.} = object of RootObj


proc newInterfaceSignLabel*(): InterfaceSignLabel {.cdecl, constructor,
    importcpp: "Interface_SignLabel(@)", header: "Interface_SignLabel.hxx".}
proc name*(this: InterfaceSignLabel): cstring {.noSideEffect, cdecl,
    importcpp: "Name", header: "Interface_SignLabel.hxx".}
proc text*(this: InterfaceSignLabel; ent: Handle[StandardTransient];
          context: Handle[StandardTransient]): TCollectionAsciiString {.
    noSideEffect, cdecl, importcpp: "Text", header: "Interface_SignLabel.hxx".}