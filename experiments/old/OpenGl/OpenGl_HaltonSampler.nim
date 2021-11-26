##  Copyright (c) 2012 Leonhard Gruenschloss (leonhard@gruenschloss.org)
##
##  Permission is hereby granted, free of charge, to any person obtaining a copy
##  of this software and associated documentation files (the "Software"), to deal
##  in the Software without restriction, including without limitation the rights to
##  use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies
##  of the Software, and to permit persons to whom the Software is furnished to do
##  so, subject to the following conditions:
##
##  The above copyright notice and this permission notice shall be included in
##  all copies or substantial portions of the Software.
##
##  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
##  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
##  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
##  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
##  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
##  OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
##  SOFTWARE.

## ! Compute points of the Halton sequence with digit-permutations for different bases.

type
  OpenGlHaltonSampler* {.importcpp: "OpenGl_HaltonSampler",
                        header: "OpenGl_HaltonSampler.hxx", bycopy.} = object ## ! Return the number of
                                                                         ## supported
                                                                         ## dimensions.
                                                                         ## ! Init the
                                                                         ## permutation arrays using
                                                                         ## Faure-permutations.
                                                                         ## ! Init the
                                                                         ## permutation arrays using
                                                                         ## Faure-permutations.


proc getNumDimensions*(): cuint {.importcpp: "OpenGl_HaltonSampler::get_num_dimensions(@)",
                               header: "OpenGl_HaltonSampler.hxx".}
proc constructOpenGlHaltonSampler*(): OpenGlHaltonSampler {.constructor,
    importcpp: "OpenGl_HaltonSampler(@)", header: "OpenGl_HaltonSampler.hxx".}
proc sample*(this: OpenGlHaltonSampler; theDimension: cuint; theIndex: cuint): cfloat {.
    noSideEffect, importcpp: "sample", header: "OpenGl_HaltonSampler.hxx".}
proc initFaure*(this: var OpenGlHaltonSampler) {.importcpp: "initFaure",
    header: "OpenGl_HaltonSampler.hxx".}

























