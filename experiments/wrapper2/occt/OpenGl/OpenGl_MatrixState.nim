##  Created on: 2014-09-30
##  Created by: Denis BOGOLEPOV
##  Copyright (c) 2014 OPEN CASCADE SAS
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

## ! Software implementation for OpenGL matrix stack.

type
  OpenGlMatrixState*[T] {.importcpp: "OpenGl_MatrixState<\'0>",
                         header: "OpenGl_MatrixState.hxx", bycopy.} = object ## !
                                                                        ## Constructs matrix state object.
    openGl* {.importc: "OpenGl".}: Typename
    openGl* {.importc: "OpenGl".}: Typename
    myStackHead* {.importc: "myStackHead".}: int ## !< Index of stack head


proc constructOpenGlMatrixState*[T](): OpenGlMatrixState[T] {.constructor,
    importcpp: "OpenGl_MatrixState<\'*0>(@)", header: "OpenGl_MatrixState.hxx".}
proc push*[T](this: var OpenGlMatrixState[T]) {.importcpp: "Push",
    header: "OpenGl_MatrixState.hxx".}
proc pop*[T](this: var OpenGlMatrixState[T]) {.importcpp: "Pop",
    header: "OpenGl_MatrixState.hxx".}
## !!!Ignored construct:  :: MatrixType < T > :: Mat4 & Current ( ) { return myCurrent ; } ! Sets given matrix as current. void SetCurrent ( const typename OpenGl :: MatrixType < T > :: Mat4 & theNewCurrent ) { myCurrent = theNewCurrent ; } ! Change current matrix. typename OpenGl :: MatrixType < T > :: Mat4 & ChangeCurrent ( ) { return myCurrent ; } ! Sets given matrix as current. template < typename Other_t > void SetCurrent ( const typename OpenGl :: MatrixType < Other_t > :: Mat4 & theNewCurrent ) { myCurrent . Convert ( theNewCurrent ) ; } ! Sets current matrix to identity. void SetIdentity ( ) { myCurrent = typename OpenGl :: MatrixType < T > :: Mat4 ( ) ; } ! Dumps the content of me into the stream void DumpJson ( Standard_OStream & theOStream , Standard_Integer theDepth = - 1 ) const { ( void ) theDepth ; OCCT_DUMP_FIELD_VALUES_NUMERICAL ( theOStream , myCurrent , 16 , myCurrent . GetValue ( 0 , 0 ) , myCurrent . GetValue ( 0 , 1 ) , myCurrent . GetValue ( 0 , 2 ) , myCurrent . GetValue ( 0 , 3 ) , myCurrent . GetValue ( 1 , 0 ) , myCurrent . GetValue ( 1 , 1 ) , myCurrent . GetValue ( 1 , 2 ) , myCurrent . GetValue ( 1 , 3 ) , myCurrent . GetValue ( 2 , 0 ) , myCurrent . GetValue ( 2 , 1 ) , myCurrent . GetValue ( 2 , 2 ) , myCurrent . GetValue ( 2 , 3 ) , myCurrent . GetValue ( 3 , 0 ) , myCurrent . GetValue ( 3 , 1 ) , myCurrent . GetValue ( 3 , 2 ) , myCurrent . GetValue ( 3 , 3 ) ) OCCT_DUMP_FIELD_VALUE_NUMERICAL ( theOStream , myStack . Size ( ) ) OCCT_DUMP_FIELD_VALUE_NUMERICAL ( theOStream , myStackHead ) } private : NCollection_Vector < typename OpenGl :: MatrixType < T > :: Mat4 > myStack ;
## Error: identifier expected, but got: ::!!!

## !!!Ignored construct:  :: MatrixType < T > :: Mat4 myCurrent ;
## Error: identifier expected, but got: ::!!!

