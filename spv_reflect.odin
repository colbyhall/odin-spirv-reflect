package spv_reflect

foreign import "spirv_reflect.lib"

import _c "core:c"

SourceLanguage :: enum i32 {
    Unknown = 0,
    ESSL = 1,
    GLSL = 2,
    OpenCL_C = 3,
    OpenCL_CPP = 4,
    HLSL = 5,
    Max = 0x7fffffff,
}

ExecutionModel :: enum i32 {
    Vertex = 0,
    TessellationControl = 1,
    TessellationEvaluation = 2,
    Geometry = 3,
    Fragment = 4,
    GLCompute = 5,
    Kernel = 6,
    TaskNV = 5267,
    MeshNV = 5268,
    RayGenerationKHR = 5313,
    RayGenerationNV = 5313,
    IntersectionKHR = 5314,
    IntersectionNV = 5314,
    AnyHitKHR = 5315,
    AnyHitNV = 5315,
    ClosestHitKHR = 5316,
    ClosestHitNV = 5316,
    MissKHR = 5317,
    MissNV = 5317,
    CallableKHR = 5318,
    CallableNV = 5318,
    Max = 0x7fffffff,
}

BuiltIn :: enum i32 {
    Position = 0,
    PointSize = 1,
    ClipDistance = 3,
    CullDistance = 4,
    VertexId = 5,
    InstanceId = 6,
    PrimitiveId = 7,
    InvocationId = 8,
    Layer = 9,
    ViewportIndex = 10,
    TessLevelOuter = 11,
    TessLevelInner = 12,
    TessCoord = 13,
    PatchVertices = 14,
    FragCoord = 15,
    PointCoord = 16,
    FrontFacing = 17,
    SampleId = 18,
    SamplePosition = 19,
    SampleMask = 20,
    FragDepth = 22,
    HelperInvocation = 23,
    NumWorkgroups = 24,
    WorkgroupSize = 25,
    WorkgroupId = 26,
    LocalInvocationId = 27,
    GlobalInvocationId = 28,
    LocalInvocationIndex = 29,
    WorkDim = 30,
    GlobalSize = 31,
    EnqueuedWorkgroupSize = 32,
    GlobalOffset = 33,
    GlobalLinearId = 34,
    SubgroupSize = 36,
    SubgroupMaxSize = 37,
    NumSubgroups = 38,
    NumEnqueuedSubgroups = 39,
    SubgroupId = 40,
    SubgroupLocalInvocationId = 41,
    VertexIndex = 42,
    InstanceIndex = 43,
    SubgroupEqMask = 4416,
    SubgroupEqMaskKHR = 4416,
    SubgroupGeMask = 4417,
    SubgroupGeMaskKHR = 4417,
    SubgroupGtMask = 4418,
    SubgroupGtMaskKHR = 4418,
    SubgroupLeMask = 4419,
    SubgroupLeMaskKHR = 4419,
    SubgroupLtMask = 4420,
    SubgroupLtMaskKHR = 4420,
    BaseVertex = 4424,
    BaseInstance = 4425,
    DrawIndex = 4426,
    PrimitiveShadingRateKHR = 4432,
    DeviceIndex = 4438,
    ViewIndex = 4440,
    ShadingRateKHR = 4444,
    BaryCoordNoPerspAMD = 4992,
    BaryCoordNoPerspCentroidAMD = 4993,
    BaryCoordNoPerspSampleAMD = 4994,
    BaryCoordSmoothAMD = 4995,
    BaryCoordSmoothCentroidAMD = 4996,
    BaryCoordSmoothSampleAMD = 4997,
    BaryCoordPullModelAMD = 4998,
    FragStencilRefEXT = 5014,
    ViewportMaskNV = 5253,
    SecondaryPositionNV = 5257,
    SecondaryViewportMaskNV = 5258,
    PositionPerViewNV = 5261,
    ViewportMaskPerViewNV = 5262,
    FullyCoveredEXT = 5264,
    TaskCountNV = 5274,
    PrimitiveCountNV = 5275,
    PrimitiveIndicesNV = 5276,
    ClipDistancePerViewNV = 5277,
    CullDistancePerViewNV = 5278,
    LayerPerViewNV = 5279,
    MeshViewCountNV = 5280,
    MeshViewIndicesNV = 5281,
    BaryCoordNV = 5286,
    BaryCoordNoPerspNV = 5287,
    FragSizeEXT = 5292,
    FragmentSizeNV = 5292,
    FragInvocationCountEXT = 5293,
    InvocationsPerPixelNV = 5293,
    LaunchIdKHR = 5319,
    LaunchIdNV = 5319,
    LaunchSizeKHR = 5320,
    LaunchSizeNV = 5320,
    WorldRayOriginKHR = 5321,
    WorldRayOriginNV = 5321,
    WorldRayDirectionKHR = 5322,
    WorldRayDirectionNV = 5322,
    ObjectRayOriginKHR = 5323,
    ObjectRayOriginNV = 5323,
    ObjectRayDirectionKHR = 5324,
    ObjectRayDirectionNV = 5324,
    RayTminKHR = 5325,
    RayTminNV = 5325,
    RayTmaxKHR = 5326,
    RayTmaxNV = 5326,
    InstanceCustomIndexKHR = 5327,
    InstanceCustomIndexNV = 5327,
    ObjectToWorldKHR = 5330,
    ObjectToWorldNV = 5330,
    WorldToObjectKHR = 5331,
    WorldToObjectNV = 5331,
    HitTNV = 5332,
    HitKindKHR = 5333,
    HitKindNV = 5333,
    IncomingRayFlagsKHR = 5351,
    IncomingRayFlagsNV = 5351,
    RayGeometryIndexKHR = 5352,
    WarpsPerSMNV = 5374,
    SMCountNV = 5375,
    WarpIDNV = 5376,
    SMIDNV = 5377,
    Max = 0x7fffffff,
}

StorageClass :: enum i32 {
    UniformConstant = 0,
    Input = 1,
    Uniform = 2,
    Output = 3,
    Workgroup = 4,
    CrossWorkgroup = 5,
    Private = 6,
    Function = 7,
    Generic = 8,
    PushConstant = 9,
    AtomicCounter = 10,
    Image = 11,
    StorageBuffer = 12,
    CallableDataKHR = 5328,
    CallableDataNV = 5328,
    IncomingCallableDataKHR = 5329,
    IncomingCallableDataNV = 5329,
    RayPayloadKHR = 5338,
    RayPayloadNV = 5338,
    HitAttributeKHR = 5339,
    HitAttributeNV = 5339,
    IncomingRayPayloadKHR = 5342,
    IncomingRayPayloadNV = 5342,
    ShaderRecordBufferKHR = 5343,
    ShaderRecordBufferNV = 5343,
    PhysicalStorageBuffer = 5349,
    PhysicalStorageBufferEXT = 5349,
    CodeSectionINTEL = 5605,
    Max = 0x7fffffff,
}

