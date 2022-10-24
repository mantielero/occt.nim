type
  QuantityColor* {.importcpp: "Quantity_Color", header: "Quantity_Color.hxx", bycopy.} = object ##
                                                                                        ## !
                                                                                        ## Creates
                                                                                        ## Quantity_NOC_YELLOW
                                                                                        ## color
                                                                                        ## (for
                                                                                        ## historical
                                                                                        ## reasons).
                                                                                        ##
                                                                                        ## !
                                                                                        ## Returns
                                                                                        ## the
                                                                                        ## color
                                                                                        ## from
                                                                                        ## Quantity_NameOfColor
                                                                                        ## enumeration
                                                                                        ## nearest
                                                                                        ## to
                                                                                        ## specified
                                                                                        ## RGB
                                                                                        ## values.
                                                                                        ##
                                                                                        ## !@name
                                                                                        ## Routines
                                                                                        ## converting
                                                                                        ## colors
                                                                                        ## between
                                                                                        ## different
                                                                                        ## encodings
                                                                                        ## and
                                                                                        ## color
                                                                                        ## spaces
                                                                                        ##
                                                                                        ## !
                                                                                        ## Parses
                                                                                        ## the
                                                                                        ## string
                                                                                        ## as
                                                                                        ## a
                                                                                        ## hex
                                                                                        ## color
                                                                                        ## (like
                                                                                        ## "#FF0"
                                                                                        ## for
                                                                                        ## short
                                                                                        ## sRGB
                                                                                        ## color,
                                                                                        ## or
                                                                                        ## "#FFFF00"
                                                                                        ## for
                                                                                        ## sRGB
                                                                                        ## color)
                                                                                        ##
                                                                                        ## !
                                                                                        ## @param
                                                                                        ## theHexColorString
                                                                                        ## the
                                                                                        ## string
                                                                                        ## to
                                                                                        ## be
                                                                                        ## parsed
                                                                                        ##
                                                                                        ## !
                                                                                        ## @param
                                                                                        ## theColor
                                                                                        ## a
                                                                                        ## color
                                                                                        ## that
                                                                                        ## is
                                                                                        ## a
                                                                                        ## result
                                                                                        ## of
                                                                                        ## parsing
                                                                                        ##
                                                                                        ## !
                                                                                        ## @return
                                                                                        ## true
                                                                                        ## if
                                                                                        ## parsing
                                                                                        ## was
                                                                                        ## successful,
                                                                                        ## or
                                                                                        ## false
                                                                                        ## otherwise
                                                                                        ##
                                                                                        ## !
                                                                                        ## Returns
                                                                                        ## the
                                                                                        ## value
                                                                                        ## used
                                                                                        ## to
                                                                                        ## compare
                                                                                        ## two
                                                                                        ## colors
                                                                                        ## for
                                                                                        ## equality;
                                                                                        ## 0.0001
                                                                                        ## by
                                                                                        ## default.
                                                                                        ##
                                                                                        ## !
                                                                                        ## Returns
                                                                                        ## the
                                                                                        ## values
                                                                                        ## of
                                                                                        ## a
                                                                                        ## predefined
                                                                                        ## color
                                                                                        ## according
                                                                                        ## to
                                                                                        ## the
                                                                                        ## mode.
type
  QuantityColorHasher* {.importcpp: "Quantity_ColorHasher",
                        header: "Quantity_ColorHasher.hxx", bycopy.} = object ## ! Returns hash code for the given RGB color, in the range [1,
                                                                         ## theUpperBound]
                                                                         ## ! @param
                                                                         ## theColor the RGB color object which hash code is to be
                                                                         ## computed
                                                                         ## ! @param
                                                                         ## theUpperBound the upper bound of the range a
                                                                         ## computing range must be within
                                                                         ## ! @return a
                                                                         ## computed hash code, in the range [1,
                                                                         ## theUpperBound]
