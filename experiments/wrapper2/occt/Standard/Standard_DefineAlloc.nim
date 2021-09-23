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

## !!!Ignored construct:  # _Standard_DefineAlloc_HeaderFile [NewLine] # _Standard_DefineAlloc_HeaderFile [NewLine]  Macro to override new and delete operators for arrays.
##  Defined to empty for old SUN compiler # defined ( __SUNPRO_CC ) && ( __SUNPRO_CC <= 0x530 ) [NewLine] # [NewLine] # [NewLine] # void * operator new [ ] ( size_t theSize ) { return Standard :: Allocate ( theSize ) ; } void operator delete [ ] ( void * theAddress ) { Standard :: Free ( theAddress ) ; } [NewLine] # [NewLine]  Macro to override placement new and placement delete operators.
##  For Borland C and old SUN compilers do not define placement delete
##  as it is not supported. # defined ( __BORLANDC__ ) || ( defined ( __SUNPRO_CC ) && ( __SUNPRO_CC <= 0x530 ) ) [NewLine] # DEFINE_STANDARD_ALLOC_PLACEMENT void * operator new ( size_t , void * theAddress ) { return theAddress ; } [NewLine] # [NewLine] # DEFINE_STANDARD_ALLOC_PLACEMENT void * operator new ( size_t , void * theAddress ) { return theAddress ; } void operator delete ( void * , void * ) { } [NewLine] # [NewLine]  Macro to override operators new and delete to use OCC memory manager # void * operator new ( size_t theSize ) { return Standard :: Allocate ( theSize ) ; } void operator delete ( void * theAddress ) { Standard :: Free ( theAddress ) ; } DEFINE_STANDARD_ALLOC_PLACEMENT [NewLine]  Declare operator new in global scope for old sun compiler # WORKAROUND_SUNPRO_NEW_PLACEMENT [NewLine] # WORKAROUND_SUNPRO_NEW_PLACEMENT [NewLine] # defined ( __SUNPRO_CC ) && ( __SUNPRO_CC <= 0x420 ) [NewLine] inline void * operator new ( size_t , void * anAddress ) { return anAddress ; } # [NewLine] # [NewLine] ! @def STANDARD_ALIGNED(theAlignment, theType, theVar)
## ! Declare variable with memory alignment.
## ! @code
## !   static const STANDARD_ALIGNED(8, char, THE_ARRAY)[] = {0xFF, 0xFE, 0xFA, 0xFB, 0xFF, 0x11, 0x22, 0x33};
## ! @endcode # defined ( _MSC_VER ) [NewLine] # STANDARD_ALIGNED ( theAlignment , theType , theVar ) __declspec ( align ( theAlignment ) ) theType theVar [NewLine] # defined ( __GNUC__ ) [NewLine] # STANDARD_ALIGNED ( theAlignment , theType , theVar ) theType __attribute__ ( ( aligned ( theAlignment ) ) ) theVar [NewLine] # [NewLine] # STANDARD_ALIGNED ( theAlignment , theType , theVar ) theType theVar [NewLine] # [NewLine] #  _Standard_DefineAlloc_HeaderFile [NewLine]
## Error: token expected: ) but got: [identifier]!!!