Op :: enum i32 {
    Nop = 0,
    Undef = 1,
    SourceContinued = 2,
    Source = 3,
    SourceExtension = 4,
    Name = 5,
    MemberName = 6,
    String = 7,
    Line = 8,
    Extension = 10,
    ExtInstImport = 11,
    ExtInst = 12,
    MemoryModel = 14,
    EntryPoint = 15,
    ExecutionMode = 16,
    Capability = 17,
    TypeVoid = 19,
    TypeBool = 20,
    TypeInt = 21,
    TypeFloat = 22,
    TypeVector = 23,
    TypeMatrix = 24,
    TypeImage = 25,
    TypeSampler = 26,
    TypeSampledImage = 27,
    TypeArray = 28,
    TypeRuntimeArray = 29,
    TypeStruct = 30,
    Typeaque = 31,
    TypePointer = 32,
    TypeFunction = 33,
    TypeEvent = 34,
    TypeDeviceEvent = 35,
    TypeReserveId = 36,
    TypeQueue = 37,
    TypePipe = 38,
    TypeForwardPointer = 39,
    ConstantTrue = 41,
    ConstantFalse = 42,
    Constant = 43,
    ConstantComposite = 44,
    ConstantSampler = 45,
    ConstantNull = 46,
    SpecConstantTrue = 48,
    SpecConstantFalse = 49,
    SpecConstant = 50,
    SpecConstantComposite = 51,
    SpecConstant2 = 52,
    Function = 54,
    FunctionParameter = 55,
    FunctionEnd = 56,
    FunctionCall = 57,
    Variable = 59,
    ImageTexelPointer = 60,
    Load = 61,
    Store = 62,
    CopyMemory = 63,
    CopyMemorySized = 64,
    AccessChain = 65,
    InBoundsAccessChain = 66,
    PtrAccessChain = 67,
    ArrayLength = 68,
    GenericPtrMemSemantics = 69,
    InBoundsPtrAccessChain = 70,
    Decorate = 71,
    MemberDecorate = 72,
    DecorationGroup = 73,
    GroupDecorate = 74,
    GroupMemberDecorate = 75,
    VectorExtractDynamic = 77,
    VectorInsertDynamic = 78,
    VectorShuffle = 79,
    CompositeConstruct = 80,
    CompositeExtract = 81,
    CompositeInsert = 82,
    CopyObject = 83,
    Transpose = 84,
    SampledImage = 86,
    ImageSampleImplicitLod = 87,
    ImageSampleExplicitLod = 88,
    ImageSampleDrefImplicitLod = 89,
    ImageSampleDrefExplicitLod = 90,
    ImageSampleProjImplicitLod = 91,
    ImageSampleProjExplicitLod = 92,
    ImageSampleProjDrefImplicitLod = 93,
    ImageSampleProjDrefExplicitLod = 94,
    ImageFetch = 95,
    ImageGather = 96,
    ImageDrefGather = 97,
    ImageRead = 98,
    ImageWrite = 99,
    Image = 100,
    ImageQueryFormat = 101,
    ImageQueryOrder = 102,
    ImageQuerySizeLod = 103,
    ImageQuerySize = 104,
    ImageQueryLod = 105,
    ImageQueryLevels = 106,
    ImageQuerySamples = 107,
    ConvertFToU = 109,
    ConvertFToS = 110,
    ConvertSToF = 111,
    ConvertUToF = 112,
    UConvert = 113,
    SConvert = 114,
    FConvert = 115,
    QuantizeToF16 = 116,
    ConvertPtrToU = 117,
    SatConvertSToU = 118,
    SatConvertUToS = 119,
    ConvertUToPtr = 120,
    PtrCastToGeneric = 121,
    GenericCastToPtr = 122,
    GenericCastToPtrExplicit = 123,
    Bitcast = 124,
    SNegate = 126,
    FNegate = 127,
    IAdd = 128,
    FAdd = 129,
    ISub = 130,
    FSub = 131,
    IMul = 132,
    FMul = 133,
    UDiv = 134,
    SDiv = 135,
    FDiv = 136,
    UMod = 137,
    SRem = 138,
    SMod = 139,
    FRem = 140,
    FMod = 141,
    VectorTimesScalar = 142,
    MatrixTimesScalar = 143,
    VectorTimesMatrix = 144,
    MatrixTimesVector = 145,
    MatrixTimesMatrix = 146,
    OuterProduct = 147,
    Dot = 148,
    IAddCarry = 149,
    ISubBorrow = 150,
    UMulExtended = 151,
    SMulExtended = 152,
    Any = 154,
    All = 155,
    IsNan = 156,
    IsInf = 157,
    IsFinite = 158,
    IsNormal = 159,
    SignBitSet = 160,
    LessOrGreater = 161,
    Ordered = 162,
    Unordered = 163,
    LogicalEqual = 164,
    LogicalNotEqual = 165,
    LogicalOr = 166,
    LogicalAnd = 167,
    LogicalNot = 168,
    Select = 169,
    IEqual = 170,
    INotEqual = 171,
    UGreaterThan = 172,
    SGreaterThan = 173,
    UGreaterThanEqual = 174,
    SGreaterThanEqual = 175,
    ULessThan = 176,
    SLessThan = 177,
    ULessThanEqual = 178,
    SLessThanEqual = 179,
    FOrdEqual = 180,
    FUnordEqual = 181,
    FOrdNotEqual = 182,
    FUnordNotEqual = 183,
    FOrdLessThan = 184,
    FUnordLessThan = 185,
    FOrdGreaterThan = 186,
    FUnordGreaterThan = 187,
    FOrdLessThanEqual = 188,
    FUnordLessThanEqual = 189,
    FOrdGreaterThanEqual = 190,
    FUnordGreaterThanEqual = 191,
    ShiftRightLogical = 194,
    ShiftRightArithmetic = 195,
    ShiftLeftLogical = 196,
    BitwiseOr = 197,
    BitwiseXor = 198,
    BitwiseAnd = 199,
    Not = 200,
    BitFieldInsert = 201,
    BitFieldSExtract = 202,
    BitFieldUExtract = 203,
    BitReverse = 204,
    BitCount = 205,
    DPdx = 207,
    DPdy = 208,
    Fwidth = 209,
    DPdxFine = 210,
    DPdyFine = 211,
    FwidthFine = 212,
    DPdxCoarse = 213,
    DPdyCoarse = 214,
    FwidthCoarse = 215,
    EmitVertex = 218,
    EndPrimitive = 219,
    EmitStreamVertex = 220,
    EndStreamPrimitive = 221,
    ControlBarrier = 224,
    MemoryBarrier = 225,
    AtomicLoad = 227,
    AtomicStore = 228,
    AtomicExchange = 229,
    AtomicCompareExchange = 230,
    AtomicCompareExchangeWeak = 231,
    AtomicIIncrement = 232,
    AtomicIDecrement = 233,
    AtomicIAdd = 234,
    AtomicISub = 235,
    AtomicSMin = 236,
    AtomicUMin = 237,
    AtomicSMax = 238,
    AtomicUMax = 239,
    AtomicAnd = 240,
    AtomicOr = 241,
    AtomicXor = 242,
    Phi = 245,
    LoopMerge = 246,
    SelectionMerge = 247,
    Label = 248,
    Branch = 249,
    BranchConditional = 250,
    Switch = 251,
    Kill = 252,
    Return = 253,
    ReturnValue = 254,
    Unreachable = 255,
    LifetimeStart = 256,
    LifetimeStop = 257,
    GroupAsyncCopy = 259,
    GroupWaitEvents = 260,
    GroupAll = 261,
    GroupAny = 262,
    GroupBroadcast = 263,
    GroupIAdd = 264,
    GroupFAdd = 265,
    GroupFMin = 266,
    GroupUMin = 267,
    GroupSMin = 268,
    GroupFMax = 269,
    GroupUMax = 270,
    GroupSMax = 271,
    ReadPipe = 274,
    WritePipe = 275,
    ReservedReadPipe = 276,
    ReservedWritePipe = 277,
    ReserveReadPipePackets = 278,
    ReserveWritePipePackets = 279,
    CommitReadPipe = 280,
    CommitWritePipe = 281,
    IsValidReserveId = 282,
    GetNumPipePackets = 283,
    GetMaxPipePackets = 284,
    GroupReserveReadPipePackets = 285,
    GroupReserveWritePipePackets = 286,
    GroupCommitReadPipe = 287,
    GroupCommitWritePipe = 288,
    EnqueueMarker = 291,
    EnqueueKernel = 292,
    GetKernelNDrangeSubGroupCount = 293,
    GetKernelNDrangeMaxSubGroupSize = 294,
    GetKernelWorkGroupSize = 295,
    GetKernelPreferredWorkGroupSizeMultiple = 296,
    RetainEvent = 297,
    ReleaseEvent = 298,
    CreateUserEvent = 299,
    IsValidEvent = 300,
    SetUserEventStatus = 301,
    CaptureEventProfilingInfo = 302,
    GetDefaultQueue = 303,
    BuildNDRange = 304,
    ImageSparseSampleImplicitLod = 305,
    ImageSparseSampleExplicitLod = 306,
    ImageSparseSampleDrefImplicitLod = 307,
    ImageSparseSampleDrefExplicitLod = 308,
    ImageSparseSampleProjImplicitLod = 309,
    ImageSparseSampleProjExplicitLod = 310,
    ImageSparseSampleProjDrefImplicitLod = 311,
    ImageSparseSampleProjDrefExplicitLod = 312,
    ImageSparseFetch = 313,
    ImageSparseGather = 314,
    ImageSparseDrefGather = 315,
    ImageSparseTexelsResident = 316,
    NoLine = 317,
    AtomicFlagTestAndSet = 318,
    AtomicFlagClear = 319,
    ImageSparseRead = 320,
    SizeOf = 321,
    TypePipeStorage = 322,
    ConstantPipeStorage = 323,
    CreatePipeFromPipeStorage = 324,
    GetKernelLocalSizeForSubgroupCount = 325,
    GetKernelMaxNumSubgroups = 326,
    TypeNamedBarrier = 327,
    NamedBarrierInitialize = 328,
    MemoryNamedBarrier = 329,
    ModuleProcessed = 330,
    ExecutionModeId = 331,
    DecorateId = 332,
    GroupNonUniformElect = 333,
    GroupNonUniformAll = 334,
    GroupNonUniformAny = 335,
    GroupNonUniformAllEqual = 336,
    GroupNonUniformBroadcast = 337,
    GroupNonUniformBroadcastFirst = 338,
    GroupNonUniformBallot = 339,
    GroupNonUniformInverseBallot = 340,
    GroupNonUniformBallotBitExtract = 341,
    GroupNonUniformBallotBitCount = 342,
    GroupNonUniformBallotFindLSB = 343,
    GroupNonUniformBallotFindMSB = 344,
    GroupNonUniformShuffle = 345,
    GroupNonUniformShuffleXor = 346,
    GroupNonUniformShuffleUp = 347,
    GroupNonUniformShuffleDown = 348,
    GroupNonUniformIAdd = 349,
    GroupNonUniformFAdd = 350,
    GroupNonUniformIMul = 351,
    GroupNonUniformFMul = 352,
    GroupNonUniformSMin = 353,
    GroupNonUniformUMin = 354,
    GroupNonUniformFMin = 355,
    GroupNonUniformSMax = 356,
    GroupNonUniformUMax = 357,
    GroupNonUniformFMax = 358,
    GroupNonUniformBitwiseAnd = 359,
    GroupNonUniformBitwiseOr = 360,
    GroupNonUniformBitwiseXor = 361,
    GroupNonUniformLogicalAnd = 362,
    GroupNonUniformLogicalOr = 363,
    GroupNonUniformLogicalXor = 364,
    GroupNonUniformQuadBroadcast = 365,
    GroupNonUniformQuadSwap = 366,
    CopyLogical = 400,
    PtrEqual = 401,
    PtrNotEqual = 402,
    PtrDiff = 403,
    TerminateInvocation = 4416,
    SubgroupBallotKHR = 4421,
    SubgroupFirstInvocationKHR = 4422,
    SubgroupAllKHR = 4428,
    SubgroupAnyKHR = 4429,
    SubgroupAllEqualKHR = 4430,
    SubgroupReadInvocationKHR = 4432,
    TraceRayKHR = 4445,
    ExecuteCallableKHR = 4446,
    ConvertUToAccelerationStructureKHR = 4447,
    IgnoreIntersectionKHR = 4448,
    TerminateRayKHR = 4449,
    TypeRayQueryKHR = 4472,
    RayQueryInitializeKHR = 4473,
    RayQueryTerminateKHR = 4474,
    RayQueryGenerateIntersectionKHR = 4475,
    RayQueryConfirmIntersectionKHR = 4476,
    RayQueryProceedKHR = 4477,
    RayQueryGetIntersectionTypeKHR = 4479,
    GroupIAddNonUniformAMD = 5000,
    GroupFAddNonUniformAMD = 5001,
    GroupFMinNonUniformAMD = 5002,
    GroupUMinNonUniformAMD = 5003,
    GroupSMinNonUniformAMD = 5004,
    GroupFMaxNonUniformAMD = 5005,
    GroupUMaxNonUniformAMD = 5006,
    GroupSMaxNonUniformAMD = 5007,
    FragmentMaskFetchAMD = 5011,
    FragmentFetchAMD = 5012,
    ReadClockKHR = 5056,
    ImageSampleFootprintNV = 5283,
    GroupNonUniformPartitionNV = 5296,
    WritePackedPrimitiveIndices4x8NV = 5299,
    ReportIntersectionKHR = 5334,
    ReportIntersectionNV = 5334,
    IgnoreIntersectionNV = 5335,
    TerminateRayNV = 5336,
    TraceNV = 5337,
    TypeAccelerationStructureKHR = 5341,
    TypeAccelerationStructureNV = 5341,
    ExecuteCallableNV = 5344,
    TypeCooperativeMatrixNV = 5358,
    CooperativeMatrixLoadNV = 5359,
    CooperativeMatrixStoreNV = 5360,
    CooperativeMatrixMulAddNV = 5361,
    CooperativeMatrixLengthNV = 5362,
    BeginInvocationInterlockEXT = 5364,
    EndInvocationInterlockEXT = 5365,
    DemoteToHelperInvocationEXT = 5380,
    IsHelperInvocationEXT = 5381,
    SubgroupShuffleINTEL = 5571,
    SubgroupShuffleDownINTEL = 5572,
    SubgroupShuffleUpINTEL = 5573,
    SubgroupShuffleXorINTEL = 5574,
    SubgroupBlockReadINTEL = 5575,
    SubgroupBlockWriteINTEL = 5576,
    SubgroupImageBlockReadINTEL = 5577,
    SubgroupImageBlockWriteINTEL = 5578,
    SubgroupImageMediaBlockReadINTEL = 5580,
    SubgroupImageMediaBlockWriteINTEL = 5581,
    UCountLeadingZerosINTEL = 5585,
    UCountTrailingZerosINTEL = 5586,
    AbsISubINTEL = 5587,
    AbsUSubINTEL = 5588,
    IAddSatINTEL = 5589,
    UAddSatINTEL = 5590,
    IAverageINTEL = 5591,
    UAverageINTEL = 5592,
    IAverageRoundedINTEL = 5593,
    UAverageRoundedINTEL = 5594,
    ISubSatINTEL = 5595,
    USubSatINTEL = 5596,
    IMul32x16INTEL = 5597,
    UMul32x16INTEL = 5598,
    FunctionPointerINTEL = 5600,
    FunctionPointerCallINTEL = 5601,
    DecorateString = 5632,
    DecorateStringGOOGLE = 5632,
    MemberDecorateString = 5633,
    MemberDecorateStringGOOGLE = 5633,
    VmeImageINTEL = 5699,
    TypeVmeImageINTEL = 5700,
    TypeAvcImePayloadINTEL = 5701,
    TypeAvcRefPayloadINTEL = 5702,
    TypeAvcSicPayloadINTEL = 5703,
    TypeAvcMcePayloadINTEL = 5704,
    TypeAvcMceResultINTEL = 5705,
    TypeAvcImeResultINTEL = 5706,
    TypeAvcImeResultSingleReferenceStreamoutINTEL = 5707,
    TypeAvcImeResultDualReferenceStreamoutINTEL = 5708,
    TypeAvcImeSingleReferenceStreaminINTEL = 5709,
    TypeAvcImeDualReferenceStreaminINTEL = 5710,
    TypeAvcRefResultINTEL = 5711,
    TypeAvcSicResultINTEL = 5712,
    SubgroupAvcMceGetDefaultInterBaseMultiReferencePenaltyINTEL = 5713,
    SubgroupAvcMceSetInterBaseMultiReferencePenaltyINTEL = 5714,
    SubgroupAvcMceGetDefaultInterShapePenaltyINTEL = 5715,
    SubgroupAvcMceSetInterShapePenaltyINTEL = 5716,
    SubgroupAvcMceGetDefaultInterDirectionPenaltyINTEL = 5717,
    SubgroupAvcMceSetInterDirectionPenaltyINTEL = 5718,
    SubgroupAvcMceGetDefaultIntraLumaShapePenaltyINTEL = 5719,
    SubgroupAvcMceGetDefaultInterMotionVectorCostTableINTEL = 5720,
    SubgroupAvcMceGetDefaultHighPenaltyCostTableINTEL = 5721,
    SubgroupAvcMceGetDefaultMediumPenaltyCostTableINTEL = 5722,
    SubgroupAvcMceGetDefaultLowPenaltyCostTableINTEL = 5723,
    SubgroupAvcMceSetMotionVectorCostFunctionINTEL = 5724,
    SubgroupAvcMceGetDefaultIntraLumaModePenaltyINTEL = 5725,
    SubgroupAvcMceGetDefaultNonDcLumaIntraPenaltyINTEL = 5726,
    SubgroupAvcMceGetDefaultIntraChromaModeBasePenaltyINTEL = 5727,
    SubgroupAvcMceSetAcOnlyHaarINTEL = 5728,
    SubgroupAvcMceSetSourceInterlacedFieldPolarityINTEL = 5729,
    SubgroupAvcMceSetSingleReferenceInterlacedFieldPolarityINTEL = 5730,
    SubgroupAvcMceSetDualReferenceInterlacedFieldPolaritiesINTEL = 5731,
    SubgroupAvcMceConvertToImePayloadINTEL = 5732,
    SubgroupAvcMceConvertToImeResultINTEL = 5733,
    SubgroupAvcMceConvertToRefPayloadINTEL = 5734,
    SubgroupAvcMceConvertToRefResultINTEL = 5735,
    SubgroupAvcMceConvertToSicPayloadINTEL = 5736,
    SubgroupAvcMceConvertToSicResultINTEL = 5737,
    SubgroupAvcMceGetMotionVectorsINTEL = 5738,
    SubgroupAvcMceGetInterDistortionsINTEL = 5739,
    SubgroupAvcMceGetBestInterDistortionsINTEL = 5740,
    SubgroupAvcMceGetInterMajorShapeINTEL = 5741,
    SubgroupAvcMceGetInterMinorShapeINTEL = 5742,
    SubgroupAvcMceGetInterDirectionsINTEL = 5743,
    SubgroupAvcMceGetInterMotionVectorCountINTEL = 5744,
    SubgroupAvcMceGetInterReferenceIdsINTEL = 5745,
    SubgroupAvcMceGetInterReferenceInterlacedFieldPolaritiesINTEL = 5746,
    SubgroupAvcImeInitializeINTEL = 5747,
    SubgroupAvcImeSetSingleReferenceINTEL = 5748,
    SubgroupAvcImeSetDualReferenceINTEL = 5749,
    SubgroupAvcImeRefWindowSizeINTEL = 5750,
    SubgroupAvcImeAdjustRefOffsetINTEL = 5751,
    SubgroupAvcImeConvertToMcePayloadINTEL = 5752,
    SubgroupAvcImeSetMaxMotionVectorCountINTEL = 5753,
    SubgroupAvcImeSetUnidirectionalMixDisableINTEL = 5754,
    SubgroupAvcImeSetEarlySearchTerminationThresholdINTEL = 5755,
    SubgroupAvcImeSetWeightedSadINTEL = 5756,
    SubgroupAvcImeEvaluateWithSingleReferenceINTEL = 5757,
    SubgroupAvcImeEvaluateWithDualReferenceINTEL = 5758,
    SubgroupAvcImeEvaluateWithSingleReferenceStreaminINTEL = 5759,
    SubgroupAvcImeEvaluateWithDualReferenceStreaminINTEL = 5760,
    SubgroupAvcImeEvaluateWithSingleReferenceStreamoutINTEL = 5761,
    SubgroupAvcImeEvaluateWithDualReferenceStreamoutINTEL = 5762,
    SubgroupAvcImeEvaluateWithSingleReferenceStreaminoutINTEL = 5763,
    SubgroupAvcImeEvaluateWithDualReferenceStreaminoutINTEL = 5764,
    SubgroupAvcImeConvertToMceResultINTEL = 5765,
    SubgroupAvcImeGetSingleReferenceStreaminINTEL = 5766,
    SubgroupAvcImeGetDualReferenceStreaminINTEL = 5767,
    SubgroupAvcImeStripSingleReferenceStreamoutINTEL = 5768,
    SubgroupAvcImeStripDualReferenceStreamoutINTEL = 5769,
    SubgroupAvcImeGetStreamoutSingleReferenceMajorShapeMotionVectorsINTEL = 5770,
    SubgroupAvcImeGetStreamoutSingleReferenceMajorShapeDistortionsINTEL = 5771,
    SubgroupAvcImeGetStreamoutSingleReferenceMajorShapeReferenceIdsINTEL = 5772,
    SubgroupAvcImeGetStreamoutDualReferenceMajorShapeMotionVectorsINTEL = 5773,
    SubgroupAvcImeGetStreamoutDualReferenceMajorShapeDistortionsINTEL = 5774,
    SubgroupAvcImeGetStreamoutDualReferenceMajorShapeReferenceIdsINTEL = 5775,
    SubgroupAvcImeGetBorderReachedINTEL = 5776,
    SubgroupAvcImeGetTruncatedSearchIndicationINTEL = 5777,
    SubgroupAvcImeGetUnidirectionalEarlySearchTerminationINTEL = 5778,
    SubgroupAvcImeGetWeightingPatternMinimumMotionVectorINTEL = 5779,
    SubgroupAvcImeGetWeightingPatternMinimumDistortionINTEL = 5780,
    SubgroupAvcFmeInitializeINTEL = 5781,
    SubgroupAvcBmeInitializeINTEL = 5782,
    SubgroupAvcRefConvertToMcePayloadINTEL = 5783,
    SubgroupAvcRefSetBidirectionalMixDisableINTEL = 5784,
    SubgroupAvcRefSetBilinearFilterEnableINTEL = 5785,
    SubgroupAvcRefEvaluateWithSingleReferenceINTEL = 5786,
    SubgroupAvcRefEvaluateWithDualReferenceINTEL = 5787,
    SubgroupAvcRefEvaluateWithMultiReferenceINTEL = 5788,
    SubgroupAvcRefEvaluateWithMultiReferenceInterlacedINTEL = 5789,
    SubgroupAvcRefConvertToMceResultINTEL = 5790,
    SubgroupAvcSicInitializeINTEL = 5791,
    SubgroupAvcSicConfigureSkcINTEL = 5792,
    SubgroupAvcSicConfigureIpeLumaINTEL = 5793,
    SubgroupAvcSicConfigureIpeLumaChromaINTEL = 5794,
    SubgroupAvcSicGetMotionVectorMaskINTEL = 5795,
    SubgroupAvcSicConvertToMcePayloadINTEL = 5796,
    SubgroupAvcSicSetIntraLumaShapePenaltyINTEL = 5797,
    SubgroupAvcSicSetIntraLumaModeCostFunctionINTEL = 5798,
    SubgroupAvcSicSetIntraChromaModeCostFunctionINTEL = 5799,
    SubgroupAvcSicSetBilinearFilterEnableINTEL = 5800,
    SubgroupAvcSicSetSkcForwardTransformEnableINTEL = 5801,
    SubgroupAvcSicSetBlockBasedRawSkipSadINTEL = 5802,
    SubgroupAvcSicEvaluateIpeINTEL = 5803,
    SubgroupAvcSicEvaluateWithSingleReferenceINTEL = 5804,
    SubgroupAvcSicEvaluateWithDualReferenceINTEL = 5805,
    SubgroupAvcSicEvaluateWithMultiReferenceINTEL = 5806,
    SubgroupAvcSicEvaluateWithMultiReferenceInterlacedINTEL = 5807,
    SubgroupAvcSicConvertToMceResultINTEL = 5808,
    SubgroupAvcSicGetIpeLumaShapeINTEL = 5809,
    SubgroupAvcSicGetBestIpeLumaDistortionINTEL = 5810,
    SubgroupAvcSicGetBestIpeChromaDistortionINTEL = 5811,
    SubgroupAvcSicGetPackedIpeLumaModesINTEL = 5812,
    SubgroupAvcSicGetIpeChromaModeINTEL = 5813,
    SubgroupAvcSicGetPackedSkcLumaCountThresholdINTEL = 5814,
    SubgroupAvcSicGetPackedSkcLumaSumThresholdINTEL = 5815,
    SubgroupAvcSicGetInterRawSadsINTEL = 5816,
    LoopControlINTEL = 5887,
    ReadPipeBlockingINTEL = 5946,
    WritePipeBlockingINTEL = 5947,
    FPGARegINTEL = 5949,
    RayQueryGetRayTMinKHR = 6016,
    RayQueryGetRayFlagsKHR = 6017,
    RayQueryGetIntersectionTKHR = 6018,
    RayQueryGetIntersectionInstanceCustomIndexKHR = 6019,
    RayQueryGetIntersectionInstanceIdKHR = 6020,
    RayQueryGetIntersectionInstanceShaderBindingTableRecordOffsetKHR = 6021,
    RayQueryGetIntersectionGeometryIndexKHR = 6022,
    RayQueryGetIntersectionPrimitiveIndexKHR = 6023,
    RayQueryGetIntersectionBarycentricsKHR = 6024,
    RayQueryGetIntersectionFrontFaceKHR = 6025,
    RayQueryGetIntersectionCandidateAABBaqueKHR = 6026,
    RayQueryGetIntersectionObjectRayDirectionKHR = 6027,
    RayQueryGetIntersectionObjectRayOriginKHR = 6028,
    RayQueryGetWorldRayDirectionKHR = 6029,
    RayQueryGetWorldRayOriginKHR = 6030,
    RayQueryGetIntersectionObjectToWorldKHR = 6031,
    RayQueryGetIntersectionWorldToObjectKHR = 6032,
    AtomicFAddEXT = 6035,
    Max = 0x7fffffff,
}

