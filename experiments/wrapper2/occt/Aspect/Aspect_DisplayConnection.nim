##  Copyright (c) 2013-2014 OPEN CASCADE SAS
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

## !!!Ignored construct:  # _Aspect_DisplayConnection_H__ [NewLine] # _Aspect_DisplayConnection_H__ [NewLine] # < Standard_Transient . hxx > [NewLine] # < Aspect_XAtom . hxx > [NewLine] # < TCollection_AsciiString . hxx > [NewLine] # < NCollection_DataMap . hxx > [NewLine] # ! defined ( _WIN32 ) && ( ! defined ( __APPLE__ ) || defined ( MACOSX_USE_GLX ) ) && ! defined ( __ANDROID__ ) && ! defined ( __QNX__ ) && ! defined ( __EMSCRIPTEN__ ) [NewLine] # < InterfaceGraphic . hxx > [NewLine] # [NewLine] ! This class creates and provides connection with X server.
## ! Raises exception if can not connect to X server.
## ! On Windows and Mac OS X (in case when Cocoa used) platforms this class do nothing.
## ! WARRNING: Do not close display connection manualy! class Aspect_DisplayConnection : public Standard_Transient { public : ! Default constructor. Creates connection with display name taken from "DISPLAY" environment variable Aspect_DisplayConnection ( ) ; ! Destructor. Close opened connection. ~ Aspect_DisplayConnection ( ) ; # ! defined ( _WIN32 ) && ( ! defined ( __APPLE__ ) || defined ( MACOSX_USE_GLX ) ) && ! defined ( __ANDROID__ ) && ! defined ( __QNX__ ) && ! defined ( __EMSCRIPTEN__ ) [NewLine] ! Constructor. Creates connection with display specified in theDisplayName.
## ! Display name should be in format "hostname:number" or "hostname:number.screen_number", where:
## ! hostname      - Specifies the name of the host machine on which the display is physically attached.
## ! number        - Specifies the number of the display server on that host machine.
## ! screen_number - Specifies the screen to be used on that server. Optional variable. Aspect_DisplayConnection ( const TCollection_AsciiString & theDisplayName ) ; ! Constructor wrapping existing Display instance.
## ! WARNING! it is a responsibility of application to keep this pointer
## ! valid while Aspect_DisplayConnection is alive and to close Display when it is no more needed. Aspect_DisplayConnection ( Display * theDisplay ) ; ! @return pointer to Display structure that serves as the connection to the X server. Display * GetDisplay ( ) { return myDisplay ; } ! @return TRUE if X Display has been allocated by this class Standard_Boolean IsOwnDisplay ( ) const { return myIsOwnDisplay ; } ! @return identifier(atom) for custom named property associated with windows that use current connection to X server. Atom GetAtom ( const Aspect_XAtom theAtom ) const ; ! @return display name for this connection. const TCollection_AsciiString & GetDisplayName ( ) { return myDisplayName ; } ! Open connection with display specified in myDisplayName class field
## ! or takes theDisplay parameter when it is not NULL.
## ! WARNING! When external Display is specified, it is a responsibility of application
## ! to keep this pointer valid while Aspect_DisplayConnection is alive
## ! and to close Display when it is no more needed.
## ! @param theDisplay external pointer to allocated Display, or NULL if new connection should be created void Init ( Display * theDisplay ) ; private : Display * myDisplay ; NCollection_DataMap < Aspect_XAtom , Atom > [end of template] myAtoms ; TCollection_AsciiString myDisplayName ; Standard_Boolean myIsOwnDisplay ; # [NewLine] private : ! To protect the connection from closing copying allowed only through the handles. Aspect_DisplayConnection ( const Aspect_DisplayConnection & ) ; Aspect_DisplayConnection & operator = ( const Aspect_DisplayConnection & ) ; public : public : typedef Standard_Transient base_type ; static const char * get_type_name ( ) { return Aspect_DisplayConnection ; } static const Handle ( Standard_Type ) & get_type_descriptor ( ) ; virtual const Handle ( Standard_Type ) & DynamicType ( ) const ;  Type definition } ;
## Error: expected ';'!!!

## !!!Ignored construct:  DEFINE_STANDARD_HANDLE ( Aspect_DisplayConnection , Standard_Transient ) #  _Aspect_DisplayConnection_H__
## Error: expected ';'!!!














