type
  QuantityColorRGBA* {.importcpp: "Quantity_ColorRGBA",
                      header: "Quantity_ColorRGBA.hxx", bycopy.} = object ## ! Creates a color with the default value.
                                                                     ## ! Finds color from predefined names.
                                                                     ## ! For example, the name of the color which corresponds to "BLACK" is
                                                                     ## Quantity_NOC_BLACK.
                                                                     ## ! An alpha component is set to 1.0.
                                                                     ## ! @param
                                                                     ## theColorNameString the color name
                                                                     ## ! @param theColor a found color
                                                                     ## ! @return false if the color name is unknown, or true if the search by color name was successful
                                                                     ## ! Convert linear RGB components into sRGB using OpenGL specs formula.
                                                                     ## ! Dumps the content of me into the stream
type
  QuantityColorRGBAHasher* {.importcpp: "Quantity_ColorRGBAHasher",
                            header: "Quantity_ColorRGBAHasher.hxx", bycopy.} = object ##
                                                                                 ## !
                                                                                 ## Returns
                                                                                 ## hash
                                                                                 ## code
                                                                                 ## for
                                                                                 ## the
                                                                                 ## given
                                                                                 ## RGBA
                                                                                 ## color,
                                                                                 ## in
                                                                                 ## the
                                                                                 ## range
                                                                                 ## [1,
                                                                                 ## theUpperBound]
                                                                                 ##
                                                                                 ## !
                                                                                 ## @param
                                                                                 ## theColor
                                                                                 ## the
                                                                                 ## RGBA
                                                                                 ## color
                                                                                 ## object
                                                                                 ## which
                                                                                 ## hash
                                                                                 ## code
                                                                                 ## is
                                                                                 ## to
                                                                                 ## be
                                                                                 ## computed
                                                                                 ##
                                                                                 ## !
                                                                                 ## @param
                                                                                 ## theUpperBound
                                                                                 ## the
                                                                                 ## upper
                                                                                 ## bound
                                                                                 ## of
                                                                                 ## the
                                                                                 ## range
                                                                                 ## a
                                                                                 ## computing
                                                                                 ## hash
                                                                                 ## code
                                                                                 ## must
                                                                                 ## be
                                                                                 ## within
                                                                                 ##
                                                                                 ## !
                                                                                 ## @return
                                                                                 ## a
                                                                                 ## computed
                                                                                 ## hash
                                                                                 ## code,
                                                                                 ## in
                                                                                 ## the
                                                                                 ## range
                                                                                 ## [1,
                                                                                 ## theUpperBound]
type
  QuantityDate* {.importcpp: "Quantity_Date", header: "Quantity_Date.hxx", bycopy.} = object ##
                                                                                     ## !
                                                                                     ## Constructs
                                                                                     ## a
                                                                                     ## default
                                                                                     ## date
                                                                                     ##
                                                                                     ## !
                                                                                     ## (00:00
                                                                                     ## GMT,
                                                                                     ## January
                                                                                     ## 1,
                                                                                     ## 1979
                                                                                     ## (zero
                                                                                     ## hour));
                                                                                     ## use
                                                                                     ## the
                                                                                     ## function
                                                                                     ##
                                                                                     ## !
                                                                                     ## SetValues
                                                                                     ## to
                                                                                     ## define
                                                                                     ## the
                                                                                     ## required
                                                                                     ## date;
                                                                                     ## or
type
  QuantityHArray1OfColor* {.importcpp: "Quantity_HArray1OfColor",
                           header: "Quantity_HArray1OfColor.hxx", bycopy.} = object of QuantityArray1OfColor
type
  QuantityPeriod* {.importcpp: "Quantity_Period", header: "Quantity_Period.hxx",
                   bycopy.} = object ## ! Creates a Period
                                  ## ! With:      0 <= dd
                                  ## ! 0 <= hh
                                  ## ! 0 <= mn
                                  ## ! 0 <= ss
                                  ## ! 0 <= mis
                                  ## ! 0 <= mics