ImageFormat :: enum i32 {
    Unknown = 0,
    Rgba32f = 1,
    Rgba16f = 2,
    R32f = 3,
    Rgba8 = 4,
    Rgba8Snorm = 5,
    Rg32f = 6,
    Rg16f = 7,
    R11fG11fB10f = 8,
    R16f = 9,
    Rgba16 = 10,
    Rgb10A2 = 11,
    Rg16 = 12,
    Rg8 = 13,
    R16 = 14,
    R8 = 15,
    Rgba16Snorm = 16,
    Rg16Snorm = 17,
    Rg8Snorm = 18,
    R16Snorm = 19,
    R8Snorm = 20,
    Rgba32i = 21,
    Rgba16i = 22,
    Rgba8i = 23,
    R32i = 24,
    Rg32i = 25,
    Rg16i = 26,
    Rg8i = 27,
    R16i = 28,
    R8i = 29,
    Rgba32ui = 30,
    Rgba16ui = 31,
    Rgba8ui = 32,
    R32ui = 33,
    Rgb10a2ui = 34,
    Rg32ui = 35,
    Rg16ui = 36,
    Rg8ui = 37,
    R16ui = 38,
    R8ui = 39,
    R64ui = 40,
    R64i = 41,
    Max = 0x7fffffff,
}

