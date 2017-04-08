
import std.stdio, std.meta, std.traits, std.range, std.conv, std.string, std.typetuple, std.typecons, std.conv, std.string, std.algorithm, mCOM2D;

// The COM Interfaces to instantiate dynamically. Assumed each one starts with i, which is excluded in the names.
//ALL
//enum Interfaces = ["Application", "Document", "ArtLayer", "TextItem", "SolidColor", "RGBColor", "GrayColor", "CMYKColor", "LabColor", "HSBColor", "LayerSet", "Layers", "LayerSets", "ArtLayers", "HistoryState", "DocumentInfo", "Selection", "Channel", "XMPMetadata", "MeasurementScale", "Channels", "HistoryStates", "LayerComps", "LayerComp", "PathItems", "PathItem", "SubPathItems", "SubPathItem", "PathPoints", "PathPoint", "CountItems", "CountItem", "ColorSamplers", "ColorSampler", "Preferences", "Documents", "TextFonts", "TextFont", "Notifiers", "Notifier", "MeasurementLog", "ActionDescriptor", "ActionList", "ActionReference", "PhotoCDOpenOptions", "RawFormatOpenOptions", "PDFOpenOptions", "EPSOpenOptions", "DICOMOpenOptions", "CameraRAWOpenOptions", "PhotoshopSaveOptions", "BMPSaveOptions", "GIFSaveOptions", "EPSSaveOptions", "JPEGSaveOptions", "PDFSaveOptions", "PICTFileSaveOptions", "PixarSaveOptions", "PNGSaveOptions", "RawSaveOptions", "SGIRGBSaveOptions", "TargaSaveOptions", "TiffSaveOptions", "DCS1_SaveOptions", "DCS2_SaveOptions", "ExportOptionsIllustrator", "ExportOptionsSaveForWeb", "BitmapConversionOptions", "IndexedConversionOptions", "NoColor", "PresentationOptions", "GalleryOptions", "GalleryBannerOptions", "GalleryImagesOptions", "GalleryThumbnailOptions", "GalleryCustomColorOptions", "GallerySecurityOptions", "ContactSheetOptions", "PicturePackageOptions", "BatchOptions", "SubPathInfo", "PathPointInfo"];

// Removed Unnecessary
//enum Interfaces = ["Application", "Document", "ArtLayer", "TextItem", "SolidColor", "RGBColor", "GrayColor", "LayerSet", "Layers", "LayerSets", "ArtLayers", "HistoryState", "DocumentInfo", "Selection", "Channel", "MeasurementScale", "Channels", "HistoryStates", "LayerComps", "LayerComp", "PathItems", "PathItem", "SubPathItems", "SubPathItem", "PathPoints", "PathPoint", "CountItems", "CountItem", "ColorSamplers", "ColorSampler", "Preferences", "Documents", "TextFonts", "TextFont", "Notifiers", "Notifier", "MeasurementLog", "ActionDescriptor", "ActionList", "ActionReference", "PDFOpenOptions", "PhotoshopSaveOptions", "BMPSaveOptions", "GIFSaveOptions", "EPSSaveOptions", "JPEGSaveOptions", "PDFSaveOptions", "PNGSaveOptions", "ExportOptionsSaveForWeb", "BitmapConversionOptions", "IndexedConversionOptions", "NoColor", "BatchOptions", "SubPathInfo", "PathPointInfo"];
enum Interfaces = ["Application", "Document", "Documents", "ArtLayer", "TextItem", "SolidColor", "RGBColor", "GrayColor", "LayerSet", "Layers", "LayerSets", "ArtLayers", "HistoryState", "DocumentInfo", "Selection", "Channel", "Channels", "HistoryStates", "LayerComps", "LayerComp", "CountItems", "CountItem", "Preferences", "TextFonts", "TextFont", "ActionDescriptor", "ActionList", "ActionReference", "PhotoshopSaveOptions", "PNGSaveOptions", "ExportOptionsSaveForWeb", "NoColor", "BatchOptions"];

// Speed Testing
//enum Interfaces = ["Application", "SolidColor", "RGBColor", "Document", "Documents"];
//enum Interfaces = ["Application"];



//version = go;
//version = _gen;

version(_gen)
	import Gen;
else
{
	enum comgen = GenerateDCOMClasses!("mPhotoshopCOM", AliasSeq!(Interfaces))();
	pragma(msg, comgen);
	mixin(comgen);
}

static this()
{
	import std.file, std.conv;
	version(_gen)
	{

	}
	else
	{
		if (exists("Gen.d")) remove("Gen.d"); write("Gen.d", to!string(comgen));
	}
}


void main(string[] argv)
{	

	import mPhotoshopCOM;




	version(go)
	{
		auto x = new cApplication();				   
		auto x1 = x.Path();
		auto x2 = x.Name();	
		auto x3 = x.SystemInformation();
		auto x4 = x.Version();
		//auto e = x.RecentFiles();
		//auto g = x.DisplayDialogs();
		auto x5 = x.Documents();
		auto x6 = x5.Count();	// Will crash if x.Documents() returns iDocuments instead of cDocuments(i.e., D wrapper not genreated/added to interfaces list)

	
		auto dd = x.ForegroundColor();
		auto dd1 = x.getForegroundColor();
		auto rgb1 = dd.RGB();
		auto rgb2 = dd.getRGB();
		auto rgb3 = dd.RGB();
		auto red = dd.getRGB().getRed();
		auto green = dd.RGB().Green();
		auto blue = dd.getRGB().Blue();

		auto rgb4 = dd.RGB();
		auto rgb5 = dd.RGB.Blue();
		auto rgb6 = dd.RGB.Blue();
		auto rgb7 = dd.RGB.Blue();
		auto rgb8 = dd.RGB.Blue();

		dd.RGB().Green(30.0);
	}

	return;
}
