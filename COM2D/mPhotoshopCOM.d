/*[uuid("{E891EE9A-D0AE-4CB4-8871-F92C0109F18E}")]*/
module mPhotoshopCOM;

private import core.sys.windows.com, core.sys.windows.oaidl, core.sys.windows.basetyps, core.sys.windows.oaidl, core.sys.windows.unknwn, core.sys.windows.windef, core.sys.windows.wtypes;
private import std.traits, std.meta, mCOM2D;


version(all)
{
	enum PsLayerKind {
		psNormalLayer = 1,
		psTextLayer = 2,
		psSolidFillLayer = 3,
		psGradientFillLayer = 4,
		psPatternFillLayer = 5,
		psLevelsLayer = 6,
		psCurvesLayer = 7,
		psColorBalanceLayer = 8,
		psBrightnessContrastLayer = 9,
		psHueSaturationLayer = 10,
		psSelectiveColorLayer = 11,
		psChannelMixerLayer = 12,
		psGradientMapLayer = 13,
		psInversionLayer = 14,
		psThresholdLayer = 15,
		psPosterizeLayer = 16,
		psSmartObjectLayer = 17,
		psPhotoFilterLayer = 18,
		psExposureLayer = 19,
		psLayer3D = 20,
		psVideoLayer = 21,
		psBlackAndWhiteLayer = 22,
		psVibrance = 23,
		psColorLookup = 24,
	}

	enum PsAntiAlias {
		psNoAntialias = 1,
		psSharp = 2,
		psCrisp = 3,
		psStrong = 4,
		psSmooth = 5,
	}

	enum PsAutoKernType {
		psManual = 1,
		psMetrics = 2,
		psOptical = 3,
	}

	enum PsColorModel {
		psGrayscaleModel = 1,
		psRGBModel = 2,
		psCMYKModel = 3,
		psLabModel = 4,
		psHSBModel = 5,
		psNoModel = 50,
	}

	enum PsDirection {
		psHorizontal = 1,
		psVertical = 2,
	}

	enum PsCase {
		psNormalCase = 1,
		psAllCaps = 2,
		psSmallCaps = 3,
	}

	enum PsStrikeThruType {
		psStrikeOff = 1,
		psStrikeHeight = 2,
		psStrikeBox = 3,
	}

	enum PsUnderlineType {
		psUnderlineOff = 1,
		psUnderlineRight = 2,
		psUnderlineLeft = 3,
	}

	enum PsLanguage {
		psEnglishUSA = 1,
		psEnglishUK = 2,
		psFrench = 3,
		psCanadianFrench = 4,
		psFinnish = 5,
		psGerman = 6,
		psOldGerman = 7,
		psSwissGerman = 8,
		psItalian = 9,
		psNorwegian = 10,
		psNynorskNorwegian = 11,
		psPortuguese = 12,
		psBrazillianPortuguese = 13,
		psSpanish = 14,
		psSwedish = 15,
		psDutch = 16,
		psDanish = 17,
	}

	enum PsTextType {
		psPointText = 1,
		psParagraphText = 2,
	}

	enum PsJustification {
		psLeft = 1,
		psCenter = 2,
		psRight = 3,
		psLeftJustified = 4,
		psCenterJustified = 5,
		psRightJustified = 6,
		psFullyJustified = 7,
	}

	enum PsTextComposer {
		psAdobeSingleLine = 1,
		psAdobeEveryLine = 2,
	}

	enum PsWarpStyle {
		psNoWarp = 1,
		psArc = 2,
		psArcLower = 3,
		psArcUpper = 4,
		psArch = 5,
		psBulge = 6,
		psShellLower = 7,
		psShellUpper = 8,
		psFlag = 9,
		psWave = 10,
		psFish = 11,
		psRise = 12,
		psFishEye = 13,
		psInflate = 14,
		psSqueeze = 15,
		psTwist = 16,
	}

	enum PsBlendMode {
		psPassThrough = 1,
		psNormalBlend = 2,
		psDissolve = 3,
		psDarken = 4,
		psMultiply = 5,
		psColorBurn = 6,
		psLinearBurn = 7,
		psLighten = 8,
		psScreen = 9,
		psColorDodge = 10,
		psLinearDodge = 11,
		psOverlay = 12,
		psSoftLight = 13,
		psHardLight = 14,
		psVividLight = 15,
		psLinearLight = 16,
		psPinLight = 17,
		psDifference = 18,
		psExclusion = 19,
		psSubtract = 29,
		psDivide = 30,
		psHue = 20,
		psSaturationBlend = 21,
		psColorBlend = 22,
		psLuminosity = 23,
		psHardMix = 26,
		psLighterColor = 27,
		psDarkerColor = 28,
	}

	enum PsLayerType {
		psArtLayer = 1,
		psLayerSet = 2,
	}

	enum PsElementPlacement {
		psPlaceInside = 0,
		psPlaceAtBeginning = 1,
		psPlaceAtEnd = 2,
		psPlaceBefore = 3,
		psPlaceAfter = 4,
	}

	enum PsRasterizeType {
		psTextContents = 1,
		psShape = 2,
		psFillContent = 3,
		psLayerClippingPath = 4,
		psEntireLayer = 5,
		psLinkedLayers = 6,
	}

	enum PsRadialBlurMethod {
		psSpin = 1,
		psZoom = 2,
	}

	enum PsRadialBlurQuality {
		psRadialBlurDraft = 1,
		psRadialBlurGood = 2,
		psRadialBlurBest = 3,
	}

	enum PsSmartBlurQuality {
		psSmartBlurLow = 1,
		psSmartBlurMedium = 2,
		psSmartBlurHigh = 3,
	}

	enum PsSmartBlurMode {
		psSmartBlurNormal = 1,
		psSmartBlurEdgeOnly = 2,
		psSmartBlurOverlayEdge = 3,
	}

	enum PsDisplacementMapType {
		psStretchToFit = 1,
		psTile = 2,
	}

	enum PsUndefinedAreas {
		psWrapAround = 1,
		psRepeatEdgePixels = 2,
	}

	enum PsPolarConversionType {
		psRectangularToPolar = 1,
		psPolarToRectangular = 2,
	}

	enum PsRippleSize {
		psSmallRipple = 1,
		psMediumRipple = 2,
		psLargeRipple = 3,
	}

	enum PsSpherizeMode {
		psNormalSpherize = 1,
		psHorizontalSpherize = 2,
		psVerticalSpherize = 3,
	}

	enum PsWaveType {
		psSine = 1,
		psTriangular = 2,
		psSquare = 3,
	}

	enum PsZigZagType {
		psAroundCenter = 1,
		psOutFromCenter = 2,
		psPondRipples = 3,
	}

	enum PsNoiseDistribution {
		psUniformNoise = 1,
		psGaussianNoise = 2,
	}

	enum PsLensType {
		psZoomLens = 1,
		psPrime35 = 2,
		psPrime105 = 3,
		psMoviePrime = 5,
	}

	enum PsEliminateFields {
		psOddFields = 1,
		psEvenFields = 2,
	}

	enum PsCreateFields {
		psDuplication = 1,
		psInterpolation = 2,
	}

	enum PsOffsetUndefinedAreas {
		psOffsetSetToLayerFill = 1,
		psOffsetWrapAround = 2,
		psOffsetRepeatEdgePixels = 3,
	}

	enum PsAdjustmentReference {
		psRelative = 1,
		psAbsolute = 2,
	}

	enum PsBitsPerChannelType {
		psDocument1Bit = 1,
		psDocument8Bits = 8,
		psDocument16Bits = 16,
		psDocument32Bits = 32,
	}

	enum PsColorProfileType {
		psNo = 1,
		psWorking = 2,
		psCustom = 3,
	}

	enum PsDocumentMode {
		psGrayscale = 1,
		psRGB = 2,
		psCMYK = 3,
		psLab = 4,
		psBitmap = 5,
		psIndexedColor = 6,
		psMultiChannel = 7,
		psDuotone = 8,
	}

	enum PsCopyrightedType {
		psCopyrightedWork = 1,
		psPublicDomain = 2,
		psUnmarked = 3,
	}

	enum PsUrgency {
		psNone = 0,
		psLow = 1,
		psTwo = 2,
		psThree = 3,
		psFour = 4,
		psNormal = 5,
		psSix = 6,
		psSeven = 7,
		psHigh = 8,
	}

	enum PsChannelType {
		psComponentChannel = 1,
		psMaskedAreaAlphaChannel = 2,
		psSelectedAreaAlphaChannel = 3,
		psSpotColorChannel = 4,
	}

	enum PsShapeOperation {
		psShapeAdd = 1,
		psShapeXOR = 2,
		psShapeIntersect = 3,
		psShapeSubtract = 4,
	}

	enum PsPointKind {
		psSmoothPoint = 1,
		psCornerPoint = 2,
	}

	enum PsPathKind {
		psNormalPath = 1,
		psClippingPath = 2,
		psWorkPath = 3,
		psVectorMask = 4,
		psTextMask = 5,
	}

	enum PsIntent {
		psPerceptual = 1,
		psSaturation = 2,
		psRelativeColorimetric = 3,
		psAbsoluteColorimetric = 4,
	}

	enum PsChangeMode {
		psConvertToGrayscale = 1,
		psConvertToRGB = 2,
		psConvertToCMYK = 3,
		psConvertToLab = 4,
		psConvertToBitmap = 5,
		psConvertToIndexedColor = 6,
		psConvertToMultiChannel = 7,
	}

	enum PsColorPicker {
		psAdobeColorPicker = 1,
		psAppleColorPicker = 2,
		psWindowsColorPicker = 3,
		psPlugInColorPicker = 4,
	}

	enum PsResampleMethod {
		psNoResampling = 1,
		psNearestNeighbor = 2,
		psBilinear = 3,
		psBicubic = 4,
		psBicubicSharper = 5,
		psBicubicSmoother = 6,
		psBicubicAutomatic = 7,
		psAutomatic = 8,
		psPreserveDetails = 9,
	}

	enum PsSaveBehavior {
		psNeverSave = 1,
		psAlwaysSave = 2,
		psAskWhenSaving = 3,
	}

	enum PsQueryStateType {
		psAlways = 1,
		psAsk = 2,
		psNever = 3,
	}

	enum PsPaintingCursors {
		psStandard = 1,
		psPrecise = 2,
		psBrushSize = 3,
	}

	enum PsOtherPaintingCursors {
		psStandardOther = 1,
		psPreciseOther = 2,
	}

	enum PsGridSize {
		psNoGrid = 1,
		psSmallGrid = 2,
		psMediumGrid = 3,
		psLargeGrid = 4,
	}

	enum PsUnits {
		psPixels = 1,
		psInches = 2,
		psCM = 3,
		psMM = 4,
		psPoints = 5,
		psPicas = 6,
		psPercent = 7,
	}

	enum PsTypeUnits {
		psTypePixels = 1,
		psTypeMM = 4,
		psTypePoints = 5,
	}

	enum PsPointType {
		psPostScriptPoints = 1,
		psTraditionalPoints = 2,
	}

	enum PsGuideLineStyle {
		psGuideSolidLine = 1,
		psGuideDashedLine = 2,
	}

	enum PsGridLineStyle {
		psGridSolidLine = 1,
		psGridDashedLine = 2,
		psGridDottedLine = 3,
	}

	enum PsSaveLogItemsType {
		psMetadata = 1,
		psLogFile = 2,
		psLogFileAndMetadata = 3,
	}

	enum PsEditLogItemsType {
		psSessionOnly = 1,
		psConcise = 2,
		psDetailed = 3,
	}

	enum PsFontPreviewType {
		psFontPreviewNone = 0,
		psFontPreviewSmall = 1,
		psFontPreviewMedium = 2,
		psFontPreviewLarge = 3,
		psFontPreviewExtraLarge = 4,
		psFontPreviewHuge = 5,
	}

	enum PsDialogModes {
		psDisplayAllDialogs = 1,
		psDisplayErrorDialogs = 2,
		psDisplayNoDialogs = 3,
	}

	enum PsPurar {
		psUndoCaches = 1,
		psHistoryCaches = 2,
		psClipboardCache = 3,
		psAllCaches = 4,
	}

	enum PsReferenceFormType {
		psReferenceNameType = 1,
		psReferenceIndexType = 2,
		psReferenceIdentifierType = 3,
		psReferenceOffsetType = 4,
		psReferenceEnumeratedType = 5,
		psReferencePropertyType = 6,
		psReferenceClassType = 7,
	}

	enum PsDescValueType {
		psIntegerType = 1,
		psDoubleType = 2,
		psUnitDoubleType = 3,
		psStringType = 4,
		psBooleanType = 5,
		psListType = 6,
		psObjectType = 7,
		psEnumeratedType = 8,
		psReferenceType = 9,
		psClassType = 10,
		psAliasType = 11,
		psRawType = 12,
		psLargeIntegerType = 13,
	}

	enum PsPhotoCDSize {
		psMinimumPhotoCD = 1,
		psSmallPhotoCD = 2,
		psMediumPhotoCD = 3,
		psLargePhotoCD = 4,
		psExtraLargePhotoCD = 5,
		psMaximumPhotoCD = 6,
	}

	enum PsPhotoCDColorSpace {
		psRGB8 = 1,
		psRGB16 = 2,
		psLab8 = 3,
		psLab16 = 4,
	}

	enum PsOrientation {
		psLandscape = 1,
		psPortrait = 2,
	}

	enum PsByteOrderType {
		psIBMByteOrder = 1,
		psMacOSByteOrder = 2,
	}

	enum PsOpenDocumentMode {
		psOpenGray = 1,
		psOpenRGB = 2,
		psOpenCMYK = 3,
		psOpenLab = 4,
	}

	enum PsCropToType {
		psBoundingBox = 0,
		psMediaBox = 1,
		psCropBox = 2,
		psBleedBox = 3,
		psTrimBox = 4,
		psArtBox = 5,
	}

	enum PsColorSpaceType {
		psAdobeRGB = 0,
		psColorMatchRGB = 1,
		psProPhotoRGB = 2,
		psSRGB = 3,
	}

	enum PsCameraRAWSize {
		psMinimumCameraRAW = 0,
		psSmallCameraRAW = 1,
		psMediumCameraRAW = 2,
		psLargeCameraRAW = 3,
		psExtraLargeCameraRAW = 4,
		psMaximumCameraRAW = 5,
	}

	enum PsCameraRAWSettingsType {
		psCameraDefault = 0,
		psSelectedImage = 1,
		psCustomSettings = 2,
	}

	enum PsWhiteBalanceType {
		psAsShot = 0,
		psAuto = 1,
		psDaylight = 2,
		psCloudy = 3,
		psShade = 4,
		psTungsten = 5,
		psFluorescent = 6,
		psFlash = 7,
		psCustomCameraSettings = 8,
	}

	enum PsOperatingSystem {
		psOS2 = 1,
		psWindows = 2,
	}

	enum PsBMPDepthType {
		psBMP1Bit = 1,
		psBMP4Bits = 4,
		psBMP8Bits = 8,
		psBMP16Bits = 16,
		psBMP24Bits = 24,
		psBMP32Bits = 32,
		psBMP_X1R5G5B5 = 60,
		psBMP_A1R5G5B5 = 61,
		psBMP_R5G6B5 = 62,
		psBMP_X4R4G4B4 = 63,
		psBMP_A4R4G4B4 = 64,
		psBMP_R8G8B8 = 65,
		psBMP_X8R8G8B8 = 66,
		psBMP_A8R8G8B8 = 67,
	}

	enum PsDitherType {
		psNoDither = 1,
		psDiffusion = 2,
		psPattern = 3,
		psNoise = 4,
	}

	enum PsForcedColors {
		psNoForced = 1,
		psBlackWhite = 2,
		psPrimaries = 3,
		psWeb = 4,
	}

	enum PsMatteType {
		psNoMatte = 1,
		psForegroundColorMatte = 2,
		psBackgroundColorMatte = 3,
		psWhiteMatte = 4,
		psBlackMatte = 5,
		psSemiGray = 6,
		psNetscapeGrayMatte = 7,
	}

	enum PsPaletteType {
		psExact = 1,
		psMacOSPalette = 2,
		psWindowsPalette = 3,
		psWebPalette = 4,
		psUniform = 5,
		psLocalPerceptual = 6,
		psLocalSelective = 7,
		psLocalAdaptive = 8,
		psMasterPerceptual = 9,
		psMasterSelective = 10,
		psMasterAdaptive = 11,
		psPreviousPalette = 12,
	}

	enum PsPreviewType {
		psNoPreview = 1,
		psMonochromeTIFF = 2,
		psEightBitTIFF = 3,
	}

	enum PsSaveEncoding {
		psAscii = 3,
		psBinary = 1,
		psJPEGLow = 2,
		psJPEGMedium = 4,
		psJPEGHigh = 5,
		psJPEGMaximum = 6,
	}

	enum PsFormatOptionsType {
		psStandardBaseline = 1,
		psOptimizedBaseline = 2,
		psProgressive = 3,
	}

	enum PsPDFEncodingType {
		psPDFNone = 0,
		psPDFZip = 1,
		psPDFJPEG = 2,
		psPDFZip4Bit = 3,
		psPDFJPEGHIGH = 4,
		psPDFJPEGMEDHIGH = 5,
		psPDFJPEGMED = 6,
		psPDFJPEGMEDLOW = 7,
		psPDFJPEGLOW = 8,
		psPDFJPEG2000HIGH = 9,
		psPDFJPEG2000MEDHIGH = 10,
		psPDFJPEG2000MED = 11,
		psPDFJPEG2000MEDLOW = 12,
		psPDFJPEG2000LOW = 13,
		psPDFJPEG2000LOSSLESS = 14,
	}

	enum PsPDFStandardType {
		psNoStandard = 0,
		psPDFX1A2001 = 1,
		psPDFX1A2003 = 2,
		psPDFX32002 = 3,
		psPDFX32003 = 4,
		psPDFX42008 = 5,
	}

	enum PsPDFCompatibilityType {
		psPDF13 = 1,
		psPDF14 = 2,
		psPDF15 = 3,
		psPDF16 = 4,
		psPDF17 = 5,
	}

	enum PsPDFResampleType {
		psNoResample = 0,
		psPDFAverage = 1,
		psPDFSubSample = 2,
		psPDFBicubic = 3,
	}

	enum PsPICTBitsPerPixels {
		psPICT2Bits = 2,
		psPICT4Bits = 4,
		psPICT8Bits = 8,
		psPICT16Bits = 16,
		psPICT32Bits = 32,
	}

	enum PsPICTCompression {
		psNoPICTCompression = 1,
		psJPEGLowPICT = 2,
		psJPEGMediumPICT = 4,
		psJPEGHighPICT = 5,
		psJPEGMaximumPICT = 6,
	}

	enum PsTargaBitsPerPixels {
		psTarga16Bits = 16,
		psTarga24Bits = 24,
		psTarga32Bits = 32,
	}

	enum PsTiffEncodingType {
		psNoTIFFCompression = 1,
		psTiffLZW = 2,
		psTiffJPEG = 3,
		psTiffZIP = 4,
	}

	enum PsLayerCompressionType {
		psRLELayerCompression = 1,
		psZIPLayerCompression = 2,
	}

	enum PsDCSType {
		psNoComposite = 1,
		psGrayscaleComposite = 2,
		psColorComposite = 3,
	}

	enum PsIllustratorPathType {
		psDocumentBounds = 1,
		psAllPaths = 2,
		psNamedPath = 3,
	}

	enum PsSaveDocumentType {
		psPhotoshopSave = 1,
		psBMPSave = 2,
		psCompuServeGIFSave = 3,
		psPhotoshopEPSSave = 4,
		psJPEGSave = 6,
		psPCXSave = 7,
		psPhotoshopPDFSave = 8,
		psPICTFileFormatSave = 10,
		psPICTResourceFormatSave = 11,
		psPixarSave = 12,
		psPNGSave = 13,
		psRawSave = 14,
		psScitexCTSave = 15,
		psTargaSave = 16,
		psTIFFSave = 17,
		psPhotoshopDCS_1Save = 18,
		psPhotoshopDCS_2Save = 19,
		psAliasPIXSave = 25,
		psElectricImageSave = 26,
		psPortableBitmapSave = 27,
		psWavefrontRLASave = 28,
		psSGIRGBSave = 29,
		psSoftImageSave = 30,
		psWirelessBitmapSave = 31,
	}

	enum PsColorReductionType {
		psPerceptualReduction = 0,
		psSelective = 1,
		psAdaptive = 2,
		psRestrictive = 3,
		psCustomReduction = 4,
		psBlackWhiteReduction = 5,
		psSFWGrayscale = 6,
		psMacintoshColors = 7,
		psWindowsColors = 8,
	}

	enum PsBitmapConversionType {
		psHalfThreshold = 1,
		psPatternDither = 2,
		psDiffusionDither = 3,
		psHalftoneScreen = 4,
		psCustomPattern = 5,
	}

	enum PsBitmapHalfToneType {
		psHalftoneRound = 1,
		psHalftoneDiamond = 2,
		psHalftoneEllipse = 3,
		psHalftoneLine = 4,
		psHalftoneSquare = 5,
		psHalftoneCross = 6,
	}

	enum PsTransitionType {
		psBlindsHorizontal = 1,
		psBlindsVertical = 2,
		psDissolveTransition = 3,
		psBoxIn = 4,
		psBoxOut = 5,
		psGlitterDown = 6,
		psGlitterRight = 7,
		psGlitterRightDown = 8,
		psNoTrasition = 9,
		psRandom = 10,
		psSplitHorizontalIn = 11,
		psSplitHorizontalOut = 12,
		psSplitVerticalIn = 13,
		psSplitVerticalOut = 14,
		psWipeDown = 15,
		psWipeLeft = 16,
		psWipeRight = 17,
		psWipeUp = 18,
	}

	enum PsMagnificationType {
		psActualSize = 0,
		psFitPage = 1,
	}

	enum PsGalleryFontType {
		psArial = 1,
		psCourierNew = 2,
		psHelvetica = 3,
		psTimesNewRoman = 4,
	}

	enum PsGalleryConstrainType {
		psConstrainWidth = 1,
		psConstrainHeight = 2,
		psConstrainBoth = 3,
	}

	enum PsGalleryThumbSizeType {
		psSmall = 1,
		psMedium = 2,
		psLarge = 3,
		psCustomThumbnail = 4,
	}

	enum PsGallerySecurityType {
		psNoSecurity = 1,
		psCustomSecurityText = 2,
		psFilename = 3,
		psCopyright = 4,
		psCaption = 5,
		psCredit = 6,
		psTitle = 7,
	}

	enum PsGallerySecurityTextPositionType {
		psCentered = 1,
		psUpperLeft = 2,
		psLowerLeft = 3,
		psUpperRight = 4,
		psLowerRight = 5,
	}

	enum PsGallerySecurityTextRotateType {
		psZero = 1,
		psClockwise45 = 2,
		psClockwise90 = 3,
		psCounterClockwise45 = 4,
		psCounterClockwise90 = 5,
	}

	enum PsNewDocumentMode {
		psNewGray = 1,
		psNewRGB = 2,
		psNewCMYK = 3,
		psNewLab = 4,
		psNewBitmap = 5,
	}

	enum PsPicturePackaextType {
		psNoText = 1,
		psUserText = 2,
		psFilenameText = 3,
		psCopyrightText = 4,
		psCaptionText = 5,
		psCreditText = 6,
		psOriginText = 7,
	}

	enum PsBatchDestinationType {
		psNoDestination = 1,
		psSaveAndClose = 2,
		psFolder = 3,
	}

	enum PsOpenDocumentType {
		psPhotoshopOpen = 1,
		psBMPOpen = 2,
		psCompuServeGIFOpen = 3,
		psPhotoshopEPSOpen = 4,
		psFilmstripOpen = 5,
		psJPEGOpen = 6,
		psPCXOpen = 7,
		psPhotoshopPDFOpen = 8,
		psPhotoCDOpen = 9,
		psPICTFileFormatOpen = 10,
		psPICTResourceFormatOpen = 11,
		psPixarOpen = 12,
		psPNGOpen = 13,
		psRawOpen = 14,
		psScitexCTOpen = 15,
		psTargaOpen = 16,
		psTIFFOpen = 17,
		psPhotoshopDCS_1Open = 18,
		psPhotoshopDCS_2Open = 19,
		psPDFOpen = 21,
		psEPSOpen = 22,
		psEPSPICTPreviewOpen = 23,
		psEPSTIFFPreviewOpen = 24,
		psAliasPIXOpen = 25,
		psElectricImageOpen = 26,
		psPortableBitmapOpen = 27,
		psWavefrontRLAOpen = 28,
		psSGIRGBOpen = 29,
		psSoftImageOpen = 30,
		psWirelessBitmapOpen = 31,
		psCameraRAWOpen = 32,
		psDICOMOpen = 33,
	}

	enum PsSaveOptions {
		psSaveChanges = 1,
		psDoNotSaveChanges = 2,
		psPromptToSaveChanges = 3,
	}

	enum PsDocumentFill {
		psWhite = 1,
		psBackgroundColor = 2,
		psTransparent = 3,
	}

	enum PsAnchorPosition {
		psTopLeft = 1,
		psTopCenter = 2,
		psTopRight = 3,
		psMiddleLeft = 4,
		psMiddleCenter = 5,
		psMiddleRight = 6,
		psBottomLeft = 7,
		psBottomCenter = 8,
		psBottomRight = 9,
	}

	enum PsExtensionType {
		psLowercase = 2,
		psUppercase = 3,
	}

	enum PsTrimType {
		psTransparentPixels = 0,
		psTopLeftPixel = 1,
		psBottomRightPixel = 9,
	}

	enum PsResetTar {
		psAllWarnings = 1,
		psAllTools = 2,
		psEverything = 3,
	}

	enum PsColorBlendMode {
		psNormalBlendColor = 2,
		psDissolveBlend = 3,
		psBehindBlend = 24,
		psClearBlend = 25,
		psDarkenBlend = 4,
		psMultiplyBlend = 5,
		psColorBurnBlend = 6,
		psLinearBurnBlend = 7,
		psLightenBlend = 8,
		psScreenBlend = 9,
		psColorDodgeBlend = 10,
		psLinearDodgeBlend = 11,
		psOverlayBlend = 12,
		psSoftLightBlend = 13,
		psHardLightBlend = 14,
		psVividLightBlend = 15,
		psLinearLightBlend = 16,
		psPinLightBlend = 17,
		psDifferenceBlend = 18,
		psExclusionBlend = 19,
		psSubtractBlend = 29,
		psDivideBlend = 30,
		psHueBlend = 20,
		psSaturationBlendColor = 21,
		PsColorBlendMode = 22,
		psLuminosityBlend = 23,
		psHardMixBlend = 26,
		psLighterColorBlend = 27,
		psDarkerColorBlend = 28,
	}

	enum PsSelectionType {
		psReplaceSelection = 1,
		psExtendSelection = 2,
		psDiminishSelection = 3,
		psIntersectSelection = 4,
	}

	enum PsExportType {
		psIllustratorPaths = 1,
		psSaveForWeb = 2,
	}

	enum PsTextureType {
		psBlocksTexture = 1,
		psCanvasTexture = 2,
		psFrostedTexture = 3,
		psTinyLensTexture = 4,
		psTextureFile = 5,
	}

	enum PsStrokeLocation {
		psInsideStroke = 1,
		psCenterStroke = 2,
		psOutsideStroke = 3,
	}

	enum PsJavaScriptExecutionMode {
		psNeverShowDebugger = 1,
		psDebuggerOnError = 2,
		psBeforeRunning = 3,
	}

	enum PsSourceSpaceType {
		psDocumentSpace = 1,
		psProofSpace = 2,
	}

	enum PsGallerySecurityTextColorType {
		psBlackText = 1,
		psWhiteText = 2,
		psCustomText = 3,
	}

	enum PsToolType {
		psPencil = 1,
		psBrush = 2,
		psEraser = 3,
		psBackgroundEraser = 4,
		psCloneStamp = 5,
		psPatternStamp = 6,
		psHealingBrush = 7,
		psHistoryBrush = 8,
		psArtHistoryBrush = 9,
		psSmudge = 10,
		psBlur = 11,
		psSharpen = 12,
		psDodge = 13,
		psBurn = 14,
		psSponge = 15,
		psColorReplacementTool = 16,
	}

	enum PsFileNamingType {
		psDocumentNameMixed = 1,
		psDocumentNameLower = 2,
		psDocumentNameUpper = 3,
		psSerialNumber1 = 4,
		psSerialNumber2 = 5,
		psSerialNumber3 = 6,
		psSerialNumber4 = 7,
		psSerialLetterLower = 8,
		psSerialLetterUpper = 9,
		psMmddyy = 10,
		psMmdd = 11,
		psYyyymmdd = 12,
		psYymmdd = 13,
		psYyddmm = 14,
		psDdmmyy = 15,
		psDdmm = 16,
		psExtensionLower = 17,
		psExtensionUpper = 18,
	}

	enum PsDepthMapSource {
		psNoSource = 1,
		psTransparencyChannel = 2,
		psLayerMask = 3,
		psImageHighlight = 4,
	}

	enum PsGeometry {
		psTriangle = 0,
		psPentagon = 1,
		psHexagon = 2,
		psSquareGeometry = 3,
		psHeptagon = 4,
		psOctagon = 5,
	}

	enum PsMeasurementSource {
		psMeasureSelection = 1,
		psMeasureCountTool = 2,
		psMeasureRulerTool = 3,
	}

	enum PsMeasurementRange {
		psAllMeasurements = 1,
		psActiveMeasurements = 2,
	}
}