Dim :: enum i32 {
    One = 0,
    Two = 1,
    Three = 2,
    Cube = 3,
    Rect = 4,
    Buffer = 5,
    SubpassData = 6,
    Max = 0x7fffffff,
}


TypeFlags :: u32;
DecorationFlags :: u32;
VariableFlags :: u32;

Result :: enum i32 {
    SUCCESS,
    NOT_READY,
    ERROR_PARSE_FAILED,
    ERROR_ALLOC_FAILED,
    ERROR_RANGE_EXCEEDED,
    ERROR_NULL_POINTER,
    ERROR_INTERNAL_ERROR,
    ERROR_COUNT_MISMATCH,
    ERROR_ELEMENT_NOT_FOUND,
    ERROR_SPIRV_INVALID_CODE_SIZE,
    ERROR_SPIRV_INVALID_MAGIC_NUMBER,
    ERROR_SPIRV_UNEXPECTED_EOF,
    ERROR_SPIRV_INVALID_ID_REFERENCE,
    ERROR_SPIRV_SET_NUMBER_OVERFLOW,
    ERROR_SPIRV_INVALID_STORAGE_CLASS,
    ERROR_SPIRV_RECURSION,
    ERROR_SPIRV_INVALID_INSTRUCTION,
    ERROR_SPIRV_UNEXPECTED_BLOCK_DATA,
    ERROR_SPIRV_INVALID_BLOCK_MEMBER_REFERENCE,
    ERROR_SPIRV_INVALID_ENTRY_POINT,
    ERROR_SPIRV_INVALID_EXECUTION_MODE,
};

