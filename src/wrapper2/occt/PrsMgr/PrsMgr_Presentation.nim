##  Created on: 1995-01-25
##  Created by: Jean-Louis Frenkel
##  Copyright (c) 1995-1999 Matra Datavision
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

discard "forward decl of PrsMgr_PresentationManager"
discard "forward decl of PrsMgr_PresentableObject"
discard "forward decl of Quantity_Color"
discard "forward decl of Graphic3d_Camera"
discard "forward decl of Prs3d_Drawer"
discard "forward decl of Graphic3d_Structure"
discard "forward decl of Graphic3d_DataStructureManager"
discard "forward decl of PrsMgr_Presentation"
type
  HandlePrsMgrPresentation* = Handle[PrsMgrPresentation]
  PrsMgrPresentation* {.importcpp: "PrsMgr_Presentation",
                       header: "PrsMgr_Presentation.hxx", bycopy.} = object of Graphic3dStructure ##
                                                                                           ## !
                                                                                           ## Destructor
                                                                                           ##
                                                                                           ## !
                                                                                           ## Main
                                                                                           ## constructor.

  PrsMgrPresentationbaseType* = Graphic3dStructure

proc getTypeName*(): cstring {.importcpp: "PrsMgr_Presentation::get_type_name(@)",
                            header: "PrsMgr_Presentation.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "PrsMgr_Presentation::get_type_descriptor(@)",
    header: "PrsMgr_Presentation.hxx".}
proc dynamicType*(this: PrsMgrPresentation): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "PrsMgr_Presentation.hxx".}
proc destroyPrsMgrPresentation*(this: var PrsMgrPresentation) {.
    importcpp: "#.~PrsMgr_Presentation()", header: "PrsMgr_Presentation.hxx".}
## !!!Ignored construct:  Standard_DEPRECATED ( Dummy to simplify porting - returns self ) Prs3d_Presentation * Presentation ( ) { return this ; } ! returns the PresentationManager in which the presentation has been created. const opencascade :: handle < PrsMgr_PresentationManager > [end of template] & PresentationManager ( ) const { return myPresentationManager ; } void SetUpdateStatus ( const Standard_Boolean theUpdateStatus ) { myMustBeUpdated = theUpdateStatus ; } Standard_Boolean MustBeUpdated ( ) const { return myMustBeUpdated ; } ! Return display mode index. Standard_Integer Mode ( ) const { return myMode ; } ! Display structure. virtual void Display ( ) ;
## Error: identifier expected, but got: Dummy to simplify porting - returns self!!!

proc erase*(this: var PrsMgrPresentation) {.importcpp: "Erase",
                                        header: "PrsMgr_Presentation.hxx".}
proc highlight*(this: var PrsMgrPresentation; theStyle: Handle[Prs3dDrawer]) {.
    importcpp: "Highlight", header: "PrsMgr_Presentation.hxx".}
proc unhighlight*(this: var PrsMgrPresentation) {.importcpp: "Unhighlight",
    header: "PrsMgr_Presentation.hxx".}
proc isDisplayed*(this: PrsMgrPresentation): StandardBoolean {.noSideEffect,
    importcpp: "IsDisplayed", header: "PrsMgr_Presentation.hxx".}
proc clear*(this: var PrsMgrPresentation;
           theWithDestruction: StandardBoolean = standardTrue) {.importcpp: "Clear",
    header: "PrsMgr_Presentation.hxx".}
proc compute*(this: var PrsMgrPresentation) {.importcpp: "Compute",
    header: "PrsMgr_Presentation.hxx".}
proc dumpJson*(this: PrsMgrPresentation; theOStream: var StandardOStream;
              theDepth: StandardInteger = -1) {.noSideEffect, importcpp: "DumpJson",
    header: "PrsMgr_Presentation.hxx".}