interface iApplication : IDispatch {
	const static IID clsID = Guid!("C09F153E-DFF7-4EFF-A570-AF82C1A5A2A8");
	const static IID iID = Guid!("5DE90358-4D0B-4FA1-BA3E-C91BBA863F32");
	BSTR ColorSettings();
	BSTR WinColorSettings();
	iDocument ActiveDocument();
	void ActiveDocument(iDocument value);
	BSTR Name();
	BSTR Path();
	iPreferences Preferences();	
	BSTR ScriptingVersion();
	double FreeMemory();	
	BSTR Version();
	bool Visible();
	void Visible(bool value);
	PsDialogModes DisplayDialogs();
	void DisplayDialogs(PsDialogModes value);
	iSolidColor ForegroundColor();
	void ForegroundColor(iSolidColor value);
	iSolidColor BackgroundColor();
	void BackgroundColor(iSolidColor value);
	bool NotifiersEnabled();
	void NotifiersEnabled(bool value);
	VARIANT WindowsFileTypes();
	VARIANT MacintoshFileTypes();
	BSTR PreferencesFolder();
	BSTR Locale();
	iDocuments Documents();
	iTextFonts Fonts();
	iNotifiers Notifiers();
	BSTR ScriptingBuildDate();
	VARIANT RecentFiles();
	BSTR Build();
	BSTR SystemInformation();
	iMeasurementLog MeasurementLog();
	BSTR CurrentTool();
	void CurrentTool(BSTR value);
	iApplication Application();
	void DoAction(BSTR Action, BSTR From);
	void Load(BSTR Document);
	iDocument Open(BSTR Document, VARIANT As, VARIANT AsSmartObject);
	void Purge(PsPurar Tar);
	BSTR DoJavaScript(BSTR JavaScriptCode, VARIANT Arguments, VARIANT ExecutionMode);
	BSTR DoJavaScriptFile(BSTR JavaScriptFile, VARIANT Arguments, VARIANT ExecutionMode);
	BSTR MakePhotoGallery(VARIANT InFolder, BSTR OutFolder, VARIANT Options);
	BSTR MakePDFPresentation(VARIANT InFiles, BSTR OutFile, VARIANT Options);
	BSTR MakePhotomerge(VARIANT InFiles);
	BSTR MakeContactSheet(VARIANT InFiles, VARIANT Options);
	BSTR MakePicturePackage(VARIANT InFiles, VARIANT Options);
	BSTR Batch(VARIANT InFiles, BSTR Action, BSTR From, VARIANT Options);
	void Quit();
	void Refresh();
	bool FeatureEnabled(BSTR Name);
	VARIANT OpenDialog();
	iActionDescriptor ExecuteAction(int EventID, VARIANT Descriptor, VARIANT DisplayDialogs); 
	iActionDescriptor ExecuteAction(iActionReference Reference);
	int StringIDToTypeID(BSTR StringID);
	BSTR TypeIDToStringID(int TypeID);
	int CharIDToTypeID(BSTR CharID);
	BSTR TypeIDToCharID(int TypeID);
	void ChangeColorSettings(VARIANT Name, VARIANT File);
}