TypeFlagBits :: enum i32 {
    UNDEFINED = 0,
    VOID = 1,
    BOOL = 2,
    INT = 4,
    FLOAT = 8,
    VECTOR = 256,
    MATRIX = 512,
    EXTERNAL_IMAGE = 65536,
    EXTERNAL_SAMPLER = 131072,
    EXTERNAL_SAMPLED_IMAGE = 262144,
    EXTERNAL_BLOCK = 524288,
    EXTERNAL_ACCELERATION_STRUCTURE = 1048576,
    EXTERNAL_MASK = 16711680,
    STRUCT = 268435456,
    ARRAY = 536870912,
};

DecorationFlagBits :: enum i32 {
    NONE = 0,
    BLOCK = 1,
    BUFFER_BLOCK = 2,
    ROW_MAJOR = 4,
    COLUMN_MAJOR = 8,
    BUILT_IN = 16,
    NOPERSPECTIVE = 32,
    FLAT = 64,
    NON_WRITABLE = 128,
};

ResourceType :: enum i32 {
    UNDEFINED = 0,
    SAMPLER = 1,
    CBV = 2,
    SRV = 4,
    UAV = 8,
};

Format :: enum i32 {
    UNDEFINED = 0,
    R32_UINT = 98,
    R32_SINT = 99,
    R32_SFLOAT = 100,
    R32G32_UINT = 101,
    R32G32_SINT = 102,
    R32G32_SFLOAT = 103,
    R32G32B32_UINT = 104,
    R32G32B32_SINT = 105,
    R32G32B32_SFLOAT = 106,
    R32G32B32A32_UINT = 107,
    R32G32B32A32_SINT = 108,
    R32G32B32A32_SFLOAT = 109,
    R64_UINT = 110,
    R64_SINT = 111,
    R64_SFLOAT = 112,
    R64G64_UINT = 113,
    R64G64_SINT = 114,
    R64G64_SFLOAT = 115,
    R64G64B64_UINT = 116,
    R64G64B64_SINT = 117,
    R64G64B64_SFLOAT = 118,
    R64G64B64A64_UINT = 119,
    R64G64B64A64_SINT = 120,
    R64G64B64A64_SFLOAT = 121,
};

