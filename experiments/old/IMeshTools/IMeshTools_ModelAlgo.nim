##  Created on: 2016-04-19
##  Copyright (c) 2016 OPEN CASCADE SAS
##  Created by: Oleg AGASHIN
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

discard "forward decl of IMeshData_Model"
discard "forward decl of IMeshTools_Parameters"
type
  IMeshToolsModelAlgo* {.importcpp: "IMeshTools_ModelAlgo",
                        header: "IMeshTools_ModelAlgo.hxx", bycopy.} = object of StandardTransient ##
                                                                                            ## !
                                                                                            ## Destructor.
                                                                                            ##
                                                                                            ## !
                                                                                            ## Constructor.
    standardType* {.importc: "Standard_Type".}: Handle


proc destroyIMeshToolsModelAlgo*(this: var IMeshToolsModelAlgo) {.
    importcpp: "#.~IMeshTools_ModelAlgo()", header: "IMeshTools_ModelAlgo.hxx".}
## !!!Ignored construct:  ! Exceptions protected processing of the given model. Standard_Boolean Perform ( const Handle ( IMeshData_Model ) & theModel , const IMeshTools_Parameters & theParameters , const Message_ProgressRange & theRange ) { try { OCC_CATCH_SIGNALS return performInternal ( theModel , theParameters , theRange ) ; } catch ( Standard_Failure const & ) { return Standard_False ; } } public : typedef Standard_Transient base_type ;
## Error: token expected: ) but got: &!!!

proc getTypeName*(): cstring {.importcpp: "IMeshTools_ModelAlgo::get_type_name(@)",
                            header: "IMeshTools_ModelAlgo.hxx".}
## !!!Ignored construct:  & get_type_descriptor ( ) ;
## Error: identifier expected, but got: &!!!

## !!!Ignored construct:  & DynamicType ( ) const ;
## Error: identifier expected, but got: &!!!

## !!!Ignored construct:  ! Performs processing of the given model. virtual Standard_Boolean performInternal ( const Handle ( IMeshData_Model ) & theModel , const IMeshTools_Parameters & theParameters , const Message_ProgressRange & theRange ) = 0 ;
## Error: token expected: ) but got: &!!!














