interface iDocuments : IDispatch {
	const static IID iID = Guid!("662506C7-6AAE-4422-ACA4-C63627CB1868");
	iApplication Application();
	IDispatch Parent();
	int Count();
	IUnknown NewEnum();
	iDocument Item(VARIANT ItemKey);
	int Index(iDocument ItemPtr);
	iDocument Add(VARIANT Width, VARIANT Height, VARIANT Resolution, VARIANT Name, VARIANT Mode, VARIANT InitialFill, VARIANT PixelAspectRatio, VARIANT BitsPerChannel, VARIANT ColorProfileName);
}




interface iDocument : IDispatch {
	const static IID iID = Guid!("B1ADEFB6-C536-42D6-8A83-397354A769F8");
	iArtLayer BackgroundLayer();
	PsBitsPerChannelType BitsPerChannel();
	void BitsPerChannel(PsBitsPerChannelType value);
	PsColorProfileType ColorProfileType();
	void ColorProfileType(PsColorProfileType value);
	BSTR ColorProfileName();
	void ColorProfileName(BSTR value);
	PsDocumentMode Mode();
	VARIANT ComponentChannels();
	iHistoryState ActiveHistoryState();
	void ActiveHistoryState(iHistoryState value);
	iHistoryState ActiveHistoryBrushSource();
	void ActiveHistoryBrushSource(iHistoryState value);
	IDispatch ActiveLayer();
	void ActiveLayer(IDispatch value);
	VARIANT ActiveChannels();
	void ActiveChannels(VARIANT value);
	iDocumentInfo Info();
	BSTR FullName();
	double Height();
	bool Managed();
	bool Saved();
	BSTR Name();
	BSTR Path();
	bool QuickMaskMode();
	void QuickMaskMode(bool value);
	double Resolution();
	iSelection Selection();
	double Width();
	VARIANT Histogram();
	double PixelAspectRatio();
	void PixelAspectRatio(double value);
	iXMPMetadata XMPMetadata();
	iMeasurementScale MeasurementScale();
	int id();
	iLayers Layers();
	iLayerSets LayerSets();
	iArtLayers ArtLayers();
	iChannels Channels();
	iHistoryStates HistoryStates();
	iLayerComps LayerComps();
	iPathItems PathItems();
	iCountItems CountItems();
	iColorSamplers ColorSamplers();
	iApplication Application();
	IDispatch Parent();
	void Close(VARIANT Saving);
	void ConvertProfile(BSTR DestinationProfile, PsIntent Intent, VARIANT BlackPointCompensation, VARIANT Dither);
	void ChangeMode(PsChangeMode DestinationMode, VARIANT Options);
	void Crop(VARIANT Bounds, VARIANT Angle, VARIANT Width, VARIANT Height);
	void Export(BSTR ExportIn, VARIANT ExportAs, VARIANT Options);
	void FlipCanvas(PsDirection Direction);
	void ImportAnnotations(BSTR File);
	void Flatten();
	void MergeVisibleLayers();
	iArtLayer Paste(VARIANT IntoSelection);
	void PrintOut(VARIANT SourceSpace, VARIANT PrintSpace, VARIANT Intent, VARIANT BlackPointCompensation);
	void RevealAll();
	void RasterizeAllLayers();
	void RecordMeasurements(VARIANT Source, VARIANT DataPoints);
	void RotateCanvas(double Angle);
	void ResizeCanvas(VARIANT Width, VARIANT Height, VARIANT Anchor);
	void ResizeImage(VARIANT Width, VARIANT Height, VARIANT Resolution, VARIANT ResampleMethod, VARIANT Amount);
	VARIANT SplitChannels();
	void Save();
	void SaveAs(BSTR SaveIn, VARIANT Options, VARIANT AsCopy, VARIANT ExtensionType);
	void Trap(int Width);
	void Trim(VARIANT Type, VARIANT Top, VARIANT Left, VARIANT Bottom, VARIANT Right);
	iDocument Duplicate(VARIANT Name, VARIANT MergeLayersOnly);
	void AutoCount(iChannel Channel, int Threshold);
}




interface iSolidColor : IDispatch {
	const static IID clsID = Guid!("AEADF007-9EE5-41D7-8CB1-AB5F353D1151");
	const static IID iID = Guid!("D2D1665E-C1B9-4CA0-8AC9-529F6A3D9002");
	PsColorModel Model();
	void Model(PsColorModel value);
	iRGBColor RGB();
	void RGB(iRGBColor value);
	iGrayColor Gray();
	void Gray(iGrayColor value);
	iCMYKColor CMYK();
	void CMYK(iCMYKColor value);
	iLabColor Lab();
	void Lab(iLabColor value);
	iHSBColor HSB();
	void HSB(iHSBColor value);
	iRGBColor NearestWebColor();
	iApplication Application();
	void ObjectValue(iSolidColor value);
	bool IsEqual(iSolidColor Color);
}

interface iRGBColor : IDispatch {
	const static IID clsID = Guid!("4549DC9D-8A15-46F0-A0ED-7DB9C02FCB18");
	const static IID iID = Guid!("45F1195F-3554-4B3F-A00A-E1D189C0DC3E");
	double Red();
	void Red(double value);
	double Green();
	void Green(double value);
	double Blue();
	void Blue(double value);
	BSTR HexValue();
	void HexValue(BSTR value);
	iApplication Application();
	void ObjectValue(iRGBColor value);
}