VariableFlagBits :: enum i32 {
    NONE = 0,
    UNUSED = 1,
};

DescriptorType :: enum i32 {
    SAMPLER = 0,
    COMBINED_IMAGE_SAMPLER = 1,
    SAMPLED_IMAGE = 2,
    STORAGE_IMAGE = 3,
    UNIFORM_TEXEL_BUFFER = 4,
    STORAGE_TEXEL_BUFFER = 5,
    UNIFORM_BUFFER = 6,
    STORAGE_BUFFER = 7,
    UNIFORM_BUFFER_DYNAMIC = 8,
    STORAGE_BUFFER_DYNAMIC = 9,
    INPUT_ATTACHMENT = 10,
    ACCELERATION_STRUCTURE_KHR = 1000150000,
};

ShaderStageFlagBits :: enum i32 {
    VERTEX_BIT = 1,
    TESSELLATION_CONTROL_BIT = 2,
    TESSELLATION_EVALUATION_BIT = 4,
    GEOMETRY_BIT = 8,
    FRAGMENT_BIT = 16,
    COMPUTE_BIT = 32,
    TASK_BIT_NV = 64,
    MESH_BIT_NV = 128,
    RAYGEN_BIT_KHR = 256,
    ANY_HIT_BIT_KHR = 512,
    CLOSEST_HIT_BIT_KHR = 1024,
    MISS_BIT_KHR = 2048,
    INTERSECTION_BIT_KHR = 4096,
    CALLABLE_BIT_KHR = 8192,
};

Generator :: enum i32 {
    KHRONOS_LLVM_SPIRV_TRANSLATOR = 6,
    KHRONOS_SPIRV_TOOLS_ASSEMBLER = 7,
    KHRONOS_GLSLANG_REFERENCE_FRONT_END = 8,
    GOOGLE_SHADERC_OVER_GLSLANG = 13,
    GOOGLE_SPIREGG = 14,
    GOOGLE_RSPIRV = 15,
    X_LEGEND_MESA_MESAIR_SPIRV_TRANSLATOR = 16,
    KHRONOS_SPIRV_TOOLS_LINKER = 17,
    WINE_VKD3D_SHADER_COMPILER = 18,
    CLAY_CLAY_SHADER_COMPILER = 19,
};

AnonymousEnum0 :: enum i32 {
    ARRAY_DIMS = 32,
    DESCRIPTOR_SETS = 64,
};

