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

## !!!Ignored construct:  # _PrsMgr_Presentation_HeaderFile [NewLine] # _PrsMgr_Presentation_HeaderFile [NewLine] # < Aspect_TypeOfHighlightMethod . hxx > [NewLine] # < Prs3d_Presentation . hxx > [NewLine] class PrsMgr_PresentationManager ;
## Error: expected ';'!!!

discard "forward decl of PrsMgr_PresentableObject"
discard "forward decl of Quantity_Color"
discard "forward decl of Graphic3d_Camera"
discard "forward decl of Prs3d_Drawer"
discard "forward decl of Graphic3d_Structure"
discard "forward decl of Graphic3d_DataStructureManager"
## !!!Ignored construct:  DEFINE_STANDARD_HANDLE ( PrsMgr_Presentation , Graphic3d_Structure ) class PrsMgr_Presentation : public Graphic3d_Structure { public : typedef Graphic3d_Structure base_type ; static const char * get_type_name ( ) { return PrsMgr_Presentation ; } static const Handle ( Standard_Type ) & get_type_descriptor ( ) ; virtual const Handle ( Standard_Type ) & DynamicType ( ) const ; friend class PrsMgr_PresentationManager ; friend class PrsMgr_PresentableObject ; public : ! Destructor ~ PrsMgr_Presentation ( ) ; Standard_DEPRECATED ( Dummy to simplify porting - returns self ) Prs3d_Presentation * Presentation ( ) { return this ; } ! returns the PresentationManager in which the presentation has been created. const Handle ( PrsMgr_PresentationManager ) & PresentationManager ( ) const { return myPresentationManager ; } void SetUpdateStatus ( const Standard_Boolean theUpdateStatus ) { myMustBeUpdated = theUpdateStatus ; } Standard_Boolean MustBeUpdated ( ) const { return myMustBeUpdated ; } ! Return display mode index. Standard_Integer Mode ( ) const { return myMode ; } ! Display structure. virtual void Display ( ) ; ! Remove structure. virtual void Erase ( ) ; ! Highlight structure. void Highlight ( const Handle ( Prs3d_Drawer ) & theStyle ) ; ! Unhighlight structure. void Unhighlight ( ) ; ! Return TRUE if structure has been displayed and in no hidden state. virtual Standard_Boolean IsDisplayed ( ) const { return base_type :: IsDisplayed ( ) && base_type :: IsVisible ( ) ; } ! removes the whole content of the presentation.
## ! Does not remove the other connected presentations. virtual void Clear ( const Standard_Boolean theWithDestruction = Standard_True ) ; ! Compute structure using presentation manager. virtual void Compute ( ) ; ! Dumps the content of me into the stream virtual void DumpJson ( Standard_OStream & theOStream , Standard_Integer theDepth = - 1 ) const ; protected : ! Main constructor. PrsMgr_Presentation ( const Handle ( PrsMgr_PresentationManager ) & thePresentationManager , const Handle ( PrsMgr_PresentableObject ) & thePresentableObject , const Standard_Integer theMode ) ; ! Displays myStructure. void display ( const Standard_Boolean theIsHighlight ) ; virtual void computeHLR ( const Handle ( Graphic3d_Camera ) & theProjector , Handle ( Graphic3d_Structure ) & theGivenStruct ) ; protected : Handle ( PrsMgr_PresentationManager ) myPresentationManager ; PrsMgr_PresentableObject * myPresentableObject ; Standard_Integer myBeforeHighlightState ; Standard_Integer myMode ; Standard_Boolean myMustBeUpdated ; } ;
## Error: expected ';'!!!














