interface iArtLayer : IDispatch {
	const static IID iID = Guid!("16BE80A3-57B1-4871-83AC-7F844EEEB1CA");
	double FillOpacity();
	void FillOpacity(double value);
	bool Grouped();
	void Grouped(bool value);
	bool IsBackgroundLayer();
	void IsBackgroundLayer(bool value);
	bool PixelsLocked();
	void PixelsLocked(bool value);
	bool PositionLocked();
	void PositionLocked(bool value);
	bool TransparentPixelsLocked();
	void TransparentPixelsLocked(bool value);
	PsLayerKind Kind();
	void Kind(PsLayerKind value);
	iTextItem TextItem();
	IDispatch Layer();
	BSTR Name();
	void Name(BSTR value);
	bool AllLocked();
	void AllLocked(bool value);
	PsBlendMode BlendMode();
	void BlendMode(PsBlendMode value);
	VARIANT LinkedLayers();
	double Opacity();
	void Opacity(double value);
	bool Visible();
	void Visible(bool value);
	int id();
	int ItemIndex();
	PsLayerType LayerType();
	iArtLayer ArtLayer();
	iLayerSet LayerSet();
	VARIANT Bounds();
	iApplication Application();
	IDispatch Parent();
	void ApplyStyle(BSTR StyleName);
	void Clear();
	void Copy(VARIANT Merge);
	void Cut();
	iArtLayer Merge();
	void Rasterize(PsRasterizeType Tar);
	void ApplyAverage();
	void ApplyGaussianBlur(double Radius);
	void ApplyLensBlur(VARIANT Source, VARIANT FocalDistance, VARIANT InvertDepthMap, VARIANT Shape, VARIANT Radius, VARIANT BladeCurvature, VARIANT Rotation, VARIANT Brightness, VARIANT Threshold, VARIANT Amount, VARIANT Distribution, VARIANT Monochromatic);
	void ApplyBlur();
	void ApplyBlurMore();
	void ApplyMotionBlur(int Angle, double Radius);
	void ApplyRadialBlur(int Amount, PsRadialBlurMethod BlurMethod, PsRadialBlurQuality BlurQuality, VARIANT BlurCenter);
	void ApplySmartBlur(double Radius, double Threshold, PsSmartBlurQuality BlurQuality, PsSmartBlurMode Mode);
	void ApplyDiffuseGlow(int Graininess, int GlowAmount, int ClearAmount);
	void ApplyDisplace(int HorizontalScale, int VerticalScale, PsDisplacementMapType DisplacementType, PsUndefinedAreas UndefinedAreas, BSTR DisplacementMapFile);
	void ApplyGlassEffect(int Distortion, int Smoothness, int Scaling, VARIANT Invert, VARIANT Texture, VARIANT TextureFile);
	void ApplyOceanRipple(int Size, int Magnitude);
	void ApplyPinch(int Amount);
	void ApplyPolarCoordinates(PsPolarConversionType Conversion);
	void ApplyRipple(int Amount, PsRippleSize Size);
	void ApplyShear(VARIANT Curve, PsUndefinedAreas UndefinedAreas);
	void ApplySpherize(int Amount, PsSpherizeMode Mode);
	void ApplyTwirl(int Angle);
	void ApplyWave(int GeneratorNumber, int MinimumWavelength, int MaximumWavelength, int MinimumAmplitude, int MaximumAmplitude, int HorizontalScale, int VerticalScale, PsWaveType WaveType, PsUndefinedAreas UndefinedAreas, int RandomSeed);
	void ApplyZigZag(int Amount, int Ridges, PsZigZagType Style);
	void ApplyAddNoise(double Amount, PsNoiseDistribution Distribution, bool Monochromatic);
	void ApplyDespeckle();
	void ApplyDustAndScratches(int Radius, int Threshold);
	void ApplyMedianNoise(double Radius);
	void ApplyClouds();
	void ApplyDifferenceClouds();
	void ApplyLensFlare(int Brightness, VARIANT FlareCenter, PsLensType LensType);
	void ApplyTextureFill(BSTR TextureFile);
	void ApplySharpen();
	void ApplySharpenEdges();
	void ApplySharpenMore();
	void ApplyUnSharpMask(double Amount, double Radius, int Threshold);
	void ApplyDeInterlace(PsEliminateFields EliminateFields, PsCreateFields CreateFields);
	void ApplyNTSC();
	void ApplyCustomFilter(VARIANT Characteristics, int Scale, int Offset);
	void ApplyHighPass(double Radius);
	void ApplyMaximum(double Radius);
	void ApplyMinimum(double Radius);
	void ApplyOffset(double Horizontal, double Vertical, PsOffsetUndefinedAreas UndefinedAreas);
	void AdjustLevels(int InRangeStart, int InRangeEnd, double InRangeGamma, int OutRangeStart, int OutRangeEnd);
	void AutoLevels();
	void AutoContrast();
	void AdjustCurves(VARIANT CurveShape);
	void AdjustBrightnessContrast(int Brightness, int Contrast);
	void AdjustColorBalance(VARIANT Shadows, VARIANT Midtones, VARIANT Highlights, VARIANT PreserveLuminosity);
	void Desaturate();
	void SelectiveColor(PsAdjustmentReference SelectionMethod, VARIANT Reds, VARIANT Yellows, VARIANT Greens, VARIANT Cyans, VARIANT Blues, VARIANT Magentas, VARIANT Whites, VARIANT Neutrals, VARIANT Blacks);
	void MixChannels(VARIANT OutChannels, VARIANT Monochrome);
	void Invert();
	void Equalize();
	void Threshold(int Level);
	void Posterize(int Levels);
	void PhotoFilter(VARIANT FillColor, VARIANT Density, VARIANT PreserveLuminosity);
	void ShadowHighlight(VARIANT ShadowAmount, VARIANT ShadowWidth, VARIANT ShadowRaduis, VARIANT HighlightAmount, VARIANT HighlightWidth, VARIANT HighlightRaduis, VARIANT ColorCorrection, VARIANT MidtoneContrast, VARIANT BlackClip, VARIANT WhiteClip);
	void Unlink();
	void Link(IDispatch With);
	void Translate(VARIANT DeltaX, VARIANT DeltaY);
	void Rotate(double Angle, VARIANT Anchor);
	void Resize(VARIANT Horizontal, VARIANT Vertical, VARIANT Anchor);
	void MoveToBeginning(IDispatch Container);
	void MoveToEnd(IDispatch Container);
	void MoveBefore(IDispatch RelativeObject);
	void MoveAfter(IDispatch RelativeObject);
	IDispatch Duplicate(VARIANT RelativeObject, VARIANT InsertionLocation);
	void Move(IDispatch RelativeObject, PsElementPlacement InsertionLocation);
	void Delete();
}



interface iTextItem : IDispatch {
	const static IID iID = Guid!("E7A940CD-9AC7-4D76-975D-24D6BA0FDD16");
	PsAntiAlias AntiAliasMethod();
	void AntiAliasMethod(PsAntiAlias value);
	PsAutoKernType AutoKerning();
	void AutoKerning(PsAutoKernType value);
	iSolidColor Color();
	void Color(iSolidColor value);
	bool UseAutoLeading();
	void UseAutoLeading(bool value);
	double Tracking();
	void Tracking(double value);
	int VerticalScale();
	void VerticalScale(int value);
	int HorizontalScale();
	void HorizontalScale(int value);
	double BaselineShift();
	void BaselineShift(double value);
	BSTR Contents();
	void Contents(BSTR value);
	BSTR Font();
	void Font(BSTR value);
	double Leading();
	void Leading(double value);
	bool Ligatures();
	void Ligatures(bool value);
	bool AlternateLigatures();
	void AlternateLigatures(bool value);
	bool OldStyle();
	void OldStyle(bool value);
	VARIANT Position();
	void Position(VARIANT value);
	PsDirection Direction();
	void Direction(PsDirection value);
	double Size();
	void Size(double value);
	bool FauxBold();
	void FauxBold(bool value);
	bool FauxItalic();
	void FauxItalic(bool value);
	PsCase Capitalization();
	void Capitalization(PsCase value);
	PsStrikeThruType StrikeThru();
	void StrikeThru(PsStrikeThruType value);
	PsUnderlineType Underline();
	void Underline(PsUnderlineType value);
	PsLanguage Language();
	void Language(PsLanguage value);
	bool NoBreak();
	void NoBreak(bool value);
	PsTextType Kind();
	void Kind(PsTextType value);
	PsJustification Justification();
	void Justification(PsJustification value);
	double LeftIndent();
	void LeftIndent(double value);
	double FirstLineIndent();
	void FirstLineIndent(double value);
	double RightIndent();
	void RightIndent(double value);
	double SpaceBefore();
	void SpaceBefore(double value);
	double SpaceAfter();
	void SpaceAfter(double value);
	bool HangingPuntuation();
	void HangingPuntuation(bool value);
	PsTextComposer TextComposer();
	void TextComposer(PsTextComposer value);
	bool Hyphenation();
	void Hyphenation(bool value);
	double MinimumGlyphScaling();
	void MinimumGlyphScaling(double value);
	double DesiredGlyphScaling();
	void DesiredGlyphScaling(double value);
	double MaximumGlyphScaling();
	void MaximumGlyphScaling(double value);
	double MinimumLetterScaling();
	void MinimumLetterScaling(double value);
	double DesiredLetterScaling();
	void DesiredLetterScaling(double value);
	double MaximumLetterScaling();
	void MaximumLetterScaling(double value);
	double MinimumWordScaling();
	void MinimumWordScaling(double value);
	double DesiredWordScaling();
	void DesiredWordScaling(double value);
	double MaximumWordScaling();
	void MaximumWordScaling(double value);
	double AutoLeadingAmount();
	void AutoLeadingAmount(double value);
	int HyphenateWordsLongerThan();
	void HyphenateWordsLongerThan(int value);
	int HyphenateAfterFirst();
	void HyphenateAfterFirst(int value);
	int HyphenateBeforeLast();
	void HyphenateBeforeLast(int value);
	int HyphenLimit();
	void HyphenLimit(int value);
	double HyphenationZone();
	void HyphenationZone(double value);
	bool HyphenateCapitalWords();
	void HyphenateCapitalWords(bool value);
	double Width();
	void Width(double value);
	double Height();
	void Height(double value);
	PsWarpStyle WarpStyle();
	void WarpStyle(PsWarpStyle value);
	PsDirection WarpDirection();
	void WarpDirection(PsDirection value);
	double WarpBend();
	void WarpBend(double value);
	double WarpHorizontalDistortion();
	void WarpHorizontalDistortion(double value);
	double WarpVerticalDistortion();
	void WarpVerticalDistortion(double value);
	iApplication Application();
	IDispatch Parent();
	void CreatePath();
	void ConvertToShape();
}





interface iGrayColor : IDispatch {
	const static IID clsID = Guid!("DFCCAFB4-52DC-447D-9DE4-2921568B08A5");
	const static IID iID = Guid!("1B28B8CD-7578-415F-AC67-DC22A69F4C07");
	double Gray();
	void Gray(double value);
	iApplication Application();
	void ObjectValue(iGrayColor value);
}



interface iCMYKColor : IDispatch {
	const static IID clsID = Guid!("E4FD9028-B226-493E-B56B-3F7743BAADFC");
	const static IID iID = Guid!("29C13F49-BCEF-4FE2-BFC7-6F03B82B726F");
	double Cyan();
	void Cyan(double value);
	double Magenta();
	void Magenta(double value);
	double Yellow();
	void Yellow(double value);
	double Black();
	void Black(double value);
	iApplication Application();
	void ObjectValue(iCMYKColor value);
}



interface iLabColor : IDispatch {
	const static IID clsID = Guid!("896AAA4B-F77B-43A9-A592-54CD06348453");
	const static IID iID = Guid!("F4D7F5C2-37DB-4DF7-8A7D-528902056596");
	double L();
	void L(double value);
	double A();
	void A(double value);
	double B();
	void B(double value);
	iApplication Application();
	void ObjectValue(iLabColor value);
}



interface iHSBColor : IDispatch {
	const static IID clsID = Guid!("CD758513-BA4D-4FAA-BED5-B42B906D78BA");
	const static IID iID = Guid!("F91F9C5B-AC34-45B7-AFF2-871D9DD2E8EC");
	double Hue();
	void Hue(double value);
	double Saturation();
	void Saturation(double value);
	double Brightness();
	void Brightness(double value);
	iApplication Application();
	void ObjectValue(iHSBColor value);
}



interface iLayerSet : IDispatch {
	const static IID iID = Guid!("C1C35524-2AA4-4630-80B9-011EFE3D5779");
	VARIANT EnabledChannels();
	void EnabledChannels(VARIANT value);
	iLayers Layers();
	iLayerSets LayerSets();
	iArtLayers ArtLayers();
	IDispatch Layer();
	BSTR Name();
	void Name(BSTR value);
	bool AllLocked();
	void AllLocked(bool value);
	PsBlendMode BlendMode();
	void BlendMode(PsBlendMode value);
	VARIANT LinkedLayers();
	double Opacity();
	void Opacity(double value);
	bool Visible();
	void Visible(bool value);
	int id();
	int ItemIndex();
	PsLayerType LayerType();
	iArtLayer ArtLayer();
	iLayerSet LayerSet();
	VARIANT Bounds();
	iApplication Application();
	IDispatch Parent();
	iArtLayer Merge();
	void Unlink();
	void Link(IDispatch With);
	void Translate(VARIANT DeltaX, VARIANT DeltaY);
	void Rotate(double Angle, VARIANT Anchor);
	void Resize(VARIANT Horizontal, VARIANT Vertical, VARIANT Anchor);
	void MoveToBeginning(IDispatch Container);
	void MoveToEnd(IDispatch Container);
	void MoveBefore(IDispatch RelativeObject);
	void MoveAfter(IDispatch RelativeObject);
	IDispatch Duplicate(VARIANT RelativeObject, VARIANT InsertionLocation);
	void Move(IDispatch RelativeObject, PsElementPlacement InsertionLocation);
	void Delete();
}



interface iLayers : IDispatch {
	const static IID iID = Guid!("DDA16C46-15B2-472D-A659-41AA7BFDC4FD");
	iApplication Application();
	IDispatch Parent();
	int Count();
	IUnknown NewEnum();
	void Remove(IDispatch Item);
	void RemoveAll();
	IDispatch Item(VARIANT ItemKey);
	int Index(IDispatch ItemPtr);
}



interface iLayerSets : IDispatch {
	const static IID iID = Guid!("323DD2BC-0205-4A44-9F8E-0CF2556F00DF");
	iApplication Application();
	IDispatch Parent();
	int Count();
	IUnknown NewEnum();
	void Remove(iLayerSet Item);
	void RemoveAll();
	iLayerSet Item(VARIANT ItemKey);
	int Index(iLayerSet ItemPtr);
	iLayerSet Add();
}



interface iArtLayers : IDispatch {
	const static IID iID = Guid!("EC6A366C-F901-488D-A2C3-9E2E78B72DC6");
	iApplication Application();
	IDispatch Parent();
	int Count();
	IUnknown NewEnum();
	void Remove(iArtLayer Item);
	void RemoveAll();
	iArtLayer Item(VARIANT ItemKey);
	int Index(iArtLayer ItemPtr);
	iArtLayer Add();
}



interface iHistoryState : IDispatch {
	const static IID iID = Guid!("EDC373C3-FE30-40BA-A31C-0251CA7456F1");
	BSTR Name();
	bool Snapshot();
	iApplication Application();
	IDispatch Parent();
}