AnonymousEnum1 :: enum i32 {
    BINDING_NUMBER_DONT_CHANGE = -1,
    SET_NUMBER_DONT_CHANGE = -1,
};

Scalar :: struct {
    width : u32,
    signedness : u32,
};

Vector :: struct {
    component_count : u32,
};

Matrix :: struct {
    column_count : u32,
    row_count : u32,
    stride : u32,
};

NumericTraits :: struct {
    scalar : Scalar,
    vector : Vector,
    matrix : Matrix,
};

ImageTraits :: struct {
    dim : Dim,
    depth : u32,
    arrayed : u32,
    ms : u32,
    sampled : u32,
    image_format : ImageFormat,
};

ArrayTraits :: struct {
    dims_count : u32,
    dims : [32]u32,
    stride : u32,
};

BindingArrayTraits :: struct {
    dims_count : u32,
    dims : [32]u32,
};

Traits :: struct {
    numeric : NumericTraits,
    image : ImageTraits,
    array : ArrayTraits,
};

TypeDescription :: struct {
    id : u32,
    op : Op,
    type_name : cstring,
    struct_member_name : cstring,
    storage_class : StorageClass,
    type_flags : TypeFlags,
    decoration_flags : DecorationFlags,
    traits : Traits,
    member_count : u32,
    members : ^TypeDescription,
};

InterfaceVariable :: struct {
    spirv_id : u32,
    name : cstring,
    location : u32,
    storage_class : StorageClass,
    semantic : cstring,
    decoration_flags : DecorationFlags,
    built_in : BuiltIn,
    numeric : NumericTraits,
    array : ArrayTraits,
    member_count : u32,
    members : ^InterfaceVariable,
    format : Format,
    type_description : ^TypeDescription,
    word_offset : AnonymousStruct0,
};

AnonymousStruct0 :: struct {
    location : u32,
};

BlockVariable :: struct {
    spirv_id : u32,
    name : cstring,
    offset : u32,
    absolute_offset : u32,
    size : u32,
    padded_size : u32,
    decoration_flags : DecorationFlags,
    numeric : NumericTraits,
    array : ArrayTraits,
    flags : VariableFlags,
    member_count : u32,
    members : ^BlockVariable,
    type_description : ^TypeDescription,
};

DescriptorBinding :: struct {
    spirv_id : u32,
    name : cstring,
    binding : u32,
    input_attachment_index : u32,
    set : u32,
    descriptor_type : DescriptorType,
    resource_type : ResourceType,
    image : ImageTraits,
    block : BlockVariable,
    array : BindingArrayTraits,
    count : u32,
    accessed : u32,
    uav_counter_id : u32,
    uav_counter_binding : ^DescriptorBinding,
    type_description : ^TypeDescription,
    word_offset : AnonymousStruct1,
};

AnonymousStruct1 :: struct {
    binding : u32,
    set : u32,
};

DescriptorSet :: struct {
    set : u32,
    binding_count : u32,
    bindings : ^^DescriptorBinding,
};

LocalSize :: struct {
    x : u32,
    y : u32,
    z : u32,
};

EntryPoint :: struct {
    name : cstring,
    id : u32,
    spirv_execution_model : ExecutionModel,
    shader_stage : ShaderStageFlagBits,
    input_variable_count : u32,
    input_variables : ^^InterfaceVariable,
    output_variable_count : u32,
    output_variables : ^^InterfaceVariable,
    interface_variable_count : u32,
    interface_variables : ^InterfaceVariable,
    descriptor_set_count : u32,
    descriptor_sets : ^DescriptorSet,
    used_uniform_count : u32,
    used_uniforms : ^u32,
    used_push_constant_count : u32,
    used_push_constants : ^u32,
    local_size : LocalSize,
};

Internal :: struct {
    spirv_size : _c.size_t,
    spirv_code : ^u32,
    spirv_word_count : u32,
    type_description_count : _c.size_t,
    type_descriptions : ^TypeDescription,
};

ShaderModule :: struct {
    generator : Generator,
    entry_point_name : cstring,
    entry_point_id : u32,
    entry_point_count : u32,
    entry_points : ^EntryPoint,
    source_language : SourceLanguage,
    source_language_version : u32,
    source_file : cstring,
    source_source : cstring,
    spirv_execution_model : ExecutionModel,
    shader_stage : ShaderStageFlagBits,
    descriptor_binding_count : u32,
    descriptor_bindings : ^DescriptorBinding,
    descriptor_set_count : u32,
    descriptor_sets : [64]DescriptorSet,
    input_variable_count : u32,
    input_variables : ^^InterfaceVariable,
    output_variable_count : u32,
    output_variables : ^^InterfaceVariable,
    interface_variable_count : u32,
    interface_variables : ^InterfaceVariable,
    push_constant_block_count : u32,
    push_constant_blocks : ^BlockVariable,
    internal : ^Internal,
};

