##  Created on: 1998-07-29
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

discard "forward decl of Interface_Protocol"
discard "forward decl of StepData_StepModel"
discard "forward decl of IFSelect_Signature"
discard "forward decl of IFSelect_SelectSignature"
discard "forward decl of STEPEdit_EditContext"
discard "forward decl of STEPEdit_EditSDR"
type
  STEPEdit* {.importcpp: "STEPEdit", header: "STEPEdit.hxx", bycopy.} = object ## ! Returns a Protocol fit for STEP (creates the first time)


proc protocol*(): Handle[InterfaceProtocol] {.importcpp: "STEPEdit::Protocol(@)",
    header: "STEPEdit.hxx".}
proc newModel*(): Handle[StepDataStepModel] {.importcpp: "STEPEdit::NewModel(@)",
    header: "STEPEdit.hxx".}
proc signType*(): Handle[IFSelectSignature] {.importcpp: "STEPEdit::SignType(@)",
    header: "STEPEdit.hxx".}
proc newSelectSDR*(): Handle[IFSelectSelectSignature] {.
    importcpp: "STEPEdit::NewSelectSDR(@)", header: "STEPEdit.hxx".}
proc newSelectPlacedItem*(): Handle[IFSelectSelectSignature] {.
    importcpp: "STEPEdit::NewSelectPlacedItem(@)", header: "STEPEdit.hxx".}
proc newSelectShapeRepr*(): Handle[IFSelectSelectSignature] {.
    importcpp: "STEPEdit::NewSelectShapeRepr(@)", header: "STEPEdit.hxx".}