interface iDocumentInfo : IDispatch {
	const static IID iID = Guid!("746FEF90-A182-4BD0-A4F6-BB6BBAE87A78");
	BSTR Title();
	void Title(BSTR value);
	BSTR Author();
	void Author(BSTR value);
	BSTR AuthorPosition();
	void AuthorPosition(BSTR value);
	BSTR Caption();
	void Caption(BSTR value);
	BSTR CaptionWriter();
	void CaptionWriter(BSTR value);
	BSTR JobName();
	void JobName(BSTR value);
	PsCopyrightedType Copyrighted();
	void Copyrighted(PsCopyrightedType value);
	BSTR CopyrightNotice();
	void CopyrightNotice(BSTR value);
	BSTR OwnerUrl();
	void OwnerUrl(BSTR value);
	VARIANT Keywords();
	void Keywords(VARIANT value);
	BSTR Category();
	void Category(BSTR value);
	VARIANT SupplementalCategories();
	void SupplementalCategories(VARIANT value);
	BSTR CreationDate();
	void CreationDate(BSTR value);
	BSTR City();
	void City(BSTR value);
	BSTR ProvinceState();
	void ProvinceState(BSTR value);
	BSTR Country();
	void Country(BSTR value);
	BSTR Credit();
	void Credit(BSTR value);
	BSTR Source();
	void Source(BSTR value);
	BSTR Headline();
	void Headline(BSTR value);
	BSTR Instructions();
	void Instructions(BSTR value);
	BSTR TransmissionReference();
	void TransmissionReference(BSTR value);
	PsUrgency Urgency();
	void Urgency(PsUrgency value);
	VARIANT EXIF();
	iApplication Application();
	IDispatch Parent();
}



interface iSelection : IDispatch {
	const static IID iID = Guid!("09DA6B10-9684-44EE-A575-01F54660BDDC");
	VARIANT Bounds();
	bool Solid();
	iApplication Application();
	IDispatch Parent();
	void Clear();
	void Copy(VARIANT Merge);
	void Cut();
	void SelectBorder(double Width);
	void Contract(double By);
	void Fill(VARIANT FillType, VARIANT Mode, VARIANT Opacity, VARIANT PreserveTransparency);
	void Stroke(VARIANT StrokeColor, int Width, VARIANT Location, VARIANT Mode, VARIANT Opacity, VARIANT PreserveTransparency);
	void SelectAll();
	void Deselect();
	void Select(VARIANT Region, VARIANT Type, VARIANT Feather, VARIANT AntiAlias);
	void Expand(double By);
	void Feather(double By);
	void Grow(int Tolerance, bool AntiAlias);
	void Invert();
	void Similar(int Tolerance, bool AntiAlias);
	void Smooth(int Radius);
	void Store(iChannel Into, VARIANT Combination);
	void Load(iChannel From, VARIANT Combination, VARIANT Inverting);
	void Translate(VARIANT DeltaX, VARIANT DeltaY);
	void TranslateBoundary(VARIANT DeltaX, VARIANT DeltaY);
	void Rotate(double Angle, VARIANT Anchor);
	void RotateBoundary(double Angle, VARIANT Anchor);
	void Resize(VARIANT Horizontal, VARIANT Vertical, VARIANT Anchor);
	void ResizeBoundary(VARIANT Horizontal, VARIANT Vertical, VARIANT Anchor);
	void MakeWorkPath(VARIANT Tolerance);
}



interface iChannel : IDispatch {
	const static IID iID = Guid!("4B9E6B85-0613-4873-8AB7-575CD2226768");
	VARIANT Histogram();
	BSTR Name();
	void Name(BSTR value);
	PsChannelType Kind();
	void Kind(PsChannelType value);
	double Opacity();
	void Opacity(double value);
	bool Visible();
	void Visible(bool value);
	iSolidColor Color();
	void Color(iSolidColor value);
	iApplication Application();
	IDispatch Parent();
	void Merge();
	iChannel Duplicate(VARIANT TarDocument);
	void Delete();
}



interface iXMPMetadata : IDispatch {
	const static IID iID = Guid!("DC865034-A587-4CC4-8A5A-453032562BE4");
	BSTR RawData();
	void RawData(BSTR value);
	iApplication Application();
	IDispatch Parent();
}



interface iMeasurementScale : IDispatch {
	const static IID iID = Guid!("632F36B3-1D76-48BE-ADC3-D7FB62A0C2FB");
	BSTR Name();
	void Name(BSTR value);
	int PixelLength();
	void PixelLength(int value);
	double LogicalLength();
	void LogicalLength(double value);
	BSTR LogicalUnits();
	void LogicalUnits(BSTR value);
	iApplication Application();
	IDispatch Parent();
}



interface iChannels : IDispatch {
	const static IID iID = Guid!("2DC64F97-8C69-4016-A8EB-89A00217291F");
	iApplication Application();
	IDispatch Parent();
	int Count();
	IUnknown NewEnum();
	void Remove(iChannel Item);
	void RemoveAll();
	iChannel Item(VARIANT ItemKey);
	int Index(iChannel ItemPtr);
	iChannel Add();
}



interface iHistoryStates : IDispatch {
	const static IID iID = Guid!("69172A3F-E06E-42E6-B733-4DC36E2AC948");
	iApplication Application();
	IDispatch Parent();
	int Count();
	IUnknown NewEnum();
	iHistoryState Item(VARIANT ItemKey);
	int Index(iHistoryState ItemPtr);
}



interface iLayerComps : IDispatch {
	const static IID iID = Guid!("726B458C-74B0-47AE-B390-99753B55DF2E");
	iApplication Application();
	IDispatch Parent();
	int Count();
	IUnknown NewEnum();
	void RemoveAll();
	iLayerComp Item(VARIANT ItemKey);
	int Index(iLayerComp ItemPtr);
	iLayerComp Add(BSTR Name, VARIANT Comment, VARIANT Appearance, VARIANT Position, VARIANT Visibility);
}



interface iLayerComp : IDispatch {
	const static IID iID = Guid!("9A37A0AC-E951-4B16-A548-886B77338DE0");
	BSTR Name();
	void Name(BSTR value);
	VARIANT Comment();
	void Comment(VARIANT value);
	bool Appearance();
	void Appearance(bool value);
	bool Position();
	void Position(bool value);
	bool Visibility();
	void Visibility(bool value);
	bool Selected();
	iApplication Application();
	IDispatch Parent();
	void Apply();
	void Recapture();
	void ResetFromComp();
	void Delete();
}



interface iPathItems : IDispatch {
	const static IID iID = Guid!("91B5F8AE-3CC5-4775-BCD3-FF1E0724BB01");
	iApplication Application();
	IDispatch Parent();
	int Count();
	IUnknown NewEnum();
	void RemoveAll();
	iPathItem Item(VARIANT ItemKey);
	int Index(iPathItem ItemPtr);
	iPathItem Add(BSTR Name, VARIANT EntirePath);
}



interface iPathItem : IDispatch {
	const static IID iID = Guid!("8B0CB532-4ACC-4BF3-9E42-0949B679D120");
	BSTR Name();
	void Name(BSTR value);
	iSubPathItems SubPathItems();
	PsPathKind Kind();
	void Kind(PsPathKind value);
	iApplication Application();
	IDispatch Parent();
	iPathItem Duplicate(VARIANT Name);
	void MakeSelection(VARIANT Feather, VARIANT AntiAlias, VARIANT Operation);
	void FillPath(VARIANT FillColor, VARIANT Mode, VARIANT Opacity, VARIANT PreserveTransparency, VARIANT Feather, VARIANT AntiAlias, VARIANT WholePath);
	void StrokePath(VARIANT Tool, VARIANT SimulatePressure);
	void MakeClippingPath(VARIANT Flatness);
	void Select();
	void Deselect();
	void Delete();
}



interface iSubPathItems : IDispatch {
	const static IID iID = Guid!("B7283EEC-23B1-49A6-B151-0E97E4AF353C");
	iApplication Application();
	IDispatch Parent();
	int Count();
	IUnknown NewEnum();
	iSubPathItem Item(VARIANT ItemKey);
	int Index(iSubPathItem ItemPtr);
}



interface iSubPathItem : IDispatch {
	const static IID iID = Guid!("B6D22EB9-EC6D-46DB-B52A-5561433A1217");
	bool Closed();
	PsShapeOperation Operation();
	iPathPoints PathPoints();
	iApplication Application();
	IDispatch Parent();
}



interface iPathPoints : IDispatch {
	const static IID iID = Guid!("8214A53C-0E67-49D4-A65A-D56F07B17D37");
	iApplication Application();
	IDispatch Parent();
	int Count();
	IUnknown NewEnum();
	iPathPoint Item(VARIANT ItemKey);
	int Index(iPathPoint ItemPtr);
}



interface iPathPoint : IDispatch {
	const static IID iID = Guid!("7D14BA29-1672-482F-8F48-9DA1E94800FD");
	VARIANT Anchor();
	VARIANT LeftDirection();
	VARIANT RightDirection();
	PsPointKind Kind();
	iApplication Application();
	IDispatch Parent();
}



interface iCountItems : IDispatch {
	const static IID iID = Guid!("9E01C1DA-DF69-4C2C-85EC-616370DF1CF0");
	iApplication Application();
	IDispatch Parent();
	int Count();
	IUnknown NewEnum();
	void RemoveAll();
	iCountItem Item(VARIANT ItemKey);
	int Index(iCountItem ItemPtr);
	iCountItem Add(VARIANT Position);
}



interface iCountItem : IDispatch {
	const static IID iID = Guid!("66869370-9672-492D-93AC-0ADD62F427F1");
	VARIANT Position();
	iApplication Application();
	IDispatch Parent();
	void Delete();
}



interface iColorSamplers : IDispatch {
	const static IID iID = Guid!("97C81476-3F5D-4934-8CAA-1ED0242105B0");
	iApplication Application();
	IDispatch Parent();
	int Count();
	IUnknown NewEnum();
	void RemoveAll();
	iColorSampler Item(VARIANT ItemKey);
	int Index(iColorSampler ItemPtr);
	iColorSampler Add(VARIANT Position);
}



interface iColorSampler : IDispatch {
	const static IID iID = Guid!("B125A66B-4C94-4E55-AF2F-57EC4DCB484B");
	VARIANT Position();
	iSolidColor Color();
	iApplication Application();
	IDispatch Parent();
	void Move(VARIANT Position);
	void Delete();
}



interface iPreferences : IDispatch {
	const static IID iID = Guid!("288BC58E-AB6A-467C-B244-D225349E3EB3");
	PsColorPicker ColorPicker();
	void ColorPicker(PsColorPicker value);
	PsResampleMethod Interpolation();
	void Interpolation(PsResampleMethod value);
	bool ExportClipboard();
	void ExportClipboard(bool value);
	bool ShowToolTips();
	void ShowToolTips(bool value);
	bool KeyboardZoomResizesWindows();
	void KeyboardZoomResizesWindows(bool value);
	bool AutoUpdateOpenDocuments();
	void AutoUpdateOpenDocuments(bool value);
	bool ShowAsianTextOptions();
	void ShowAsianTextOptions(bool value);
	bool BeepWhenDone();
	void BeepWhenDone(bool value);
	bool DynamicColorSliders();
	void DynamicColorSliders(bool value);
	bool SavePaletteLocations();
	void SavePaletteLocations(bool value);
	bool ShowEnglishFontNames();
	void ShowEnglishFontNames(bool value);
	bool UseShiftKeyForToolSwitch();
	void UseShiftKeyForToolSwitch(bool value);
	int NumberOfHistoryStates();
	void NumberOfHistoryStates(int value);
	bool CreateFirstSnapshot();
	void CreateFirstSnapshot(bool value);
	bool NonLinearHistory();
	void NonLinearHistory(bool value);
	bool SmartQuotes();
	void SmartQuotes(bool value);
	PsSaveBehavior ImagePreviews();
	void ImagePreviews(PsSaveBehavior value);
	bool UseLowerCaseExtension();
	void UseLowerCaseExtension(bool value);
	bool AskBeforeSavingLayeredTIFF();
	void AskBeforeSavingLayeredTIFF(bool value);
	PsQueryStateType MaximizeCompatibility();
	void MaximizeCompatibility(PsQueryStateType value);
	int RecentFileListLength();
	void RecentFileListLength(int value);
	bool ColorChannelsInColor();
	void ColorChannelsInColor(bool value);
	bool UseDiffusionDither();
	void UseDiffusionDither(bool value);
	bool PixelDoubling();
	void PixelDoubling(bool value);
	PsPaintingCursors PaintingCursors();
	void PaintingCursors(PsPaintingCursors value);
	PsOtherPaintingCursors OtherCursors();
	void OtherCursors(PsOtherPaintingCursors value);
	PsGridSize GridSize();
	void GridSize(PsGridSize value);
	bool UseVideoAlpha();
	void UseVideoAlpha(bool value);
	double GamutWarningOpacity();
	void GamutWarningOpacity(double value);
	PsUnits RulerUnits();
	void RulerUnits(PsUnits value);
	PsTypeUnits TypeUnits();
	void TypeUnits(PsTypeUnits value);
	double ColumnWidth();
	void ColumnWidth(double value);
	double ColumnGutter();
	void ColumnGutter(double value);
	PsPointType PointSize();
	void PointSize(PsPointType value);
	PsGuideLineStyle GuideStyle();
	void GuideStyle(PsGuideLineStyle value);
	PsGridLineStyle GridStyle();
	void GridStyle(PsGridLineStyle value);
	int GridSubDivisions();
	void GridSubDivisions(int value);
	bool ShowSliceNumber();
	void ShowSliceNumber(bool value);
	bool UseAdditionalPluginFolder();
	void UseAdditionalPluginFolder(bool value);
	BSTR AdditionalPluginFolder();
	void AdditionalPluginFolder(BSTR value);
	int ImageCacheLevels();
	void ImageCacheLevels(int value);
	bool ImageCacheForHistograms();
	void ImageCacheForHistograms(bool value);
	int MaxRAMuse();
	void MaxRAMuse(int value);
	bool UseHistoryLog();
	void UseHistoryLog(bool value);
	PsSaveLogItemsType SaveLogItems();
	void SaveLogItems(PsSaveLogItemsType value);
	PsEditLogItemsType EditLogItems();
	void EditLogItems(PsEditLogItemsType value);
	BSTR SaveLogItemsFile();
	void SaveLogItemsFile(BSTR value);
	PsFontPreviewType FontPreviewSize();
	void FontPreviewSize(PsFontPreviewType value);
	iApplication Application();
	IDispatch Parent();
}