@(default_calling_convention="c")
foreign spirv_reflect {

    @(link_name="spvReflectCreateShaderModule")
    CreateShaderModule :: proc(
        size : _c.size_t,
        p_code : rawptr,
        p_module : ^ShaderModule
    ) -> Result ---;

    @(link_name="spvReflectDestroyShaderModule")
    DestroyShaderModule :: proc(p_module : ^ShaderModule) ---;

    @(link_name="spvReflectGetCodeSize")
    GetCodeSize :: proc(p_module : ^ShaderModule) -> u32 ---;

    @(link_name="spvReflectGetCode")
    GetCode :: proc(p_module : ^ShaderModule) -> ^u32 ---;

    @(link_name="spvReflectGetEntryPoint")
    GetEntryPoint :: proc(
        p_module : ^ShaderModule,
        entry_point : cstring
    ) -> ^EntryPoint ---;

    @(link_name="spvReflectEnumerateDescriptorBindings")
    EnumerateDescriptorBindings :: proc(
        p_module : ^ShaderModule,
        p_count : ^u32,
        pp_bindings : ^^DescriptorBinding
    ) -> Result ---;

    @(link_name="spvReflectEnumerateEntryPointDescriptorBindings")
    EnumerateEntryPointDescriptorBindings :: proc(
        p_module : ^ShaderModule,
        entry_point : cstring,
        p_count : ^u32,
        pp_bindings : ^^DescriptorBinding
    ) -> Result ---;

    @(link_name="spvReflectEnumerateDescriptorSets")
    EnumerateDescriptorSets :: proc(
        p_module : ^ShaderModule,
        p_count : ^u32,
        pp_sets : ^^DescriptorSet
    ) -> Result ---;

    @(link_name="spvReflectEnumerateEntryPointDescriptorSets")
    EnumerateEntryPointDescriptorSets :: proc(
        p_module : ^ShaderModule,
        entry_point : cstring,
        p_count : ^u32,
        pp_sets : ^^DescriptorSet
    ) -> Result ---;

    @(link_name="spvReflectEnumerateInterfaceVariables")
    EnumerateInterfaceVariables :: proc(
        p_module : ^ShaderModule,
        p_count : ^u32,
        pp_variables : ^^InterfaceVariable
    ) -> Result ---;

    @(link_name="spvReflectEnumerateEntryPointInterfaceVariables")
    EnumerateEntryPointInterfaceVariables :: proc(
        p_module : ^ShaderModule,
        entry_point : cstring,
        p_count : ^u32,
        pp_variables : ^^InterfaceVariable
    ) -> Result ---;

    @(link_name="spvReflectEnumerateInputVariables")
    EnumerateInputVariables :: proc(
        p_module : ^ShaderModule,
        p_count : ^u32,
        pp_variables : ^^InterfaceVariable
    ) -> Result ---;

    @(link_name="spvReflectEnumerateEntryPointInputVariables")
    EnumerateEntryPointInputVariables :: proc(
        p_module : ^ShaderModule,
        entry_point : cstring,
        p_count : ^u32,
        pp_variables : ^^InterfaceVariable
    ) -> Result ---;

    @(link_name="spvReflectEnumerateOutputVariables")
    EnumerateOutputVariables :: proc(
        p_module : ^ShaderModule,
        p_count : ^u32,
        pp_variables : ^^InterfaceVariable
    ) -> Result ---;

    @(link_name="spvReflectEnumerateEntryPointOutputVariables")
    EnumerateEntryPointOutputVariables :: proc(
        p_module : ^ShaderModule,
        entry_point : cstring,
        p_count : ^u32,
        pp_variables : ^^InterfaceVariable
    ) -> Result ---;

    @(link_name="spvReflectEnumeratePushConstantBlocks")
    EnumeratePushConstantBlocks :: proc(
        p_module : ^ShaderModule,
        p_count : ^u32,
        pp_blocks : ^^BlockVariable
    ) -> Result ---;

    @(link_name="spvReflectEnumerateEntryPointPushConstantBlocks")
    EnumerateEntryPointPushConstantBlocks :: proc(
        p_module : ^ShaderModule,
        entry_point : cstring,
        p_count : ^u32,
        pp_blocks : ^^BlockVariable
    ) -> Result ---;

    @(link_name="spvReflectGetDescriptorBinding")
    GetDescriptorBinding :: proc(
        p_module : ^ShaderModule,
        binding_number : u32,
        set_number : u32,
        p_result : ^Result
    ) -> ^DescriptorBinding ---;

    @(link_name="spvReflectGetEntryPointDescriptorBinding")
    GetEntryPointDescriptorBinding :: proc(
        p_module : ^ShaderModule,
        entry_point : cstring,
        binding_number : u32,
        set_number : u32,
        p_result : ^Result
    ) -> ^DescriptorBinding ---;

    @(link_name="spvReflectGetDescriptorSet")
    GetDescriptorSet :: proc(
        p_module : ^ShaderModule,
        set_number : u32,
        p_result : ^Result
    ) -> ^DescriptorSet ---;

    @(link_name="spvReflectGetEntryPointDescriptorSet")
    GetEntryPointDescriptorSet :: proc(
        p_module : ^ShaderModule,
        entry_point : cstring,
        set_number : u32,
        p_result : ^Result
    ) -> ^DescriptorSet ---;

    @(link_name="spvReflectGetInputVariableByLocation")
    GetInputVariableByLocation :: proc(
        p_module : ^ShaderModule,
        location : u32,
        p_result : ^Result
    ) -> ^InterfaceVariable ---;

    @(link_name="spvReflectGetEntryPointInputVariableByLocation")
    GetEntryPointInputVariableByLocation :: proc(
        p_module : ^ShaderModule,
        entry_point : cstring,
        location : u32,
        p_result : ^Result
    ) -> ^InterfaceVariable ---;

    @(link_name="spvReflectGetInputVariableBySemantic")
    GetInputVariableBySemantic :: proc(
        p_module : ^ShaderModule,
        semantic : cstring,
        p_result : ^Result
    ) -> ^InterfaceVariable ---;

    @(link_name="spvReflectGetEntryPointInputVariableBySemantic")
    GetEntryPointInputVariableBySemantic :: proc(
        p_module : ^ShaderModule,
        entry_point : cstring,
        semantic : cstring,
        p_result : ^Result
    ) -> ^InterfaceVariable ---;

    @(link_name="spvReflectGetOutputVariableByLocation")
    GetOutputVariableByLocation :: proc(
        p_module : ^ShaderModule,
        location : u32,
        p_result : ^Result
    ) -> ^InterfaceVariable ---;

    @(link_name="spvReflectGetEntryPointOutputVariableByLocation")
    GetEntryPointOutputVariableByLocation :: proc(
        p_module : ^ShaderModule,
        entry_point : cstring,
        location : u32,
        p_result : ^Result
    ) -> ^InterfaceVariable ---;

    @(link_name="spvReflectGetOutputVariableBySemantic")
    GetOutputVariableBySemantic :: proc(
        p_module : ^ShaderModule,
        semantic : cstring,
        p_result : ^Result
    ) -> ^InterfaceVariable ---;

    @(link_name="spvReflectGetEntryPointOutputVariableBySemantic")
    GetEntryPointOutputVariableBySemantic :: proc(
        p_module : ^ShaderModule,
        entry_point : cstring,
        semantic : cstring,
        p_result : ^Result
    ) -> ^InterfaceVariable ---;

    @(link_name="spvReflectGetPushConstantBlock")
    GetPushConstantBlock :: proc(
        p_module : ^ShaderModule,
        index : u32,
        p_result : ^Result
    ) -> ^BlockVariable ---;

    @(link_name="spvReflectGetEntryPointPushConstantBlock")
    GetEntryPointPushConstantBlock :: proc(
        p_module : ^ShaderModule,
        entry_point : cstring,
        p_result : ^Result
    ) -> ^BlockVariable ---;

    @(link_name="spvReflectChangeDescriptorBindingNumbers")
    ChangeDescriptorBindingNumbers :: proc(
        p_module : ^ShaderModule,
        p_binding : ^DescriptorBinding,
        new_binding_number : u32,
        new_set_number : u32
    ) -> Result ---;

    @(link_name="spvReflectChangeDescriptorSetNumber")
    ChangeDescriptorSetNumber :: proc(
        p_module : ^ShaderModule,
        p_set : ^DescriptorSet,
        new_set_number : u32
    ) -> Result ---;

    @(link_name="spvReflectChangeInputVariableLocation")
    ChangeInputVariableLocation :: proc(
        p_module : ^ShaderModule,
        p_input_variable : ^InterfaceVariable,
        new_location : u32
    ) -> Result ---;

    @(link_name="spvReflectChangeOutputVariableLocation")
    ChangeOutputVariableLocation :: proc(
        p_module : ^ShaderModule,
        p_output_variable : ^InterfaceVariable,
        new_location : u32
    ) -> Result ---;

    @(link_name="spvReflectSourceLanguage")
    GetSourceLanguage :: proc(source_lang : SourceLanguage) -> cstring ---;

}
