##  Created on: 2012-01-19
##  Created by: Dmitry BOBYLEV
##  Copyright (c) 2012-2014 OPEN CASCADE SAS
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

## !!!Ignored construct:  # _NCollection_DefineAlloc_HeaderFile [NewLine] # _NCollection_DefineAlloc_HeaderFile [NewLine] # < NCollection_BaseAllocator . hxx > [NewLine]  Macro to overload placement new and delete operators for NCollection allocators.
##  For Borland C and old SUN compilers do not define placement delete
##  as it is not supported. # defined ( __BORLANDC__ ) || ( defined ( __SUNPRO_CC ) && ( __SUNPRO_CC <= 0x530 ) ) [NewLine] # void * operator new ( size_t theSize , const opencascade :: handle < NCollection_BaseAllocator > & theAllocator ) { return theAllocator -> Allocate ( theSize ) ; } [NewLine] # [NewLine] # void * operator new ( size_t theSize , const opencascade :: handle < NCollection_BaseAllocator > & theAllocator ) { return theAllocator -> Allocate ( theSize ) ; } void operator delete ( void * theAddress , const opencascade :: handle < NCollection_BaseAllocator > & theAllocator ) { theAllocator -> Free ( theAddress ) ; } [NewLine] # [NewLine] # [NewLine]
## Error: token expected: ) but got: [identifier]!!!