interface iTextFonts : IDispatch {
	const static IID iID = Guid!("BBCE52D6-5D4B-4691-99E3-62C174BD2855");
	iApplication Application();
	IDispatch Parent();
	int Count();
	IUnknown NewEnum();
	iTextFont Item(VARIANT ItemKey);
	int Index(iTextFont ItemPtr);
}



interface iTextFont : IDispatch {
	const static IID iID = Guid!("C88838E3-5A82-4EE7-A66C-E0360C9B0356");
	BSTR Name();
	BSTR PostScriptName();
	BSTR Family();
	BSTR Style();
	iApplication Application();
	IDispatch Parent();
}



interface iNotifiers : IDispatch {
	const static IID iID = Guid!("861C9290-2A0C-4614-8606-706B31BFD45B");
	iApplication Application();
	IDispatch Parent();
	int Count();
	IUnknown NewEnum();
	void RemoveAll();
	iNotifier Item(VARIANT ItemKey);
	int Index(iNotifier ItemPtr);
	iNotifier Add(BSTR Event, BSTR EventFile, VARIANT EventClass);
}



interface iNotifier : IDispatch {
	const static IID iID = Guid!("8B4F1F1E-4ED7-4291-AE61-76ADF4D1D50B");
	BSTR Event();
	BSTR EventFile();
	BSTR EventClass();
	iApplication Application();
	IDispatch Parent();
	void Delete();
}



interface iMeasurementLog : IDispatch {
	const static IID iID = Guid!("84ADBF06-8354-4B5C-9CB1-EA2565B66C7C");
	iApplication Application();
	IDispatch Parent();
	void ExportMeasurements(BSTR File, VARIANT Range, VARIANT DataPoints);
	void DeleteMeasurements(VARIANT Range);
}



interface iActionDescriptor : IDispatch {
	const static IID clsID = Guid!("6B5CC9CB-15A2-4494-B171-CA1D9C30BBED");
	const static IID iID = Guid!("70A60330-E866-46AA-A715-ABF418C41453");
	int Count();
	iApplication Application();
	void ObjectValue(iActionDescriptor value);
	void Clear();
	void Erase(int Key);
	bool Boolean(int Key);
	int Class(int Key);
	double Double(int Key);
	int EnumerationType(int Key);
	int EnumerationValue(int Key);
	int Integer(int Key);
	int LargeInteger(int Key);
	int Key(int Index);
	iActionList List(int Key);
	int ObjectType(int Key);
	iActionDescriptor ObjectValue(int Key);
	BSTR Path(int Key);
	iActionReference Reference(int Key);
	BSTR String(int Key);
	PsDescValueType Type(int Key);
	int UnitDoubleType(int Key);
	double UnitDoubleValue(int Key);
	bool HasKey(int Key);
	bool IsEqual(iActionDescriptor OtherDesc);
	void Boolean(int Key, bool Value);
	void Class(int Key, int Value);
	void Double(int Key, double Value);
	void Enumerated(int Key, int EnumType, int Value);
	void Integer(int Key, int Value);
	void LargeInteger(int Key, int Value);
	void List(int Key, iActionList Value);
	void Object(int Key, int ClassID, iActionDescriptor Value);
	void Path(int Key, BSTR Value);
	void Reference(int Key, iActionReference Value);
	void String(int Key, BSTR Value);
	void UnitDouble(int Key, int UnitID, double Value);
}



interface iActionList : IDispatch {
	const static IID clsID = Guid!("F9669BE8-C73A-43B2-9E10-744A536D2DA7");
	const static IID iID = Guid!("55031766-E456-4E54-A0D0-8E545601A2D8");
	int Count();
	iApplication Application();
	void ObjectValue(iActionList value);
	void Clear();
	bool Boolean(int Index);
	int Class(int Index);
	double Double(int Index);
	int EnumerationType(int Index);
	int EnumerationValue(int Index);
	int Integer(int Index);
	int LargeInteger(int Index);
	iActionList List(int Index);
	int ObjectType(int Index);
	iActionDescriptor ObjectValue(int Index);
	BSTR Path(int Index);
	iActionReference Reference(int Index);
	BSTR String(int Index);
	PsDescValueType Type(int Index);
	int UnitDoubleType(int Index);
	double UnitDoubleValue(int Index);
	void Boolean(bool Value);
	void Class(int Value);
	void Double(double Value);
	void Enumerated(int EnumType, int Value);
	void Integer(int Value);
	void LargeInteger(int Value);
	void List(iActionList Value);
	void Object(int ClassID, iActionDescriptor Value);
	void Path(BSTR Value);
	void Reference(iActionReference Value);
	void String(BSTR Value);
	void UnitDouble(int UnitID, double Value);
}



interface iActionReference : IDispatch {
	const static IID clsID = Guid!("53BED534-66F6-425E-8B74-0B9DE4B3616C");
	const static IID iID = Guid!("DFF407C7-3BCC-45AC-B6CC-EE6D52032D85");
	iApplication Application();
	void ObjectValue(iActionReference value);
	iActionReference Container();
	int DesiredClass();
	int EnumeratedType();
	int EnumeratedValue();
	PsReferenceFormType Form();
	int Identifier();
	int Index();
	BSTR Name();
	int Offset();
	int Property();
	void Class(int DesiredClass);
	void Enumerated(int DesiredClass, int EnumType, int Value);
	void Identifier(int DesiredClass, int Value);
	void Index(int DesiredClass, int Value);
	void Name(int DesiredClass, BSTR Value);
	void Offset(int DesiredClass, int Value);
	void Property(int DesiredClass, int Value);
}



interface iPhotoCDOpenOptions : IDispatch {
	const static IID clsID = Guid!("3D125260-E012-4D4E-BAFB-A57184F32DC6");
	const static IID iID = Guid!("68F15227-7568-47E1-A4F8-5615C24BDD28");
	PsPhotoCDSize PixelSize();
	void PixelSize(PsPhotoCDSize value);
	BSTR ColorProfileName();
	void ColorProfileName(BSTR value);
	double Resolution();
	void Resolution(double value);
	PsPhotoCDColorSpace ColorSpace();
	void ColorSpace(PsPhotoCDColorSpace value);
	PsOrientation Orientation();
	void Orientation(PsOrientation value);
	iApplication Application();
	void ObjectValue(iPhotoCDOpenOptions value);
}



interface iRawFormatOpenOptions : IDispatch {
	const static IID clsID = Guid!("C4321939-B3EE-4AF6-9D39-9F3B3BC3CC5F");
	const static IID iID = Guid!("6B785D83-5B5F-4402-A712-BAEBD8C5B812");
	int Height();
	void Height(int value);
	int Width();
	void Width(int value);
	int ChannelNumber();
	void ChannelNumber(int value);
	bool InterleaveChannels();
	void InterleaveChannels(bool value);
	int BitsPerChannel();
	void BitsPerChannel(int value);
	PsByteOrderType ByteOrder();
	void ByteOrder(PsByteOrderType value);
	int HeaderSize();
	void HeaderSize(int value);
	bool RetainHeader();
	void RetainHeader(bool value);
	iApplication Application();
	void ObjectValue(iRawFormatOpenOptions value);
}



interface iPDFOpenOptions : IDispatch {
	const static IID clsID = Guid!("BFE66DF0-3B14-43A5-90A8-98F2BAFFAE75");
	const static IID iID = Guid!("50D0174F-484D-4A2B-8BF0-A21B84167D82");
	double Resolution();
	void Resolution(double value);
	PsOpenDocumentMode Mode();
	void Mode(PsOpenDocumentMode value);
	bool AntiAlias();
	void AntiAlias(bool value);
	int Page();
	void Page(int value);
	int Object();
	void Object(int value);
	bool ConstrainProportions();
	void ConstrainProportions(bool value);
	double Height();
	void Height(double value);
	double Width();
	void Width(double value);
	PsBitsPerChannelType BitsPerChannel();
	void BitsPerChannel(PsBitsPerChannelType value);
	bool UsePageNumber();
	void UsePageNumber(bool value);
	bool Use3DObjectNumber();
	void Use3DObjectNumber(bool value);
	BSTR Name();
	void Name(BSTR value);
	PsCropToType CropPage();
	void CropPage(PsCropToType value);
	bool SuppressWarnings();
	void SuppressWarnings(bool value);
	iApplication Application();
	void ObjectValue(iPDFOpenOptions value);
}



interface iEPSOpenOptions : IDispatch {
	const static IID clsID = Guid!("BF1F13A3-5992-44F7-AE9D-B9F49C74FF80");
	const static IID iID = Guid!("F715C957-54CE-4E55-9856-591D4CD082FD");
	double Height();
	void Height(double value);
	double Width();
	void Width(double value);
	double Resolution();
	void Resolution(double value);
	PsOpenDocumentMode Mode();
	void Mode(PsOpenDocumentMode value);
	bool AntiAlias();
	void AntiAlias(bool value);
	bool ConstrainProportions();
	void ConstrainProportions(bool value);
	iApplication Application();
	void ObjectValue(iEPSOpenOptions value);
}



interface iDICOMOpenOptions : IDispatch {
	const static IID clsID = Guid!("F7B857BE-E5D2-4C51-9628-CAEBD519B7A0");
	const static IID iID = Guid!("EE8364D9-B811-4C7D-A3A8-97C4EBFAB83A");
	bool Anonymize();
	void Anonymize(bool value);
	bool ShowOverlays();
	void ShowOverlays(bool value);
	int Rows();
	void Rows(int value);
	int Columns();
	void Columns(int value);
	int WindowWidth();
	void WindowWidth(int value);
	int WindowLevel();
	void WindowLevel(int value);
	bool Reverse();
	void Reverse(bool value);
	iApplication Application();
	void ObjectValue(iDICOMOpenOptions value);
}



interface iCameraRAWOpenOptions : IDispatch {
	const static IID clsID = Guid!("20AB82EB-D4D5-4E4E-9684-73C3C1E288F2");
	const static IID iID = Guid!("65D1B010-0D87-481C-B2E6-22EFB5A54129");
	PsColorSpaceType ColorSpace();
	void ColorSpace(PsColorSpaceType value);
	PsBitsPerChannelType BitsPerChannel();
	void BitsPerChannel(PsBitsPerChannelType value);
	PsCameraRAWSize Size();
	void Size(PsCameraRAWSize value);
	double Resolution();
	void Resolution(double value);
	PsCameraRAWSettingsType Settings();
	void Settings(PsCameraRAWSettingsType value);
	PsWhiteBalanceType WhiteBalance();
	void WhiteBalance(PsWhiteBalanceType value);
	int Temperature();
	void Temperature(int value);
	int Tint();
	void Tint(int value);
	double Exposure();
	void Exposure(double value);
	int Shadows();
	void Shadows(int value);
	int Brightness();
	void Brightness(int value);
	int Contrast();
	void Contrast(int value);
	int Saturation();
	void Saturation(int value);
	int Sharpness();
	void Sharpness(int value);
	int LuminanceSmoothing();
	void LuminanceSmoothing(int value);
	int ColorNoiseReduction();
	void ColorNoiseReduction(int value);
	int ChromaticAberrationRC();
	void ChromaticAberrationRC(int value);
	int ChromaticAberrationBY();
	void ChromaticAberrationBY(int value);
	int VignettingAmount();
	void VignettingAmount(int value);
	int VignettingMidpoint();
	void VignettingMidpoint(int value);
	int ShadowTint();
	void ShadowTint(int value);
	int RedHue();
	void RedHue(int value);
	int RedSaturation();
	void RedSaturation(int value);
	int GreenHue();
	void GreenHue(int value);
	int GreenSaturation();
	void GreenSaturation(int value);
	int BlueHue();
	void BlueHue(int value);
	int BlueSaturation();
	void BlueSaturation(int value);
	iApplication Application();
	void ObjectValue(iCameraRAWOpenOptions value);
}



interface iPhotoshopSaveOptions : IDispatch {
	const static IID clsID = Guid!("1B109B22-E7C9-4EE0-BFE2-D4DBD1655D87");
	const static IID iID = Guid!("436CE722-7369-4395-ACC2-2DE7A09269DF");
	bool AlphaChannels();
	void AlphaChannels(bool value);
	bool Layers();
	void Layers(bool value);
	bool Annotations();
	void Annotations(bool value);
	bool SpotColors();
	void SpotColors(bool value);
	bool EmbedColorProfile();
	void EmbedColorProfile(bool value);
	iApplication Application();
	void ObjectValue(iPhotoshopSaveOptions value);
}



