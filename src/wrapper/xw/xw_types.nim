import ../aspect/aspect_types
import ../standard/standard_types
#import x11/xlib
#export xlib
type
  #XEvent* = XEvent

  # ! This class defines XLib window intended for creation of OpenGL context. 

  XwWindow* {.importcpp: "Xw_Window", header: "Xw_Window.hxx", bycopy.} = object of AspectWindow ##
                                                                                       ## !
                                                                                       ## Convert
                                                                                       ## X11
                                                                                       ## virtual
                                                                                       ## key
                                                                                       ## (KeySym)
                                                                                       ## into
                                                                                       ## Aspect_VKey.
                                                                                       ##
                                                                                       ## !
                                                                                       ## Creates
                                                                                       ## a
                                                                                       ## XLib
                                                                                       ## window
                                                                                       ## defined
                                                                                       ## by
                                                                                       ## his
                                                                                       ## position
                                                                                       ## and
                                                                                       ## size
                                                                                       ## in
                                                                                       ## pixels.
                                                                                       ##
                                                                                       ## !
                                                                                       ## Throws
                                                                                       ## exception
                                                                                       ## if
                                                                                       ## window
                                                                                       ## can
                                                                                       ## not
                                                                                       ## be
                                                                                       ## created
                                                                                       ## or
                                                                                       ## Display
                                                                                       ## do
                                                                                       ## not
                                                                                       ## support
                                                                                       ## GLX
                                                                                       ## extension.
    ## !< XLib window handle
    ## !< GLXFBConfig
    ## !< left   position in pixels
    ## !< top    position in pixels
    ## !< right  position in pixels
    ## !< bottom position in pixels
    ## !< flag to indicate own window handle (to be deallocated on destruction)


  HandleXwWindow* = Handle[XwWindow]

