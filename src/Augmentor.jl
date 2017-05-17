module Augmentor

using ImageCore
using ImageTransformations
using ImageFiltering
using CoordinateTransformations
using Rotations
using Interpolations
using StaticArrays
using OffsetArrays
using IdentityRanges
using FileIO
using ShowItLikeYouBuildIt
using Compat
using Base.PermutedDimsArrays: PermutedDimsArray

export

    Rotate90,
    Rotate180,
    Rotate270,
    Rotate,

    ShearX,
    ShearY,

    FlipX,
    FlipY,

    Crop,
    CropNative,
    CropSize,

    Resize,

    Scale,
    Zoom,

    NoOp,
    Either,

    augment,

    testpattern

include("utils.jl")
include("types.jl")
include("operation.jl")

include("operations/noop.jl")
include("operations/rotation.jl")
include("operations/shear.jl")
include("operations/flip.jl")
include("operations/crop.jl")
include("operations/resize.jl")
include("operations/scale.jl")
include("operations/zoom.jl")
include("operations/either.jl")

include("distortionfields.jl")
include("distortedview.jl")

include("pipeline.jl")
include("compile.jl")
include("augment.jl")

end # module