interface iBMPSaveOptions : IDispatch {
	const static IID clsID = Guid!("0827A35B-4A97-476C-8433-8D5E2E17D9A3");
	const static IID iID = Guid!("4D40BE2D-FE11-4060-B52A-DE31C837D51D");
	bool AlphaChannels();
	void AlphaChannels(bool value);
	PsOperatingSystem OSType();
	void OSType(PsOperatingSystem value);
	PsBMPDepthType Depth();
	void Depth(PsBMPDepthType value);
	bool RLECompression();
	void RLECompression(bool value);
	bool FlipRowOrder();
	void FlipRowOrder(bool value);
	iApplication Application();
	void ObjectValue(iBMPSaveOptions value);
}



interface iGIFSaveOptions : IDispatch {
	const static IID clsID = Guid!("0FD095A2-1666-40D6-B6C8-474DF4F5A4FF");
	const static IID iID = Guid!("89417281-E1AF-4800-B82A-9F37ED0478EF");
	int Colors();
	void Colors(int value);
	PsDitherType Dither();
	void Dither(PsDitherType value);
	int DitherAmount();
	void DitherAmount(int value);
	PsForcedColors Forced();
	void Forced(PsForcedColors value);
	bool Interlaced();
	void Interlaced(bool value);
	PsMatteType Matte();
	void Matte(PsMatteType value);
	PsPaletteType Palette();
	void Palette(PsPaletteType value);
	bool PreserveExactColors();
	void PreserveExactColors(bool value);
	bool Transparency();
	void Transparency(bool value);
	iApplication Application();
	void ObjectValue(iGIFSaveOptions value);
}



interface iEPSSaveOptions : IDispatch {
	const static IID clsID = Guid!("CB1CC55C-7B97-44F8-80E7-DA895D80FD7E");
	const static IID iID = Guid!("D54491EF-6F09-4DE3-B49A-D57EDB2F40B8");
	bool EmbedColorProfile();
	void EmbedColorProfile(bool value);
	PsPreviewType Preview();
	void Preview(PsPreviewType value);
	PsSaveEncoding Encoding();
	void Encoding(PsSaveEncoding value);
	bool HalftoneScreen();
	void HalftoneScreen(bool value);
	bool TransferFunction();
	void TransferFunction(bool value);
	bool PSColorManagement();
	void PSColorManagement(bool value);
	bool VectorData();
	void VectorData(bool value);
	bool Interpolation();
	void Interpolation(bool value);
	bool TransparentWhites();
	void TransparentWhites(bool value);
	iApplication Application();
	void ObjectValue(iEPSSaveOptions value);
}



interface iJPEGSaveOptions : IDispatch {
	const static IID clsID = Guid!("45A55106-9BE8-48F1-B5DB-B45539120778");
	const static IID iID = Guid!("5148663B-F632-4AB0-9484-2DBC197CEA82");
	bool EmbedColorProfile();
	void EmbedColorProfile(bool value);
	PsFormatOptionsType FormatOptions();
	void FormatOptions(PsFormatOptionsType value);
	PsMatteType Matte();
	void Matte(PsMatteType value);
	int Scans();
	void Scans(int value);
	int Quality();
	void Quality(int value);
	iApplication Application();
	void ObjectValue(iJPEGSaveOptions value);
}



interface iPDFSaveOptions : IDispatch {
	const static IID clsID = Guid!("B167DDB7-5178-4396-B143-B3EFFC5E4CE8");
	const static IID iID = Guid!("F867E6C9-B5DB-4C5A-B3BA-63224D08A01B");
	bool AlphaChannels();
	void AlphaChannels(bool value);
	bool Layers();
	void Layers(bool value);
	bool Annotations();
	void Annotations(bool value);
	bool SpotColors();
	void SpotColors(bool value);
	bool EmbedColorProfile();
	void EmbedColorProfile(bool value);
	bool DowngradeColorProfile();
	void DowngradeColorProfile(bool value);
	bool Transparency();
	void Transparency(bool value);
	bool Interpolation();
	void Interpolation(bool value);
	bool VectorData();
	void VectorData(bool value);
	bool EmbedFonts();
	void EmbedFonts(bool value);
	bool UseOutlines();
	void UseOutlines(bool value);
	PsPDFEncodingType Encoding();
	void Encoding(PsPDFEncodingType value);
	int JPEGQuality();
	void JPEGQuality(int value);
	BSTR PresetFile();
	void PresetFile(BSTR value);
	PsPDFStandardType PDFStandard();
	void PDFStandard(PsPDFStandardType value);
	PsPDFCompatibilityType PDFCompatibility();
	void PDFCompatibility(PsPDFCompatibilityType value);
	BSTR Description();
	void Description(BSTR value);
	bool PreserveEditing();
	void PreserveEditing(bool value);
	bool EmbedThumbnail();
	void EmbedThumbnail(bool value);
	bool OptimizeForWeb();
	void OptimizeForWeb(bool value);
	bool View();
	void View(bool value);
	PsPDFResampleType DownSample();
	void DownSample(PsPDFResampleType value);
	double DownSampleSize();
	void DownSampleSize(double value);
	double DownSampleSizeLimit();
	void DownSampleSizeLimit(double value);
	int TileSize();
	void TileSize(int value);
	bool ConvertToEightBit();
	void ConvertToEightBit(bool value);
	bool ColorConversion();
	void ColorConversion(bool value);
	BSTR DestinationProfile();
	void DestinationProfile(BSTR value);
	bool ProfileInclusionPolicy();
	void ProfileInclusionPolicy(bool value);
	BSTR OutCondition();
	void OutCondition(BSTR value);
	BSTR OutConditionID();
	void OutConditionID(BSTR value);
	BSTR RegistryName();
	void RegistryName(BSTR value);
	iApplication Application();
	void ObjectValue(iPDFSaveOptions value);
}



interface iPICTFileSaveOptions : IDispatch {
	const static IID clsID = Guid!("2CF0AE18-1FC2-47EE-BC3E-7A6A35CE9D5F");
	const static IID iID = Guid!("D334A509-00F8-4092-A9AF-6E1176D06536");
	bool AlphaChannels();
	void AlphaChannels(bool value);
	bool EmbedColorProfile();
	void EmbedColorProfile(bool value);
	PsPICTBitsPerPixels Resolution();
	void Resolution(PsPICTBitsPerPixels value);
	PsPICTCompression Compression();
	void Compression(PsPICTCompression value);
	iApplication Application();
	void ObjectValue(iPICTFileSaveOptions value);
}



interface iPixarSaveOptions : IDispatch {
	const static IID clsID = Guid!("20D183DF-A29F-4FB7-95A8-EAABD836FBE3");
	const static IID iID = Guid!("94C016CD-178F-4FD7-85BB-F5925A34A122");
	bool AlphaChannels();
	void AlphaChannels(bool value);
	iApplication Application();
	void ObjectValue(iPixarSaveOptions value);
}



interface iPNGSaveOptions : IDispatch {
	const static IID clsID = Guid!("14895BEC-6D6D-4F61-B8F6-05E86E6B8E8A");
	const static IID iID = Guid!("478BF855-E42A-4D63-8C9D-F562DE5FF7A8");
	bool Interlaced();
	void Interlaced(bool value);
	int Compression();
	void Compression(int value);
	iApplication Application();
	void ObjectValue(iPNGSaveOptions value);
}



interface iRawSaveOptions : IDispatch {
	const static IID clsID = Guid!("9D240262-A428-4171-B6CE-1CEA27E79EF3");
	const static IID iID = Guid!("D74B820F-AA86-42DD-8D85-F4D67A62F200");
	bool AlphaChannels();
	void AlphaChannels(bool value);
	bool SpotColors();
	void SpotColors(bool value);
	iApplication Application();
	void ObjectValue(iRawSaveOptions value);
}



interface iSGIRGBSaveOptions : IDispatch {
	const static IID clsID = Guid!("1D1E8AF9-99BC-4EFE-85DD-04E4AC07075C");
	const static IID iID = Guid!("01CD87DE-1F53-485D-A096-0D318611AB6D");
	bool AlphaChannels();
	void AlphaChannels(bool value);
	bool SpotColors();
	void SpotColors(bool value);
	iApplication Application();
	void ObjectValue(iSGIRGBSaveOptions value);
}



interface iTargaSaveOptions : IDispatch {
	const static IID clsID = Guid!("FBA83E55-A62E-4C51-A396-83C8B2324672");
	const static IID iID = Guid!("F4E21694-AEBF-44FB-90AB-EECD58C1B6F3");
	PsTargaBitsPerPixels Resolution();
	void Resolution(PsTargaBitsPerPixels value);
	bool RLECompression();
	void RLECompression(bool value);
	bool AlphaChannels();
	void AlphaChannels(bool value);
	iApplication Application();
	void ObjectValue(iTargaSaveOptions value);
}



interface iTiffSaveOptions : IDispatch {
	const static IID clsID = Guid!("8F668A79-F6F4-4D11-B288-B867A3BE185E");
	const static IID iID = Guid!("372B4D75-EB10-4D0A-8203-5778D521253D");
	bool AlphaChannels();
	void AlphaChannels(bool value);
	bool Layers();
	void Layers(bool value);
	bool Annotations();
	void Annotations(bool value);
	bool SpotColors();
	void SpotColors(bool value);
	bool EmbedColorProfile();
	void EmbedColorProfile(bool value);
	PsTiffEncodingType ImageCompression();
	void ImageCompression(PsTiffEncodingType value);
	int JPEGQuality();
	void JPEGQuality(int value);
	PsByteOrderType ByteOrder();
	void ByteOrder(PsByteOrderType value);
	bool SaveImagePyramid();
	void SaveImagePyramid(bool value);
	bool Transparency();
	void Transparency(bool value);
	PsLayerCompressionType LayerCompression();
	void LayerCompression(PsLayerCompressionType value);
	bool InterleaveChannels();
	void InterleaveChannels(bool value);
	iApplication Application();
	void ObjectValue(iTiffSaveOptions value);
}



interface iDCS1_SaveOptions : IDispatch {
	const static IID clsID = Guid!("D5614BF3-1293-4016-A0D9-E6E9B72324D8");
	const static IID iID = Guid!("94C4A25A-2C91-4514-A783-3173AFC48430");
	bool EmbedColorProfile();
	void EmbedColorProfile(bool value);
	PsPreviewType Preview();
	void Preview(PsPreviewType value);
	PsDCSType DCS();
	void DCS(PsDCSType value);
	PsSaveEncoding Encoding();
	void Encoding(PsSaveEncoding value);
	bool HalftoneScreen();
	void HalftoneScreen(bool value);
	bool TransferFunction();
	void TransferFunction(bool value);
	bool VectorData();
	void VectorData(bool value);
	bool Interpolation();
	void Interpolation(bool value);
	iApplication Application();
	void ObjectValue(iDCS1_SaveOptions value);
}



interface iDCS2_SaveOptions : IDispatch {
	const static IID clsID = Guid!("602B793B-9D32-4090-8C0C-A2C52170CA24");
	const static IID iID = Guid!("F1AF982E-2BBD-406D-9FD6-CA6C898A7FFE");
	bool SpotColors();
	void SpotColors(bool value);
	bool EmbedColorProfile();
	void EmbedColorProfile(bool value);
	PsPreviewType Preview();
	void Preview(PsPreviewType value);
	PsDCSType DCS();
	void DCS(PsDCSType value);
	bool MultiFileDCS();
	void MultiFileDCS(bool value);
	PsSaveEncoding Encoding();
	void Encoding(PsSaveEncoding value);
	bool HalftoneScreen();
	void HalftoneScreen(bool value);
	bool TransferFunction();
	void TransferFunction(bool value);
	bool VectorData();
	void VectorData(bool value);
	bool Interpolation();
	void Interpolation(bool value);
	iApplication Application();
	void ObjectValue(iDCS2_SaveOptions value);
}



interface iExportOptionsIllustrator : IDispatch {
	const static IID clsID = Guid!("752B512C-5D8B-479D-9AAC-704E9807E873");
	const static IID iID = Guid!("FC08B435-5F19-49DF-ABE7-ADCE9F0729FF");
	PsIllustratorPathType Path();
	void Path(PsIllustratorPathType value);
	BSTR PathName();
	void PathName(BSTR value);
	iApplication Application();
	void ObjectValue(iExportOptionsIllustrator value);
}



interface iExportOptionsSaveForWeb : IDispatch {
	const static IID clsID = Guid!("C19EF106-2B05-41ED-A28D-EB9BBD7C936B");
	const static IID iID = Guid!("91A3D47B-9579-4013-9206-7B6859439DA2");
	PsSaveDocumentType Format();
	void Format(PsSaveDocumentType value);
	bool PNG8();
	void PNG8(bool value);
	int Lossy();
	void Lossy(int value);
	PsColorReductionType ColorReduction();
	void ColorReduction(PsColorReductionType value);
	int Colors();
	void Colors(int value);
	PsDitherType Dither();
	void Dither(PsDitherType value);
	int DitherAmount();
	void DitherAmount(int value);
	bool Transparency();
	void Transparency(bool value);
	PsDitherType TransparencyDither();
	void TransparencyDither(PsDitherType value);
	int TransparencyAmount();
	void TransparencyAmount(int value);
	bool Interlaced();
	void Interlaced(bool value);
	iRGBColor MatteColor();
	void MatteColor(iRGBColor value);
	int WebSnap();
	void WebSnap(int value);
	bool Optimized();
	void Optimized(bool value);
	int Quality();
	void Quality(int value);
	bool IncludeProfile();
	void IncludeProfile(bool value);
	double Blur();
	void Blur(double value);
	iApplication Application();
	void ObjectValue(iExportOptionsSaveForWeb value);
}



interface iBitmapConversionOptions : IDispatch {
	const static IID clsID = Guid!("F98C886F-0C6F-4E5E-8247-E9DE1A5A180A");
	const static IID iID = Guid!("643099A1-0B67-4920-9B14-E14BE8F63D5F");
	double Resolution();
	void Resolution(double value);
	PsBitmapConversionType Method();
	void Method(PsBitmapConversionType value);
	BSTR PatternName();
	void PatternName(BSTR value);
	double Frequency();
	void Frequency(double value);
	double Angle();
	void Angle(double value);
	PsBitmapHalfToneType Shape();
	void Shape(PsBitmapHalfToneType value);
	iApplication Application();
	void ObjectValue(iBitmapConversionOptions value);
}



interface iIndexedConversionOptions : IDispatch {
	const static IID clsID = Guid!("59012A3B-AE2E-4A15-ADFC-AA409E6DCB4A");
	const static IID iID = Guid!("22D0B851-E811-40E2-9A79-E84EA602C9F1");
	PsPaletteType Palette();
	void Palette(PsPaletteType value);
	int Colors();
	void Colors(int value);
	PsForcedColors Forced();
	void Forced(PsForcedColors value);
	bool Transparency();
	void Transparency(bool value);
	PsDitherType Dither();
	void Dither(PsDitherType value);
	int DitherAmount();
	void DitherAmount(int value);
	bool PreserveExactColors();
	void PreserveExactColors(bool value);
	PsMatteType Matte();
	void Matte(PsMatteType value);
	iApplication Application();
	void ObjectValue(iIndexedConversionOptions value);
}



interface iNoColor : IDispatch {
	const static IID clsID = Guid!("BFA6D1ED-DD3E-4D05-980F-A166B023C287");
	const static IID iID = Guid!("750824C6-C347-4CDB-AA96-8ABA1EBDF9EA");
	iApplication Application();
	void ObjectValue(iNoColor value);
}



interface iPresentationOptions : IDispatch {
	const static IID clsID = Guid!("4E21A450-6978-4099-B7B3-4CBAA7974AA9");
	const static IID iID = Guid!("376C4F3B-0345-440B-90D9-FE78AECA249C");
	bool Presentation();
	void Presentation(bool value);
	bool AutoAdvance();
	void AutoAdvance(bool value);
	int Interval();
	void Interval(int value);
	bool Loop();
	void Loop(bool value);
	PsTransitionType Transition();
	void Transition(PsTransitionType value);
	PsMagnificationType Magnification();
	void Magnification(PsMagnificationType value);
	bool IncludeFilename();
	void IncludeFilename(bool value);
	iPDFSaveOptions PDFFileOptions();
	void PDFFileOptions(iPDFSaveOptions value);
	iApplication Application();
	void ObjectValue(iPresentationOptions value);
}



interface iGalleryOptions : IDispatch {
	const static IID clsID = Guid!("DB3D9F60-B820-40F2-B2C5-DD4DAA3FF517");
	const static IID iID = Guid!("C2783141-B50D-4F0C-9E2E-BF76EA8A4E60");
	BSTR LayoutStyle();
	void LayoutStyle(BSTR value);
	BSTR EmailAddress();
	void EmailAddress(BSTR value);
	bool UseShortExtension();
	void UseShortExtension(bool value);
	bool UseUTF8Encoding();
	void UseUTF8Encoding(bool value);
	bool IncludeSubFolders();
	void IncludeSubFolders(bool value);
	bool AddSizeAttributes();
	void AddSizeAttributes(bool value);
	bool PreserveAllMetadata();
	void PreserveAllMetadata(bool value);
	iGalleryBannerOptions BannerOptions();
	void BannerOptions(iGalleryBannerOptions value);
	iGalleryImagesOptions ImagesOptions();
	void ImagesOptions(iGalleryImagesOptions value);
	iGalleryThumbnailOptions ThumbnailOptions();
	void ThumbnailOptions(iGalleryThumbnailOptions value);
	iGalleryCustomColorOptions CustomColorOptions();
	void CustomColorOptions(iGalleryCustomColorOptions value);
	iGallerySecurityOptions SecurityOptions();
	void SecurityOptions(iGallerySecurityOptions value);
	iApplication Application();
	void ObjectValue(iGalleryOptions value);
}



interface iGalleryBannerOptions : IDispatch {
	const static IID clsID = Guid!("EE9FC492-5DFC-47BF-9E3C-3603BC5F1846");
	const static IID iID = Guid!("5F168D2A-F9EA-4866-8C55-4875E0940622");
	BSTR SiteName();
	void SiteName(BSTR value);
	BSTR Photographer();
	void Photographer(BSTR value);
	BSTR ContactInfo();
	void ContactInfo(BSTR value);
	BSTR Date();
	void Date(BSTR value);
	PsGalleryFontType Font();
	void Font(PsGalleryFontType value);
	int FontSize();
	void FontSize(int value);
	iApplication Application();
	void ObjectValue(iGalleryBannerOptions value);
}



interface iGalleryImagesOptions : IDispatch {
	const static IID clsID = Guid!("AAE7B16D-2E70-49D9-9E56-EFA98798D437");
	const static IID iID = Guid!("46AB9A1D-1B32-4C59-8142-B223ECCF1F74");
	bool NumericLinks();
	void NumericLinks(bool value);
	bool ResizeImages();
	void ResizeImages(bool value);
	int Dimension();
	void Dimension(int value);
	PsGalleryConstrainType ResizeConstraint();
	void ResizeConstraint(PsGalleryConstrainType value);
	int ImageQuality();
	void ImageQuality(int value);
	int Border();
	void Border(int value);
	bool IncludeFilename();
	void IncludeFilename(bool value);
	bool Caption();
	void Caption(bool value);
	bool IncludeCredits();
	void IncludeCredits(bool value);
	bool IncludeTitle();
	void IncludeTitle(bool value);
	bool IncludeCopyright();
	void IncludeCopyright(bool value);
	PsGalleryFontType Font();
	void Font(PsGalleryFontType value);
	int FontSize();
	void FontSize(int value);
	iApplication Application();
	void ObjectValue(iGalleryImagesOptions value);
}



interface iGalleryThumbnailOptions : IDispatch {
	const static IID clsID = Guid!("7C063509-CE0B-4D76-ACF8-B6EF5A87CE96");
	const static IID iID = Guid!("46DFAF34-75E0-470E-8217-B0C763137DD0");
	bool IncludeFilename();
	void IncludeFilename(bool value);
	bool Caption();
	void Caption(bool value);
	bool IncludeCredits();
	void IncludeCredits(bool value);
	bool IncludeTitle();
	void IncludeTitle(bool value);
	bool IncludeCopyright();
	void IncludeCopyright(bool value);
	PsGalleryFontType Font();
	void Font(PsGalleryFontType value);
	int FontSize();
	void FontSize(int value);
	PsGalleryThumbSizeType Size();
	void Size(PsGalleryThumbSizeType value);
	int Dimension();
	void Dimension(int value);
	int ColumnCount();
	void ColumnCount(int value);
	int RowCount();
	void RowCount(int value);
	int Border();
	void Border(int value);
	iApplication Application();
	void ObjectValue(iGalleryThumbnailOptions value);
}



interface iGalleryCustomColorOptions : IDispatch {
	const static IID clsID = Guid!("AC2BD13C-5037-4E21-B991-A1974AD52C55");
	const static IID iID = Guid!("2EB2592D-F02D-4117-A22C-26E5CDFAEEE2");
	iRGBColor BackgroundColor();
	void BackgroundColor(iRGBColor value);
	iRGBColor BannerColor();
	void BannerColor(iRGBColor value);
	iRGBColor TextColor();
	void TextColor(iRGBColor value);
	iRGBColor ActiveLinkColor();
	void ActiveLinkColor(iRGBColor value);
	iRGBColor LinkColor();
	void LinkColor(iRGBColor value);
	iRGBColor VisitedLinkColor();
	void VisitedLinkColor(iRGBColor value);
	iApplication Application();
	void ObjectValue(iGalleryCustomColorOptions value);
}



interface iGallerySecurityOptions : IDispatch {
	const static IID clsID = Guid!("5D9AEAB6-FF02-498F-AAC1-C49E87F846ED");
	const static IID iID = Guid!("95D69B63-B319-44D3-8307-C988E96E7E58");
	PsGallerySecurityType Content();
	void Content(PsGallerySecurityType value);
	BSTR Text();
	void Text(BSTR value);
	PsGalleryFontType Font();
	void Font(PsGalleryFontType value);
	int FontSize();
	void FontSize(int value);
	iRGBColor TextColor();
	void TextColor(iRGBColor value);
	int Opacity();
	void Opacity(int value);
	PsGallerySecurityTextPositionType TextPosition();
	void TextPosition(PsGallerySecurityTextPositionType value);
	PsGallerySecurityTextRotateType TextRotate();
	void TextRotate(PsGallerySecurityTextRotateType value);
	iApplication Application();
	void ObjectValue(iGallerySecurityOptions value);
}



interface iContactSheetOptions : IDispatch {
	const static IID clsID = Guid!("2BCD394B-5F18-47B6-8453-146EE8CAA2BE");
	const static IID iID = Guid!("064BBE94-396D-4B25-9071-AC5B14D0487F");
	int Width();
	void Width(int value);
	int Height();
	void Height(int value);
	double Resolution();
	void Resolution(double value);
	PsNewDocumentMode Mode();
	void Mode(PsNewDocumentMode value);
	bool Flatten();
	void Flatten(bool value);
	bool AcrossFirst();
	void AcrossFirst(bool value);
	bool UseAutoSpacing();
	void UseAutoSpacing(bool value);
	int ColumnCount();
	void ColumnCount(int value);
	int RowCount();
	void RowCount(int value);
	int Vertical();
	void Vertical(int value);
	int Horizontal();
	void Horizontal(int value);
	bool BestFit();
	void BestFit(bool value);
	bool Caption();
	void Caption(bool value);
	PsGalleryFontType Font();
	void Font(PsGalleryFontType value);
	int FontSize();
	void FontSize(int value);
	iApplication Application();
	void ObjectValue(iContactSheetOptions value);
}



interface iPicturePackageOptions : IDispatch {
	const static IID clsID = Guid!("9B36D6EB-8480-44E4-B357-A869C9EDA8E2");
	const static IID iID = Guid!("ABD0F9CE-822B-4BB1-A811-3EC852B43C0F");
	BSTR Layout();
	void Layout(BSTR value);
	double Resolution();
	void Resolution(double value);
	PsNewDocumentMode Mode();
	void Mode(PsNewDocumentMode value);
	bool Flatten();
	void Flatten(bool value);
	PsPicturePackaextType Content();
	void Content(PsPicturePackaextType value);
	BSTR Text();
	void Text(BSTR value);
	PsGalleryFontType Font();
	void Font(PsGalleryFontType value);
	int FontSize();
	void FontSize(int value);
	int Opacity();
	void Opacity(int value);
	iRGBColor TextColor();
	void TextColor(iRGBColor value);
	PsGallerySecurityTextPositionType TextPosition();
	void TextPosition(PsGallerySecurityTextPositionType value);
	PsGallerySecurityTextRotateType TextRotate();
	void TextRotate(PsGallerySecurityTextRotateType value);
	iApplication Application();
	void ObjectValue(iPicturePackageOptions value);
}



interface iBatchOptions : IDispatch {
	const static IID clsID = Guid!("616CF8F4-30CE-4617-97F8-EE235387CD09");
	const static IID iID = Guid!("B0D18870-EAC3-4D35-8612-6F734B3FA656");
	bool OverrideOpen();
	void OverrideOpen(bool value);
	bool SuppressOpen();
	void SuppressOpen(bool value);
	bool SuppressProfile();
	void SuppressProfile(bool value);
	PsBatchDestinationType Destination();
	void Destination(PsBatchDestinationType value);
	BSTR DestinationFolder();
	void DestinationFolder(BSTR value);
	bool OverrideSave();
	void OverrideSave(bool value);
	VARIANT FileNaming();
	void FileNaming(VARIANT value);
	int StartingSerial();
	void StartingSerial(int value);
	bool WindowsCompatible();
	void WindowsCompatible(bool value);
	bool MacintoshCompatible();
	void MacintoshCompatible(bool value);
	bool UnixCompatible();
	void UnixCompatible(bool value);
	BSTR ErrorFile();
	void ErrorFile(BSTR value);
	iApplication Application();
	void ObjectValue(iBatchOptions value);
}



interface iSubPathInfo : IDispatch {
	const static IID clsID = Guid!("06DA1EE6-E601-47AE-9237-3E4CAEC689B9");
	const static IID iID = Guid!("7E8F9046-9F8E-4594-A22C-9F6B4C227CD7");
	PsShapeOperation Operation();
	void Operation(PsShapeOperation value);
	bool Closed();
	void Closed(bool value);
	VARIANT EntireSubPath();
	void EntireSubPath(VARIANT value);
	iApplication Application();
	void ObjectValue(iSubPathInfo value);
}



interface iPathPointInfo : IDispatch {
	const static IID clsID = Guid!("32D3A642-898B-47C3-A4A8-6977435ECA6C");
	const static IID iID = Guid!("B3C35001-B625-48D7-9D3B-C9D66D9CF5F1");
	VARIANT Anchor();
	void Anchor(VARIANT value);
	VARIANT LeftDirection();
	void LeftDirection(VARIANT value);
	VARIANT RightDirection();
	void RightDirection(VARIANT value);
	PsPointKind Kind();
	void Kind(PsPointKind value);
	iApplication Application();
	void ObjectValue(iPathPointInfo value);
}




