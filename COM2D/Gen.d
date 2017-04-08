public class cApplication
{
	import mPhotoshopCOM, std.conv, mCOM2D, core.sys.windows.windows, core.sys.windows.com, core.sys.windows.wtypes, core.sys.windows.basetyps, core.sys.windows.unknwn, core.sys.windows.oaidl;
	public IDispatch iDispatch = null;
	public IDispatch iDispatchParent = null;
	public IDispatch iDispatchQuery = null;
	public GUID iID = IID.init;
	public GUID clsID = IID.init;
	public static bool Cache = true;
	public static bool FastCache = true;
	public static object.Object[string] CachedInterfaces;

	public wchar* delegate() ColorSettings;
	public wchar* delegate() WinColorSettings;
	public cDocument delegate() getActiveDocument;
	cDocument ActiveDocument() { return getActiveDocument(); } 
	public void delegate(cDocument value) setActiveDocument;
	auto ActiveDocument(cDocument value) { setActiveDocument(value); }
	public wchar* delegate() Name;
	public wchar* delegate() Path;
	public iPreferences delegate() Preferences;
	public wchar* delegate() ScriptingVersion;
	public double delegate() FreeMemory;
	public wchar* delegate() Version;
	public bool delegate() getVisible;
	bool Visible() { return getVisible(); } 
	public void delegate(bool value) setVisible;
	auto Visible(bool value) { setVisible(value); }
	public PsDialogModes delegate() getDisplayDialogs;
	PsDialogModes DisplayDialogs() { return getDisplayDialogs(); } 
	public void delegate(PsDialogModes value) setDisplayDialogs;
	auto DisplayDialogs(PsDialogModes value) { setDisplayDialogs(value); }
	public cSolidColor delegate() getForegroundColor;
	cSolidColor ForegroundColor() { return getForegroundColor(); } 
	public void delegate(cSolidColor value) setForegroundColor;
	auto ForegroundColor(cSolidColor value) { setForegroundColor(value); }
	public cSolidColor delegate() getBackgroundColor;
	cSolidColor BackgroundColor() { return getBackgroundColor(); } 
	public void delegate(cSolidColor value) setBackgroundColor;
	auto BackgroundColor(cSolidColor value) { setBackgroundColor(value); }
	public bool delegate() getNotifiersEnabled;
	bool NotifiersEnabled() { return getNotifiersEnabled(); } 
	public void delegate(bool value) setNotifiersEnabled;
	auto NotifiersEnabled(bool value) { setNotifiersEnabled(value); }
	public SafeVariantPtr delegate() WindowsFileTypes;
	public SafeVariantPtr delegate() MacintoshFileTypes;
	public wchar* delegate() PreferencesFolder;
	public wchar* delegate() Locale;
	public iDocuments delegate() Documents;
	public iTextFonts delegate() Fonts;
	public iNotifiers delegate() Notifiers;
	public wchar* delegate() ScriptingBuildDate;
	public SafeVariantPtr delegate() RecentFiles;
	public wchar* delegate() Build;
	public wchar* delegate() SystemInformation;
	public iMeasurementLog delegate() MeasurementLog;
	public wchar* delegate() getCurrentTool;
	wchar* CurrentTool() { return getCurrentTool(); } 
	public void delegate(wchar* value) setCurrentTool;
	auto CurrentTool(wchar* value) { setCurrentTool(value); }
	public cApplication delegate() Application;
	public void delegate(wchar* Action, wchar* From) DoAction;
	public void delegate(wchar* Document) Load;
	public cDocument delegate(wchar* Document, VARIANT As, VARIANT AsSmartObject) Open;
	public void delegate(PsPurar Tar) Purge;
	public wchar* delegate(wchar* JavaScriptCode, VARIANT Arguments, VARIANT ExecutionMode) DoJavaScript;
	public wchar* delegate(wchar* JavaScriptFile, VARIANT Arguments, VARIANT ExecutionMode) DoJavaScriptFile;
	public wchar* delegate(VARIANT InFolder, wchar* OutFolder, VARIANT Options) MakePhotoGallery;
	public wchar* delegate(VARIANT InFiles, wchar* OutFile, VARIANT Options) MakePDFPresentation;
	public wchar* delegate(VARIANT InFiles) MakePhotomerge;
	public wchar* delegate(VARIANT InFiles, VARIANT Options) MakeContactSheet;
	public wchar* delegate(VARIANT InFiles, VARIANT Options) MakePicturePackage;
	public wchar* delegate(VARIANT InFiles, wchar* Action, wchar* From, VARIANT Options) Batch;
	public void delegate() Quit;
	public void delegate() Refresh;
	public bool delegate(wchar* Name) FeatureEnabled;
	public SafeVariantPtr delegate() OpenDialog;
	public iActionDescriptor delegate(int EventID, VARIANT Descriptor, VARIANT DisplayDialogs) setExecuteAction;
	iActionDescriptor ExecuteAction(int EventID, VARIANT Descriptor, VARIANT DisplayDialogs) { return setExecuteAction(EventID, Descriptor, DisplayDialogs); }
	public iActionDescriptor delegate(iActionReference Reference) setExecuteAction__2;
	iActionDescriptor ExecuteAction(iActionReference Reference) { return setExecuteAction__2(Reference); }
	public int delegate(wchar* StringID) StringIDToTypeID;
	public wchar* delegate(int TypeID) TypeIDToStringID;
	public int delegate(wchar* CharID) CharIDToTypeID;
	public wchar* delegate(int TypeID) TypeIDToCharID;
	public void delegate(VARIANT Name, VARIANT File) ChangeColorSettings;

	// iApplication
	public this(bool _query = false, IDispatch _Query = null, IDispatch _Parent = null)
	{

		iDispatchQuery = _Query;
		iDispatchParent = _Parent;
		auto COMInterface = GetDynamicCOMInterface!(mPhotoshopCOM.iApplication, void, cApplication)(this, null, _query);

		// extern (Windows) wchar*()
		ColorSettings = cast(typeof(this.ColorSettings)) () 
		{
		 
			EXCEPINFO exception;
			uint argErr = 0;
			auto iidNULL = IID_NULL;
			auto RT = new SafeVariantPtr();
			DISPPARAMS params = {rgvarg: null, cArgs: 0, cNamedArgs: 0};
			auto ID = COMInterface[`ColorSettings`].ID;
			auto res = cApplication.iDispatch.Invoke(cast(int)ID, &iidNULL, 0, DISPATCH_PROPERTYGET, &params, cast(VARIANT*)RT, &exception, &argErr);
			assert(res == S_OK, `Could not invoke COM Function cApplication.ColorSettings. Error `~to!string(res, 16));
			return cast(wchar*)(RT.bstrVal);
		
		};
		

		// extern (Windows) wchar*()
		WinColorSettings = cast(typeof(this.WinColorSettings)) () 
		{
		 
			EXCEPINFO exception;
			uint argErr = 0;
			auto iidNULL = IID_NULL;
			auto RT = new SafeVariantPtr();
			DISPPARAMS params = {rgvarg: null, cArgs: 0, cNamedArgs: 0};
			auto ID = COMInterface[`WinColorSettings`].ID;
			auto res = cApplication.iDispatch.Invoke(cast(int)ID, &iidNULL, 0, DISPATCH_PROPERTYGET, &params, cast(VARIANT*)RT, &exception, &argErr);
			assert(res == S_OK, `Could not invoke COM Function cApplication.WinColorSettings. Error `~to!string(res, 16));
			return cast(wchar*)(RT.bstrVal);
		
		};
		

		// extern (Windows) iDocument()
		getActiveDocument = cast(typeof(this.getActiveDocument)) () 
		{
		 	auto key = `Application.Document`;
			if (auto v = key in cApplication.CachedInterfaces)
			{
				return cast(cDocument)*v;
			}
		
			EXCEPINFO exception;
			uint argErr = 0;
			auto iidNULL = IID_NULL;
			auto RT = new SafeVariantPtr();
			DISPPARAMS params = {rgvarg: null, cArgs: 0, cNamedArgs: 0};
			auto ID = COMInterface[`ActiveDocument`].ID;
			auto res = cApplication.iDispatch.Invoke(cast(int)ID, &iidNULL, 0, DISPATCH_PROPERTYGET, &params, cast(VARIANT*)RT, &exception, &argErr);
			assert(res == S_OK, `Could not invoke COM Function cApplication.getActiveDocument. Error `~to!string(res, 16));
			if (cApplication.Cache)
			{
				if (auto v = key in cApplication.CachedInterfaces)
				{
					(cast(cDocument)v).iDispatch = cast(IDispatch)RT.punkVal;
					return cast(cDocument)*v;
				}
			}
			auto _class = new cDocument(true, cast(IDispatch)(RT.punkVal), this.iDispatch);
			cApplication.CachedInterfaces[key] = _class;
			return _class;
		
		};
		

		// extern (Windows) void(iDocument value)
		setActiveDocument = cast(typeof(this.setActiveDocument)) (iDocument value) 
		{
		 
			EXCEPINFO exception;
			uint argErr = 0;
			auto iidNULL = IID_NULL;
			auto RT = new SafeVariantPtr();
			VARIANT[1] paramVars;
			DISPPARAMS params = {rgvarg: paramVars.ptr, cArgs: 1, cNamedArgs: 0};
			auto ID = COMInterface[`ActiveDocument`].ID;
			paramVars[0].vt = 13;
			paramVars[0].punkVal = value;
			scope(exit) VariantClear(&paramVars[0]);
			auto res = cApplication.iDispatch.Invoke(cast(int)ID, &iidNULL, 0, DISPATCH_PROPERTYPUT, &params, cast(VARIANT*)RT, &exception, &argErr);
			assert(res == S_OK, `Could not invoke COM Function cApplication.setActiveDocument. Error `~to!string(res, 16));
		
		};
		

		// extern (Windows) wchar*()
		Name = cast(typeof(this.Name)) () 
		{
		 
			EXCEPINFO exception;
			uint argErr = 0;
			auto iidNULL = IID_NULL;
			auto RT = new SafeVariantPtr();
			DISPPARAMS params = {rgvarg: null, cArgs: 0, cNamedArgs: 0};
			auto ID = COMInterface[`Name`].ID;
			auto res = cApplication.iDispatch.Invoke(cast(int)ID, &iidNULL, 0, DISPATCH_PROPERTYGET, &params, cast(VARIANT*)RT, &exception, &argErr);
			assert(res == S_OK, `Could not invoke COM Function cApplication.Name. Error `~to!string(res, 16));
			return cast(wchar*)(RT.bstrVal);
		
		};
		

		// extern (Windows) wchar*()
		Path = cast(typeof(this.Path)) () 
		{
		 
			EXCEPINFO exception;
			uint argErr = 0;
			auto iidNULL = IID_NULL;
			auto RT = new SafeVariantPtr();
			DISPPARAMS params = {rgvarg: null, cArgs: 0, cNamedArgs: 0};
			auto ID = COMInterface[`Path`].ID;
			auto res = cApplication.iDispatch.Invoke(cast(int)ID, &iidNULL, 0, DISPATCH_PROPERTYGET, &params, cast(VARIANT*)RT, &exception, &argErr);
			assert(res == S_OK, `Could not invoke COM Function cApplication.Path. Error `~to!string(res, 16));
			return cast(wchar*)(RT.bstrVal);
		
		};
		

		// extern (Windows) iPreferences()
		Preferences = cast(typeof(this.Preferences)) () 
		{
		 	auto key = `Application.Preferences`;
		
			EXCEPINFO exception;
			uint argErr = 0;
			auto iidNULL = IID_NULL;
			auto RT = new SafeVariantPtr();
			DISPPARAMS params = {rgvarg: null, cArgs: 0, cNamedArgs: 0};
			auto ID = COMInterface[`Preferences`].ID;
			auto res = cApplication.iDispatch.Invoke(cast(int)ID, &iidNULL, 0, DISPATCH_PROPERTYGET, &params, cast(VARIANT*)RT, &exception, &argErr);
			assert(res == S_OK, `Could not invoke COM Function cApplication.Preferences. Error `~to!string(res, 16));
			return cast(iPreferences)(RT.punkVal);
		
		};
		

		// extern (Windows) wchar*()
		ScriptingVersion = cast(typeof(this.ScriptingVersion)) () 
		{
		 
			EXCEPINFO exception;
			uint argErr = 0;
			auto iidNULL = IID_NULL;
			auto RT = new SafeVariantPtr();
			DISPPARAMS params = {rgvarg: null, cArgs: 0, cNamedArgs: 0};
			auto ID = COMInterface[`ScriptingVersion`].ID;
			auto res = cApplication.iDispatch.Invoke(cast(int)ID, &iidNULL, 0, DISPATCH_PROPERTYGET, &params, cast(VARIANT*)RT, &exception, &argErr);
			assert(res == S_OK, `Could not invoke COM Function cApplication.ScriptingVersion. Error `~to!string(res, 16));
			return cast(wchar*)(RT.bstrVal);
		
		};
		

		// extern (Windows) double()
		FreeMemory = cast(typeof(this.FreeMemory)) () 
		{
		 
			EXCEPINFO exception;
			uint argErr = 0;
			auto iidNULL = IID_NULL;
			auto RT = new SafeVariantPtr();
			DISPPARAMS params = {rgvarg: null, cArgs: 0, cNamedArgs: 0};
			auto ID = COMInterface[`FreeMemory`].ID;
			auto res = cApplication.iDispatch.Invoke(cast(int)ID, &iidNULL, 0, DISPATCH_PROPERTYGET, &params, cast(VARIANT*)RT, &exception, &argErr);
			assert(res == S_OK, `Could not invoke COM Function cApplication.FreeMemory. Error `~to!string(res, 16));
			return cast(double)(RT.dblVal);
		
		};
		

		// extern (Windows) wchar*()
		Version = cast(typeof(this.Version)) () 
		{
		 
			EXCEPINFO exception;
			uint argErr = 0;
			auto iidNULL = IID_NULL;
			auto RT = new SafeVariantPtr();
			DISPPARAMS params = {rgvarg: null, cArgs: 0, cNamedArgs: 0};
			auto ID = COMInterface[`Version`].ID;
			auto res = cApplication.iDispatch.Invoke(cast(int)ID, &iidNULL, 0, DISPATCH_PROPERTYGET, &params, cast(VARIANT*)RT, &exception, &argErr);
			assert(res == S_OK, `Could not invoke COM Function cApplication.Version. Error `~to!string(res, 16));
			return cast(wchar*)(RT.bstrVal);
		
		};
		

		// extern (Windows) bool()
		getVisible = cast(typeof(this.getVisible)) () 
		{
		 
			EXCEPINFO exception;
			uint argErr = 0;
			auto iidNULL = IID_NULL;
			auto RT = new SafeVariantPtr();
			DISPPARAMS params = {rgvarg: null, cArgs: 0, cNamedArgs: 0};
			auto ID = COMInterface[`Visible`].ID;
			auto res = cApplication.iDispatch.Invoke(cast(int)ID, &iidNULL, 0, DISPATCH_PROPERTYGET, &params, cast(VARIANT*)RT, &exception, &argErr);
			assert(res == S_OK, `Could not invoke COM Function cApplication.getVisible. Error `~to!string(res, 16));
			return cast(bool)(RT.intVal);
		
		};
		

		// extern (Windows) void(bool value)
		setVisible = cast(typeof(this.setVisible)) (bool value) 
		{
		 
			EXCEPINFO exception;
			uint argErr = 0;
			auto iidNULL = IID_NULL;
			auto RT = new SafeVariantPtr();
			VARIANT[1] paramVars;
			DISPPARAMS params = {rgvarg: paramVars.ptr, cArgs: 1, cNamedArgs: 0};
			auto ID = COMInterface[`Visible`].ID;
			paramVars[0].vt = 11;
			paramVars[0].intVal = value;
			scope(exit) VariantClear(&paramVars[0]);
			auto res = cApplication.iDispatch.Invoke(cast(int)ID, &iidNULL, 0, DISPATCH_PROPERTYPUT, &params, cast(VARIANT*)RT, &exception, &argErr);
			assert(res == S_OK, `Could not invoke COM Function cApplication.setVisible. Error `~to!string(res, 16));
		
		};
		

		// extern (Windows) PsDialogModes()
		getDisplayDialogs = cast(typeof(this.getDisplayDialogs)) () 
		{
		 
			EXCEPINFO exception;
			uint argErr = 0;
			auto iidNULL = IID_NULL;
			auto RT = new SafeVariantPtr();
			DISPPARAMS params = {rgvarg: null, cArgs: 0, cNamedArgs: 0};
			auto ID = COMInterface[`DisplayDialogs`].ID;
			auto res = cApplication.iDispatch.Invoke(cast(int)ID, &iidNULL, 0, DISPATCH_PROPERTYGET, &params, cast(VARIANT*)RT, &exception, &argErr);
			assert(res == S_OK, `Could not invoke COM Function cApplication.getDisplayDialogs. Error `~to!string(res, 16));
			return cast(PsDialogModes)(RT.lVal);
		
		};
		

		// extern (Windows) void(PsDialogModes value)
		setDisplayDialogs = cast(typeof(this.setDisplayDialogs)) (PsDialogModes value) 
		{
		 
			EXCEPINFO exception;
			uint argErr = 0;
			auto iidNULL = IID_NULL;
			auto RT = new SafeVariantPtr();
			VARIANT[1] paramVars;
			DISPPARAMS params = {rgvarg: paramVars.ptr, cArgs: 1, cNamedArgs: 0};
			auto ID = COMInterface[`DisplayDialogs`].ID;
			paramVars[0].vt = 22;
			paramVars[0].intVal = value;
			scope(exit) VariantClear(&paramVars[0]);
			auto res = cApplication.iDispatch.Invoke(cast(int)ID, &iidNULL, 0, DISPATCH_PROPERTYPUT, &params, cast(VARIANT*)RT, &exception, &argErr);
			assert(res == S_OK, `Could not invoke COM Function cApplication.setDisplayDialogs. Error `~to!string(res, 16));
		
		};
		

		// extern (Windows) iSolidColor()
		getForegroundColor = cast(typeof(this.getForegroundColor)) () 
		{
		 	auto key = `Application.SolidColor`;
			if (auto v = key in cApplication.CachedInterfaces)
			{
				return cast(cSolidColor)*v;
			}
		
			EXCEPINFO exception;
			uint argErr = 0;
			auto iidNULL = IID_NULL;
			auto RT = new SafeVariantPtr();
			DISPPARAMS params = {rgvarg: null, cArgs: 0, cNamedArgs: 0};
			auto ID = COMInterface[`ForegroundColor`].ID;
			auto res = cApplication.iDispatch.Invoke(cast(int)ID, &iidNULL, 0, DISPATCH_PROPERTYGET, &params, cast(VARIANT*)RT, &exception, &argErr);
			assert(res == S_OK, `Could not invoke COM Function cApplication.getForegroundColor. Error `~to!string(res, 16));
			if (cApplication.Cache)
			{
				if (auto v = key in cApplication.CachedInterfaces)
				{
					(cast(cSolidColor)v).iDispatch = cast(IDispatch)RT.punkVal;
					return cast(cSolidColor)*v;
				}
			}
			auto _class = new cSolidColor(true, cast(IDispatch)(RT.punkVal), this.iDispatch);
			cApplication.CachedInterfaces[key] = _class;
			return _class;
		
		};
		

		// extern (Windows) void(iSolidColor value)
		setForegroundColor = cast(typeof(this.setForegroundColor)) (iSolidColor value) 
		{
		 
			EXCEPINFO exception;
			uint argErr = 0;
			auto iidNULL = IID_NULL;
			auto RT = new SafeVariantPtr();
			VARIANT[1] paramVars;
			DISPPARAMS params = {rgvarg: paramVars.ptr, cArgs: 1, cNamedArgs: 0};
			auto ID = COMInterface[`ForegroundColor`].ID;
			paramVars[0].vt = 13;
			paramVars[0].punkVal = value;
			scope(exit) VariantClear(&paramVars[0]);
			auto res = cApplication.iDispatch.Invoke(cast(int)ID, &iidNULL, 0, DISPATCH_PROPERTYPUT, &params, cast(VARIANT*)RT, &exception, &argErr);
			assert(res == S_OK, `Could not invoke COM Function cApplication.setForegroundColor. Error `~to!string(res, 16));
		
		};
		

		// extern (Windows) iSolidColor()
		getBackgroundColor = cast(typeof(this.getBackgroundColor)) () 
		{
		 	auto key = `Application.SolidColor`;
			if (auto v = key in cApplication.CachedInterfaces)
			{
				return cast(cSolidColor)*v;
			}
		
			EXCEPINFO exception;
			uint argErr = 0;
			auto iidNULL = IID_NULL;
			auto RT = new SafeVariantPtr();
			DISPPARAMS params = {rgvarg: null, cArgs: 0, cNamedArgs: 0};
			auto ID = COMInterface[`BackgroundColor`].ID;
			auto res = cApplication.iDispatch.Invoke(cast(int)ID, &iidNULL, 0, DISPATCH_PROPERTYGET, &params, cast(VARIANT*)RT, &exception, &argErr);
			assert(res == S_OK, `Could not invoke COM Function cApplication.getBackgroundColor. Error `~to!string(res, 16));
			if (cApplication.Cache)
			{
				if (auto v = key in cApplication.CachedInterfaces)
				{
					(cast(cSolidColor)v).iDispatch = cast(IDispatch)RT.punkVal;
					return cast(cSolidColor)*v;
				}
			}
			auto _class = new cSolidColor(true, cast(IDispatch)(RT.punkVal), this.iDispatch);
			cApplication.CachedInterfaces[key] = _class;
			return _class;
		
		};
		

		// extern (Windows) void(iSolidColor value)
		setBackgroundColor = cast(typeof(this.setBackgroundColor)) (iSolidColor value) 
		{
		 
			EXCEPINFO exception;
			uint argErr = 0;
			auto iidNULL = IID_NULL;
			auto RT = new SafeVariantPtr();
			VARIANT[1] paramVars;
			DISPPARAMS params = {rgvarg: paramVars.ptr, cArgs: 1, cNamedArgs: 0};
			auto ID = COMInterface[`BackgroundColor`].ID;
			paramVars[0].vt = 13;
			paramVars[0].punkVal = value;
			scope(exit) VariantClear(&paramVars[0]);
			auto res = cApplication.iDispatch.Invoke(cast(int)ID, &iidNULL, 0, DISPATCH_PROPERTYPUT, &params, cast(VARIANT*)RT, &exception, &argErr);
			assert(res == S_OK, `Could not invoke COM Function cApplication.setBackgroundColor. Error `~to!string(res, 16));
		
		};
		

		// extern (Windows) bool()
		getNotifiersEnabled = cast(typeof(this.getNotifiersEnabled)) () 
		{
		 
			EXCEPINFO exception;
			uint argErr = 0;
			auto iidNULL = IID_NULL;
			auto RT = new SafeVariantPtr();
			DISPPARAMS params = {rgvarg: null, cArgs: 0, cNamedArgs: 0};
			auto ID = COMInterface[`NotifiersEnabled`].ID;
			auto res = cApplication.iDispatch.Invoke(cast(int)ID, &iidNULL, 0, DISPATCH_PROPERTYGET, &params, cast(VARIANT*)RT, &exception, &argErr);
			assert(res == S_OK, `Could not invoke COM Function cApplication.getNotifiersEnabled. Error `~to!string(res, 16));
			return cast(bool)(RT.intVal);
		
		};
		

		// extern (Windows) void(bool value)
		setNotifiersEnabled = cast(typeof(this.setNotifiersEnabled)) (bool value) 
		{
		 
			EXCEPINFO exception;
			uint argErr = 0;
			auto iidNULL = IID_NULL;
			auto RT = new SafeVariantPtr();
			VARIANT[1] paramVars;
			DISPPARAMS params = {rgvarg: paramVars.ptr, cArgs: 1, cNamedArgs: 0};
			auto ID = COMInterface[`NotifiersEnabled`].ID;
			paramVars[0].vt = 11;
			paramVars[0].intVal = value;
			scope(exit) VariantClear(&paramVars[0]);
			auto res = cApplication.iDispatch.Invoke(cast(int)ID, &iidNULL, 0, DISPATCH_PROPERTYPUT, &params, cast(VARIANT*)RT, &exception, &argErr);
			assert(res == S_OK, `Could not invoke COM Function cApplication.setNotifiersEnabled. Error `~to!string(res, 16));
		
		};
		

		// extern (Windows) VARIANT()
		WindowsFileTypes = cast(typeof(this.WindowsFileTypes)) () 
		{
		 
			EXCEPINFO exception;
			uint argErr = 0;
			auto iidNULL = IID_NULL;
			auto RT = new SafeVariantPtr();
			DISPPARAMS params = {rgvarg: null, cArgs: 0, cNamedArgs: 0};
			auto ID = COMInterface[`WindowsFileTypes`].ID;
			auto res = cApplication.iDispatch.Invoke(cast(int)ID, &iidNULL, 0, DISPATCH_PROPERTYGET, &params, cast(VARIANT*)RT, &exception, &argErr);
			assert(res == S_OK, `Could not invoke COM Function cApplication.WindowsFileTypes. Error `~to!string(res, 16));
			return RT;
		
		};
		

		// extern (Windows) VARIANT()
		MacintoshFileTypes = cast(typeof(this.MacintoshFileTypes)) () 
		{
		 
			EXCEPINFO exception;
			uint argErr = 0;
			auto iidNULL = IID_NULL;
			auto RT = new SafeVariantPtr();
			DISPPARAMS params = {rgvarg: null, cArgs: 0, cNamedArgs: 0};
			auto ID = COMInterface[`MacintoshFileTypes`].ID;
			auto res = cApplication.iDispatch.Invoke(cast(int)ID, &iidNULL, 0, DISPATCH_PROPERTYGET, &params, cast(VARIANT*)RT, &exception, &argErr);
			assert(res == S_OK, `Could not invoke COM Function cApplication.MacintoshFileTypes. Error `~to!string(res, 16));
			return RT;
		
		};
		

		// extern (Windows) wchar*()
		PreferencesFolder = cast(typeof(this.PreferencesFolder)) () 
		{
		 
			EXCEPINFO exception;
			uint argErr = 0;
			auto iidNULL = IID_NULL;
			auto RT = new SafeVariantPtr();
			DISPPARAMS params = {rgvarg: null, cArgs: 0, cNamedArgs: 0};
			auto ID = COMInterface[`PreferencesFolder`].ID;
			auto res = cApplication.iDispatch.Invoke(cast(int)ID, &iidNULL, 0, DISPATCH_PROPERTYGET, &params, cast(VARIANT*)RT, &exception, &argErr);
			assert(res == S_OK, `Could not invoke COM Function cApplication.PreferencesFolder. Error `~to!string(res, 16));
			return cast(wchar*)(RT.bstrVal);
		
		};
		

		// extern (Windows) wchar*()
		Locale = cast(typeof(this.Locale)) () 
		{
		 
			EXCEPINFO exception;
			uint argErr = 0;
			auto iidNULL = IID_NULL;
			auto RT = new SafeVariantPtr();
			DISPPARAMS params = {rgvarg: null, cArgs: 0, cNamedArgs: 0};
			auto ID = COMInterface[`Locale`].ID;
			auto res = cApplication.iDispatch.Invoke(cast(int)ID, &iidNULL, 0, DISPATCH_PROPERTYGET, &params, cast(VARIANT*)RT, &exception, &argErr);
			assert(res == S_OK, `Could not invoke COM Function cApplication.Locale. Error `~to!string(res, 16));
			return cast(wchar*)(RT.bstrVal);
		
		};
		

		// extern (Windows) iDocuments()
		Documents = cast(typeof(this.Documents)) () 
		{
		 	auto key = `Application.Documents`;
		
			EXCEPINFO exception;
			uint argErr = 0;
			auto iidNULL = IID_NULL;
			auto RT = new SafeVariantPtr();
			DISPPARAMS params = {rgvarg: null, cArgs: 0, cNamedArgs: 0};
			auto ID = COMInterface[`Documents`].ID;
			auto res = cApplication.iDispatch.Invoke(cast(int)ID, &iidNULL, 0, DISPATCH_PROPERTYGET, &params, cast(VARIANT*)RT, &exception, &argErr);
			assert(res == S_OK, `Could not invoke COM Function cApplication.Documents. Error `~to!string(res, 16));
			return cast(iDocuments)(RT.punkVal);
		
		};
		

		// extern (Windows) iTextFonts()
		Fonts = cast(typeof(this.Fonts)) () 
		{
		 	auto key = `Application.TextFonts`;
		
			EXCEPINFO exception;
			uint argErr = 0;
			auto iidNULL = IID_NULL;
			auto RT = new SafeVariantPtr();
			DISPPARAMS params = {rgvarg: null, cArgs: 0, cNamedArgs: 0};
			auto ID = COMInterface[`Fonts`].ID;
			auto res = cApplication.iDispatch.Invoke(cast(int)ID, &iidNULL, 0, DISPATCH_PROPERTYGET, &params, cast(VARIANT*)RT, &exception, &argErr);
			assert(res == S_OK, `Could not invoke COM Function cApplication.Fonts. Error `~to!string(res, 16));
			return cast(iTextFonts)(RT.punkVal);
		
		};
		

		// extern (Windows) iNotifiers()
		Notifiers = cast(typeof(this.Notifiers)) () 
		{
		 	auto key = `Application.Notifiers`;
		
			EXCEPINFO exception;
			uint argErr = 0;
			auto iidNULL = IID_NULL;
			auto RT = new SafeVariantPtr();
			DISPPARAMS params = {rgvarg: null, cArgs: 0, cNamedArgs: 0};
			auto ID = COMInterface[`Notifiers`].ID;
			auto res = cApplication.iDispatch.Invoke(cast(int)ID, &iidNULL, 0, DISPATCH_PROPERTYGET, &params, cast(VARIANT*)RT, &exception, &argErr);
			assert(res == S_OK, `Could not invoke COM Function cApplication.Notifiers. Error `~to!string(res, 16));
			return cast(iNotifiers)(RT.punkVal);
		
		};
		

		// extern (Windows) wchar*()
		ScriptingBuildDate = cast(typeof(this.ScriptingBuildDate)) () 
		{
		 
			EXCEPINFO exception;
			uint argErr = 0;
			auto iidNULL = IID_NULL;
			auto RT = new SafeVariantPtr();
			DISPPARAMS params = {rgvarg: null, cArgs: 0, cNamedArgs: 0};
			auto ID = COMInterface[`ScriptingBuildDate`].ID;
			auto res = cApplication.iDispatch.Invoke(cast(int)ID, &iidNULL, 0, DISPATCH_PROPERTYGET, &params, cast(VARIANT*)RT, &exception, &argErr);
			assert(res == S_OK, `Could not invoke COM Function cApplication.ScriptingBuildDate. Error `~to!string(res, 16));
			return cast(wchar*)(RT.bstrVal);
		
		};
		

		// extern (Windows) VARIANT()
		RecentFiles = cast(typeof(this.RecentFiles)) () 
		{
		 
			EXCEPINFO exception;
			uint argErr = 0;
			auto iidNULL = IID_NULL;
			auto RT = new SafeVariantPtr();
			DISPPARAMS params = {rgvarg: null, cArgs: 0, cNamedArgs: 0};
			auto ID = COMInterface[`RecentFiles`].ID;
			auto res = cApplication.iDispatch.Invoke(cast(int)ID, &iidNULL, 0, DISPATCH_PROPERTYGET, &params, cast(VARIANT*)RT, &exception, &argErr);
			assert(res == S_OK, `Could not invoke COM Function cApplication.RecentFiles. Error `~to!string(res, 16));
			return RT;
		
		};
		

		// extern (Windows) wchar*()
		Build = cast(typeof(this.Build)) () 
		{
		 
			EXCEPINFO exception;
			uint argErr = 0;
			auto iidNULL = IID_NULL;
			auto RT = new SafeVariantPtr();
			DISPPARAMS params = {rgvarg: null, cArgs: 0, cNamedArgs: 0};
			auto ID = COMInterface[`Build`].ID;
			auto res = cApplication.iDispatch.Invoke(cast(int)ID, &iidNULL, 0, DISPATCH_PROPERTYGET, &params, cast(VARIANT*)RT, &exception, &argErr);
			assert(res == S_OK, `Could not invoke COM Function cApplication.Build. Error `~to!string(res, 16));
			return cast(wchar*)(RT.bstrVal);
		
		};
		

		// extern (Windows) wchar*()
		SystemInformation = cast(typeof(this.SystemInformation)) () 
		{
		 
			EXCEPINFO exception;
			uint argErr = 0;
			auto iidNULL = IID_NULL;
			auto RT = new SafeVariantPtr();
			DISPPARAMS params = {rgvarg: null, cArgs: 0, cNamedArgs: 0};
			auto ID = COMInterface[`SystemInformation`].ID;
			auto res = cApplication.iDispatch.Invoke(cast(int)ID, &iidNULL, 0, DISPATCH_PROPERTYGET, &params, cast(VARIANT*)RT, &exception, &argErr);
			assert(res == S_OK, `Could not invoke COM Function cApplication.SystemInformation. Error `~to!string(res, 16));
			return cast(wchar*)(RT.bstrVal);
		
		};
		

		// extern (Windows) iMeasurementLog()
		MeasurementLog = cast(typeof(this.MeasurementLog)) () 
		{
		 	auto key = `Application.MeasurementLog`;
		
			EXCEPINFO exception;
			uint argErr = 0;
			auto iidNULL = IID_NULL;
			auto RT = new SafeVariantPtr();
			DISPPARAMS params = {rgvarg: null, cArgs: 0, cNamedArgs: 0};
			auto ID = COMInterface[`MeasurementLog`].ID;
			auto res = cApplication.iDispatch.Invoke(cast(int)ID, &iidNULL, 0, DISPATCH_PROPERTYGET, &params, cast(VARIANT*)RT, &exception, &argErr);
			assert(res == S_OK, `Could not invoke COM Function cApplication.MeasurementLog. Error `~to!string(res, 16));
			return cast(iMeasurementLog)(RT.punkVal);
		
		};
		

		// extern (Windows) wchar*()
		getCurrentTool = cast(typeof(this.getCurrentTool)) () 
		{
		 
			EXCEPINFO exception;
			uint argErr = 0;
			auto iidNULL = IID_NULL;
			auto RT = new SafeVariantPtr();
			DISPPARAMS params = {rgvarg: null, cArgs: 0, cNamedArgs: 0};
			auto ID = COMInterface[`CurrentTool`].ID;
			auto res = cApplication.iDispatch.Invoke(cast(int)ID, &iidNULL, 0, DISPATCH_PROPERTYGET, &params, cast(VARIANT*)RT, &exception, &argErr);
			assert(res == S_OK, `Could not invoke COM Function cApplication.getCurrentTool. Error `~to!string(res, 16));
			return cast(wchar*)(RT.bstrVal);
		
		};
		

		// extern (Windows) void(wchar* value)
		setCurrentTool = cast(typeof(this.setCurrentTool)) (wchar* value) 
		{
		 
			EXCEPINFO exception;
			uint argErr = 0;
			auto iidNULL = IID_NULL;
			auto RT = new SafeVariantPtr();
			VARIANT[1] paramVars;
			DISPPARAMS params = {rgvarg: paramVars.ptr, cArgs: 1, cNamedArgs: 0};
			auto ID = COMInterface[`CurrentTool`].ID;
			paramVars[0].vt = 8;
			paramVars[0].bstrVal = value;
			scope(exit) VariantClear(&paramVars[0]);
			auto res = cApplication.iDispatch.Invoke(cast(int)ID, &iidNULL, 0, DISPATCH_PROPERTYPUT, &params, cast(VARIANT*)RT, &exception, &argErr);
			assert(res == S_OK, `Could not invoke COM Function cApplication.setCurrentTool. Error `~to!string(res, 16));
		
		};
		

		// extern (Windows) iApplication()
		Application = cast(typeof(this.Application)) () 
		{
		 	auto key = `Application.Application`;
			if (auto v = key in cApplication.CachedInterfaces)
			{
				return cast(cApplication)*v;
			}
		
			EXCEPINFO exception;
			uint argErr = 0;
			auto iidNULL = IID_NULL;
			auto RT = new SafeVariantPtr();
			DISPPARAMS params = {rgvarg: null, cArgs: 0, cNamedArgs: 0};
			auto ID = COMInterface[`Application`].ID;
			auto res = cApplication.iDispatch.Invoke(cast(int)ID, &iidNULL, 0, DISPATCH_PROPERTYGET, &params, cast(VARIANT*)RT, &exception, &argErr);
			assert(res == S_OK, `Could not invoke COM Function cApplication.Application. Error `~to!string(res, 16));
			if (cApplication.Cache)
			{
				if (auto v = key in cApplication.CachedInterfaces)
				{
					(cast(cApplication)v).iDispatch = cast(IDispatch)RT.punkVal;
					return cast(cApplication)*v;
				}
			}
			auto _class = new cApplication(true, cast(IDispatch)(RT.punkVal), this.iDispatch);
			cApplication.CachedInterfaces[key] = _class;
			return _class;
		
		};
		

		// extern (Windows) void(wchar* Action, wchar* From)
		DoAction = cast(typeof(this.DoAction)) (wchar* Action, wchar* From) 
		{
		 
			EXCEPINFO exception;
			uint argErr = 0;
			auto iidNULL = IID_NULL;
			auto RT = new SafeVariantPtr();
			VARIANT[2] paramVars;
			DISPPARAMS params = {rgvarg: paramVars.ptr, cArgs: 2, cNamedArgs: 0};
			auto ID = COMInterface[`DoAction`].ID;
			paramVars[1].vt = 8;
			paramVars[1].bstrVal = Action;
			scope(exit) VariantClear(&paramVars[1]);
			paramVars[0].vt = 8;
			paramVars[0].bstrVal = From;
			scope(exit) VariantClear(&paramVars[0]);
			auto res = cApplication.iDispatch.Invoke(cast(int)ID, &iidNULL, 0, DISPATCH_METHOD, &params, cast(VARIANT*)RT, &exception, &argErr);
			assert(res == S_OK, `Could not invoke COM Function cApplication.DoAction. Error `~to!string(res, 16));
		
		};
		

		// extern (Windows) void(wchar* Document)
		Load = cast(typeof(this.Load)) (wchar* Document) 
		{
		 
			EXCEPINFO exception;
			uint argErr = 0;
			auto iidNULL = IID_NULL;
			auto RT = new SafeVariantPtr();
			VARIANT[1] paramVars;
			DISPPARAMS params = {rgvarg: paramVars.ptr, cArgs: 1, cNamedArgs: 0};
			auto ID = COMInterface[`Load`].ID;
			paramVars[0].vt = 8;
			paramVars[0].bstrVal = Document;
			scope(exit) VariantClear(&paramVars[0]);
			auto res = cApplication.iDispatch.Invoke(cast(int)ID, &iidNULL, 0, DISPATCH_METHOD, &params, cast(VARIANT*)RT, &exception, &argErr);
			assert(res == S_OK, `Could not invoke COM Function cApplication.Load. Error `~to!string(res, 16));
		
		};
		

		// extern (Windows) iDocument(wchar* Document, VARIANT As, VARIANT AsSmartObject)
		Open = cast(typeof(this.Open)) (wchar* Document, VARIANT As, VARIANT AsSmartObject) 
		{
		 	auto key = `Application.Document`;
			if (auto v = key in cApplication.CachedInterfaces)
			{
				return cast(cDocument)*v;
			}
		
			EXCEPINFO exception;
			uint argErr = 0;
			auto iidNULL = IID_NULL;
			auto RT = new SafeVariantPtr();
			VARIANT[3] paramVars;
			DISPPARAMS params = {rgvarg: paramVars.ptr, cArgs: 3, cNamedArgs: 0};
			auto ID = COMInterface[`Open`].ID;
			paramVars[2].vt = 8;
			paramVars[2].bstrVal = Document;
			scope(exit) VariantClear(&paramVars[2]);
			paramVars[1] = As;
			paramVars[0] = AsSmartObject;
			auto res = cApplication.iDispatch.Invoke(cast(int)ID, &iidNULL, 0, DISPATCH_METHOD, &params, cast(VARIANT*)RT, &exception, &argErr);
			assert(res == S_OK, `Could not invoke COM Function cApplication.Open. Error `~to!string(res, 16));
			if (cApplication.Cache)
			{
				if (auto v = key in cApplication.CachedInterfaces)
				{
					(cast(cDocument)v).iDispatch = cast(IDispatch)RT.punkVal;
					return cast(cDocument)*v;
				}
			}
			auto _class = new cDocument(true, cast(IDispatch)(RT.punkVal), this.iDispatch);
			cApplication.CachedInterfaces[key] = _class;
			return _class;
		
		};
		

		// extern (Windows) void(PsPurar Tar)
		Purge = cast(typeof(this.Purge)) (PsPurar Tar) 
		{
		 
			EXCEPINFO exception;
			uint argErr = 0;
			auto iidNULL = IID_NULL;
			auto RT = new SafeVariantPtr();
			VARIANT[1] paramVars;
			DISPPARAMS params = {rgvarg: paramVars.ptr, cArgs: 1, cNamedArgs: 0};
			auto ID = COMInterface[`Purge`].ID;
			paramVars[0].vt = 22;
			paramVars[0].intVal = Tar;
			scope(exit) VariantClear(&paramVars[0]);
			auto res = cApplication.iDispatch.Invoke(cast(int)ID, &iidNULL, 0, DISPATCH_METHOD, &params, cast(VARIANT*)RT, &exception, &argErr);
			assert(res == S_OK, `Could not invoke COM Function cApplication.Purge. Error `~to!string(res, 16));
		
		};
		

		// extern (Windows) wchar*(wchar* JavaScriptCode, VARIANT Arguments, VARIANT ExecutionMode)
		DoJavaScript = cast(typeof(this.DoJavaScript)) (wchar* JavaScriptCode, VARIANT Arguments, VARIANT ExecutionMode) 
		{
		 
			EXCEPINFO exception;
			uint argErr = 0;
			auto iidNULL = IID_NULL;
			auto RT = new SafeVariantPtr();
			VARIANT[3] paramVars;
			DISPPARAMS params = {rgvarg: paramVars.ptr, cArgs: 3, cNamedArgs: 0};
			auto ID = COMInterface[`DoJavaScript`].ID;
			paramVars[2].vt = 8;
			paramVars[2].bstrVal = JavaScriptCode;
			scope(exit) VariantClear(&paramVars[2]);
			paramVars[1] = Arguments;
			paramVars[0] = ExecutionMode;
			auto res = cApplication.iDispatch.Invoke(cast(int)ID, &iidNULL, 0, DISPATCH_METHOD, &params, cast(VARIANT*)RT, &exception, &argErr);
			assert(res == S_OK, `Could not invoke COM Function cApplication.DoJavaScript. Error `~to!string(res, 16));
			return cast(wchar*)(RT.bstrVal);
		
		};
		

		// extern (Windows) wchar*(wchar* JavaScriptFile, VARIANT Arguments, VARIANT ExecutionMode)
		DoJavaScriptFile = cast(typeof(this.DoJavaScriptFile)) (wchar* JavaScriptFile, VARIANT Arguments, VARIANT ExecutionMode) 
		{
		 
			EXCEPINFO exception;
			uint argErr = 0;
			auto iidNULL = IID_NULL;
			auto RT = new SafeVariantPtr();
			VARIANT[3] paramVars;
			DISPPARAMS params = {rgvarg: paramVars.ptr, cArgs: 3, cNamedArgs: 0};
			auto ID = COMInterface[`DoJavaScriptFile`].ID;
			paramVars[2].vt = 8;
			paramVars[2].bstrVal = JavaScriptFile;
			scope(exit) VariantClear(&paramVars[2]);
			paramVars[1] = Arguments;
			paramVars[0] = ExecutionMode;
			auto res = cApplication.iDispatch.Invoke(cast(int)ID, &iidNULL, 0, DISPATCH_METHOD, &params, cast(VARIANT*)RT, &exception, &argErr);
			assert(res == S_OK, `Could not invoke COM Function cApplication.DoJavaScriptFile. Error `~to!string(res, 16));
			return cast(wchar*)(RT.bstrVal);
		
		};
		

		// extern (Windows) wchar*(VARIANT InFolder, wchar* OutFolder, VARIANT Options)
		MakePhotoGallery = cast(typeof(this.MakePhotoGallery)) (VARIANT InFolder, wchar* OutFolder, VARIANT Options) 
		{
		 
			EXCEPINFO exception;
			uint argErr = 0;
			auto iidNULL = IID_NULL;
			auto RT = new SafeVariantPtr();
			VARIANT[3] paramVars;
			DISPPARAMS params = {rgvarg: paramVars.ptr, cArgs: 3, cNamedArgs: 0};
			auto ID = COMInterface[`MakePhotoGallery`].ID;
			paramVars[2] = InFolder;
			paramVars[1].vt = 8;
			paramVars[1].bstrVal = OutFolder;
			scope(exit) VariantClear(&paramVars[1]);
			paramVars[0] = Options;
			auto res = cApplication.iDispatch.Invoke(cast(int)ID, &iidNULL, 0, DISPATCH_METHOD, &params, cast(VARIANT*)RT, &exception, &argErr);
			assert(res == S_OK, `Could not invoke COM Function cApplication.MakePhotoGallery. Error `~to!string(res, 16));
			return cast(wchar*)(RT.bstrVal);
		
		};
		

		// extern (Windows) wchar*(VARIANT InFiles, wchar* OutFile, VARIANT Options)
		MakePDFPresentation = cast(typeof(this.MakePDFPresentation)) (VARIANT InFiles, wchar* OutFile, VARIANT Options) 
		{
		 
			EXCEPINFO exception;
			uint argErr = 0;
			auto iidNULL = IID_NULL;
			auto RT = new SafeVariantPtr();
			VARIANT[3] paramVars;
			DISPPARAMS params = {rgvarg: paramVars.ptr, cArgs: 3, cNamedArgs: 0};
			auto ID = COMInterface[`MakePDFPresentation`].ID;
			paramVars[2] = InFiles;
			paramVars[1].vt = 8;
			paramVars[1].bstrVal = OutFile;
			scope(exit) VariantClear(&paramVars[1]);
			paramVars[0] = Options;
			auto res = cApplication.iDispatch.Invoke(cast(int)ID, &iidNULL, 0, DISPATCH_METHOD, &params, cast(VARIANT*)RT, &exception, &argErr);
			assert(res == S_OK, `Could not invoke COM Function cApplication.MakePDFPresentation. Error `~to!string(res, 16));
			return cast(wchar*)(RT.bstrVal);
		
		};
		

		// extern (Windows) wchar*(VARIANT InFiles)
		MakePhotomerge = cast(typeof(this.MakePhotomerge)) (VARIANT InFiles) 
		{
		 
			EXCEPINFO exception;
			uint argErr = 0;
			auto iidNULL = IID_NULL;
			auto RT = new SafeVariantPtr();
			VARIANT[1] paramVars;
			DISPPARAMS params = {rgvarg: paramVars.ptr, cArgs: 1, cNamedArgs: 0};
			auto ID = COMInterface[`MakePhotomerge`].ID;
			paramVars[0] = InFiles;
			auto res = cApplication.iDispatch.Invoke(cast(int)ID, &iidNULL, 0, DISPATCH_METHOD, &params, cast(VARIANT*)RT, &exception, &argErr);
			assert(res == S_OK, `Could not invoke COM Function cApplication.MakePhotomerge. Error `~to!string(res, 16));
			return cast(wchar*)(RT.bstrVal);
		
		};
		

		// extern (Windows) wchar*(VARIANT InFiles, VARIANT Options)
		MakeContactSheet = cast(typeof(this.MakeContactSheet)) (VARIANT InFiles, VARIANT Options) 
		{
		 
			EXCEPINFO exception;
			uint argErr = 0;
			auto iidNULL = IID_NULL;
			auto RT = new SafeVariantPtr();
			VARIANT[2] paramVars;
			DISPPARAMS params = {rgvarg: paramVars.ptr, cArgs: 2, cNamedArgs: 0};
			auto ID = COMInterface[`MakeContactSheet`].ID;
			paramVars[1] = InFiles;
			paramVars[0] = Options;
			auto res = cApplication.iDispatch.Invoke(cast(int)ID, &iidNULL, 0, DISPATCH_METHOD, &params, cast(VARIANT*)RT, &exception, &argErr);
			assert(res == S_OK, `Could not invoke COM Function cApplication.MakeContactSheet. Error `~to!string(res, 16));
			return cast(wchar*)(RT.bstrVal);
		
		};
		

		// extern (Windows) wchar*(VARIANT InFiles, VARIANT Options)
		MakePicturePackage = cast(typeof(this.MakePicturePackage)) (VARIANT InFiles, VARIANT Options) 
		{
		 
			EXCEPINFO exception;
			uint argErr = 0;
			auto iidNULL = IID_NULL;
			auto RT = new SafeVariantPtr();
			VARIANT[2] paramVars;
			DISPPARAMS params = {rgvarg: paramVars.ptr, cArgs: 2, cNamedArgs: 0};
			auto ID = COMInterface[`MakePicturePackage`].ID;
			paramVars[1] = InFiles;
			paramVars[0] = Options;
			auto res = cApplication.iDispatch.Invoke(cast(int)ID, &iidNULL, 0, DISPATCH_METHOD, &params, cast(VARIANT*)RT, &exception, &argErr);
			assert(res == S_OK, `Could not invoke COM Function cApplication.MakePicturePackage. Error `~to!string(res, 16));
			return cast(wchar*)(RT.bstrVal);
		
		};
		

		// extern (Windows) wchar*(VARIANT InFiles, wchar* Action, wchar* From, VARIANT Options)
		Batch = cast(typeof(this.Batch)) (VARIANT InFiles, wchar* Action, wchar* From, VARIANT Options) 
		{
		 
			EXCEPINFO exception;
			uint argErr = 0;
			auto iidNULL = IID_NULL;
			auto RT = new SafeVariantPtr();
			VARIANT[4] paramVars;
			DISPPARAMS params = {rgvarg: paramVars.ptr, cArgs: 4, cNamedArgs: 0};
			auto ID = COMInterface[`Batch`].ID;
			paramVars[3] = InFiles;
			paramVars[2].vt = 8;
			paramVars[2].bstrVal = Action;
			scope(exit) VariantClear(&paramVars[2]);
			paramVars[1].vt = 8;
			paramVars[1].bstrVal = From;
			scope(exit) VariantClear(&paramVars[1]);
			paramVars[0] = Options;
			auto res = cApplication.iDispatch.Invoke(cast(int)ID, &iidNULL, 0, DISPATCH_METHOD, &params, cast(VARIANT*)RT, &exception, &argErr);
			assert(res == S_OK, `Could not invoke COM Function cApplication.Batch. Error `~to!string(res, 16));
			return cast(wchar*)(RT.bstrVal);
		
		};
		

		// extern (Windows) void()
		Quit = cast(typeof(this.Quit)) () 
		{
		 
			EXCEPINFO exception;
			uint argErr = 0;
			auto iidNULL = IID_NULL;
			auto RT = new SafeVariantPtr();
			DISPPARAMS params = {rgvarg: null, cArgs: 0, cNamedArgs: 0};
			auto ID = COMInterface[`Quit`].ID;
			auto res = cApplication.iDispatch.Invoke(cast(int)ID, &iidNULL, 0, DISPATCH_PROPERTYGET, &params, cast(VARIANT*)RT, &exception, &argErr);
			assert(res == S_OK, `Could not invoke COM Function cApplication.Quit. Error `~to!string(res, 16));
		
		};
		

		// extern (Windows) void()
		Refresh = cast(typeof(this.Refresh)) () 
		{
		 
			EXCEPINFO exception;
			uint argErr = 0;
			auto iidNULL = IID_NULL;
			auto RT = new SafeVariantPtr();
			DISPPARAMS params = {rgvarg: null, cArgs: 0, cNamedArgs: 0};
			auto ID = COMInterface[`Refresh`].ID;
			auto res = cApplication.iDispatch.Invoke(cast(int)ID, &iidNULL, 0, DISPATCH_PROPERTYGET, &params, cast(VARIANT*)RT, &exception, &argErr);
			assert(res == S_OK, `Could not invoke COM Function cApplication.Refresh. Error `~to!string(res, 16));
		
		};
		

		// extern (Windows) bool(wchar* Name)
		FeatureEnabled = cast(typeof(this.FeatureEnabled)) (wchar* Name) 
		{
		 
			EXCEPINFO exception;
			uint argErr = 0;
			auto iidNULL = IID_NULL;
			auto RT = new SafeVariantPtr();
			VARIANT[1] paramVars;
			DISPPARAMS params = {rgvarg: paramVars.ptr, cArgs: 1, cNamedArgs: 0};
			auto ID = COMInterface[`FeatureEnabled`].ID;
			paramVars[0].vt = 8;
			paramVars[0].bstrVal = Name;
			scope(exit) VariantClear(&paramVars[0]);
			auto res = cApplication.iDispatch.Invoke(cast(int)ID, &iidNULL, 0, DISPATCH_METHOD, &params, cast(VARIANT*)RT, &exception, &argErr);
			assert(res == S_OK, `Could not invoke COM Function cApplication.FeatureEnabled. Error `~to!string(res, 16));
			return cast(bool)(RT.intVal);
		
		};
		

		// extern (Windows) VARIANT()
		OpenDialog = cast(typeof(this.OpenDialog)) () 
		{
		 
			EXCEPINFO exception;
			uint argErr = 0;
			auto iidNULL = IID_NULL;
			auto RT = new SafeVariantPtr();
			DISPPARAMS params = {rgvarg: null, cArgs: 0, cNamedArgs: 0};
			auto ID = COMInterface[`OpenDialog`].ID;
			auto res = cApplication.iDispatch.Invoke(cast(int)ID, &iidNULL, 0, DISPATCH_PROPERTYGET, &params, cast(VARIANT*)RT, &exception, &argErr);
			assert(res == S_OK, `Could not invoke COM Function cApplication.OpenDialog. Error `~to!string(res, 16));
			return RT;
		
		};
		

		// extern (Windows) iActionDescriptor(int EventID, VARIANT Descriptor, VARIANT DisplayDialogs)
		setExecuteAction = cast(typeof(this.setExecuteAction)) (int EventID, VARIANT Descriptor, VARIANT DisplayDialogs) 
		{
		 	auto key = `Application.ActionDescriptor`;
		
			EXCEPINFO exception;
			uint argErr = 0;
			auto iidNULL = IID_NULL;
			auto RT = new SafeVariantPtr();
			VARIANT[3] paramVars;
			DISPPARAMS params = {rgvarg: paramVars.ptr, cArgs: 3, cNamedArgs: 0};
			auto ID = COMInterface[`ExecuteAction`].ID;
			paramVars[2].vt = 3;
			paramVars[2].lVal = EventID;
			scope(exit) VariantClear(&paramVars[2]);
			paramVars[1] = Descriptor;
			paramVars[0] = DisplayDialogs;
			auto res = cApplication.iDispatch.Invoke(cast(int)ID, &iidNULL, 0, DISPATCH_PROPERTYPUT, &params, cast(VARIANT*)RT, &exception, &argErr);
			assert(res == S_OK, `Could not invoke COM Function cApplication.setExecuteAction. Error `~to!string(res, 16));
			return cast(iActionDescriptor)(RT.punkVal);
		
		};
		

		// extern (Windows) iActionDescriptor(iActionReference Reference)
		setExecuteAction__2 = cast(typeof(this.setExecuteAction__2)) (iActionReference Reference) 
		{
		 	auto key = `Application.ActionDescriptor`;
		
			EXCEPINFO exception;
			uint argErr = 0;
			auto iidNULL = IID_NULL;
			auto RT = new SafeVariantPtr();
			VARIANT[1] paramVars;
			DISPPARAMS params = {rgvarg: paramVars.ptr, cArgs: 1, cNamedArgs: 0};
			auto ID = COMInterface[`ExecuteAction`].ID;
			paramVars[0].vt = 13;
			paramVars[0].punkVal = Reference;
			scope(exit) VariantClear(&paramVars[0]);
			auto res = cApplication.iDispatch.Invoke(cast(int)ID, &iidNULL, 0, DISPATCH_PROPERTYPUT, &params, cast(VARIANT*)RT, &exception, &argErr);
			assert(res == S_OK, `Could not invoke COM Function cApplication.setExecuteAction. Error `~to!string(res, 16));
			return cast(iActionDescriptor)(RT.punkVal);
		
		};
		

		// extern (Windows) int(wchar* StringID)
		StringIDToTypeID = cast(typeof(this.StringIDToTypeID)) (wchar* StringID) 
		{
		 
			EXCEPINFO exception;
			uint argErr = 0;
			auto iidNULL = IID_NULL;
			auto RT = new SafeVariantPtr();
			VARIANT[1] paramVars;
			DISPPARAMS params = {rgvarg: paramVars.ptr, cArgs: 1, cNamedArgs: 0};
			auto ID = COMInterface[`StringIDToTypeID`].ID;
			paramVars[0].vt = 8;
			paramVars[0].bstrVal = StringID;
			scope(exit) VariantClear(&paramVars[0]);
			auto res = cApplication.iDispatch.Invoke(cast(int)ID, &iidNULL, 0, DISPATCH_METHOD, &params, cast(VARIANT*)RT, &exception, &argErr);
			assert(res == S_OK, `Could not invoke COM Function cApplication.StringIDToTypeID. Error `~to!string(res, 16));
			return cast(int)(RT.lVal);
		
		};
		

		// extern (Windows) wchar*(int TypeID)
		TypeIDToStringID = cast(typeof(this.TypeIDToStringID)) (int TypeID) 
		{
		 
			EXCEPINFO exception;
			uint argErr = 0;
			auto iidNULL = IID_NULL;
			auto RT = new SafeVariantPtr();
			VARIANT[1] paramVars;
			DISPPARAMS params = {rgvarg: paramVars.ptr, cArgs: 1, cNamedArgs: 0};
			auto ID = COMInterface[`TypeIDToStringID`].ID;
			paramVars[0].vt = 3;
			paramVars[0].lVal = TypeID;
			scope(exit) VariantClear(&paramVars[0]);
			auto res = cApplication.iDispatch.Invoke(cast(int)ID, &iidNULL, 0, DISPATCH_METHOD, &params, cast(VARIANT*)RT, &exception, &argErr);
			assert(res == S_OK, `Could not invoke COM Function cApplication.TypeIDToStringID. Error `~to!string(res, 16));
			return cast(wchar*)(RT.bstrVal);
		
		};
		

		// extern (Windows) int(wchar* CharID)
		CharIDToTypeID = cast(typeof(this.CharIDToTypeID)) (wchar* CharID) 
		{
		 
			EXCEPINFO exception;
			uint argErr = 0;
			auto iidNULL = IID_NULL;
			auto RT = new SafeVariantPtr();
			VARIANT[1] paramVars;
			DISPPARAMS params = {rgvarg: paramVars.ptr, cArgs: 1, cNamedArgs: 0};
			auto ID = COMInterface[`CharIDToTypeID`].ID;
			paramVars[0].vt = 8;
			paramVars[0].bstrVal = CharID;
			scope(exit) VariantClear(&paramVars[0]);
			auto res = cApplication.iDispatch.Invoke(cast(int)ID, &iidNULL, 0, DISPATCH_METHOD, &params, cast(VARIANT*)RT, &exception, &argErr);
			assert(res == S_OK, `Could not invoke COM Function cApplication.CharIDToTypeID. Error `~to!string(res, 16));
			return cast(int)(RT.lVal);
		
		};
		

		// extern (Windows) wchar*(int TypeID)
		TypeIDToCharID = cast(typeof(this.TypeIDToCharID)) (int TypeID) 
		{
		 
			EXCEPINFO exception;
			uint argErr = 0;
			auto iidNULL = IID_NULL;
			auto RT = new SafeVariantPtr();
			VARIANT[1] paramVars;
			DISPPARAMS params = {rgvarg: paramVars.ptr, cArgs: 1, cNamedArgs: 0};
			auto ID = COMInterface[`TypeIDToCharID`].ID;
			paramVars[0].vt = 3;
			paramVars[0].lVal = TypeID;
			scope(exit) VariantClear(&paramVars[0]);
			auto res = cApplication.iDispatch.Invoke(cast(int)ID, &iidNULL, 0, DISPATCH_METHOD, &params, cast(VARIANT*)RT, &exception, &argErr);
			assert(res == S_OK, `Could not invoke COM Function cApplication.TypeIDToCharID. Error `~to!string(res, 16));
			return cast(wchar*)(RT.bstrVal);
		
		};
		

		// extern (Windows) void(VARIANT Name, VARIANT File)
		ChangeColorSettings = cast(typeof(this.ChangeColorSettings)) (VARIANT Name, VARIANT File) 
		{
		 
			EXCEPINFO exception;
			uint argErr = 0;
			auto iidNULL = IID_NULL;
			auto RT = new SafeVariantPtr();
			VARIANT[2] paramVars;
			DISPPARAMS params = {rgvarg: paramVars.ptr, cArgs: 2, cNamedArgs: 0};
			auto ID = COMInterface[`ChangeColorSettings`].ID;
			paramVars[1] = Name;
			paramVars[0] = File;
			auto res = cApplication.iDispatch.Invoke(cast(int)ID, &iidNULL, 0, DISPATCH_METHOD, &params, cast(VARIANT*)RT, &exception, &argErr);
			assert(res == S_OK, `Could not invoke COM Function cApplication.ChangeColorSettings. Error `~to!string(res, 16));
		
		};
		
	}
	~this(){ if (iDispatch) iDispatch.Release(); }
}

public class cDocument
{
	import mPhotoshopCOM, std.conv, mCOM2D, core.sys.windows.windows, core.sys.windows.com, core.sys.windows.wtypes, core.sys.windows.basetyps, core.sys.windows.unknwn, core.sys.windows.oaidl;
	public IDispatch iDispatch = null;
	public IDispatch iDispatchParent = null;
	public IDispatch iDispatchQuery = null;
	public GUID iID = IID.init;
	public GUID clsID = IID.init;
	public static bool Cache = true;
	public static bool FastCache = true;

	public cArtLayer delegate() BackgroundLayer;
	public PsBitsPerChannelType delegate() getBitsPerChannel;
	PsBitsPerChannelType BitsPerChannel() { return getBitsPerChannel(); } 
	public void delegate(PsBitsPerChannelType value) setBitsPerChannel;
	auto BitsPerChannel(PsBitsPerChannelType value) { setBitsPerChannel(value); }
	public PsColorProfileType delegate() getColorProfileType;
	PsColorProfileType ColorProfileType() { return getColorProfileType(); } 
	public void delegate(PsColorProfileType value) setColorProfileType;
	auto ColorProfileType(PsColorProfileType value) { setColorProfileType(value); }
	public wchar* delegate() getColorProfileName;
	wchar* ColorProfileName() { return getColorProfileName(); } 
	public void delegate(wchar* value) setColorProfileName;
	auto ColorProfileName(wchar* value) { setColorProfileName(value); }
	public PsDocumentMode delegate() Mode;
	public SafeVariantPtr delegate() ComponentChannels;
	public iHistoryState delegate() getActiveHistoryState;
	iHistoryState ActiveHistoryState() { return getActiveHistoryState(); } 
	public void delegate(iHistoryState value) setActiveHistoryState;
	auto ActiveHistoryState(iHistoryState value) { setActiveHistoryState(value); }
	public iHistoryState delegate() getActiveHistoryBrushSource;
	iHistoryState ActiveHistoryBrushSource() { return getActiveHistoryBrushSource(); } 
	public void delegate(iHistoryState value) setActiveHistoryBrushSource;
	auto ActiveHistoryBrushSource(iHistoryState value) { setActiveHistoryBrushSource(value); }
	public IDispatch delegate() getActiveLayer;
	IDispatch ActiveLayer() { return getActiveLayer(); } 
	public void delegate(IDispatch value) setActiveLayer;
	auto ActiveLayer(IDispatch value) { setActiveLayer(value); }
	public SafeVariantPtr delegate() getActiveChannels;
	SafeVariantPtr ActiveChannels() { return getActiveChannels(); } 
	public void delegate(VARIANT value) setActiveChannels;
	auto ActiveChannels(VARIANT value) { setActiveChannels(value); }
	public iDocumentInfo delegate() Info;
	public wchar* delegate() FullName;
	public double delegate() Height;
	public bool delegate() Managed;
	public bool delegate() Saved;
	public wchar* delegate() Name;
	public wchar* delegate() Path;
	public bool delegate() getQuickMaskMode;
	bool QuickMaskMode() { return getQuickMaskMode(); } 
	public void delegate(bool value) setQuickMaskMode;
	auto QuickMaskMode(bool value) { setQuickMaskMode(value); }
	public double delegate() Resolution;
	public iSelection delegate() Selection;
	public double delegate() Width;
	public SafeVariantPtr delegate() Histogram;
	public double delegate() getPixelAspectRatio;
	double PixelAspectRatio() { return getPixelAspectRatio(); } 
	public void delegate(double value) setPixelAspectRatio;
	auto PixelAspectRatio(double value) { setPixelAspectRatio(value); }
	public iXMPMetadata delegate() XMPMetadata;
	public iMeasurementScale delegate() MeasurementScale;
	public int delegate() id;
	public iLayers delegate() Layers;
	public iLayerSets delegate() LayerSets;
	public iArtLayers delegate() ArtLayers;
	public iChannels delegate() Channels;
	public iHistoryStates delegate() HistoryStates;
	public iLayerComps delegate() LayerComps;
	public iPathItems delegate() PathItems;
	public iCountItems delegate() CountItems;
	public iColorSamplers delegate() ColorSamplers;
	public cApplication delegate() Application;
	public IDispatch delegate() Parent;
	public void delegate(VARIANT Saving) Close;
	public void delegate(wchar* DestinationProfile, PsIntent Intent, VARIANT BlackPointCompensation, VARIANT Dither) ConvertProfile;
	public void delegate(PsChangeMode DestinationMode, VARIANT Options) ChangeMode;
	public void delegate(VARIANT Bounds, VARIANT Angle, VARIANT Width, VARIANT Height) Crop;
	public void delegate(wchar* ExportIn, VARIANT ExportAs, VARIANT Options) Export;
	public void delegate(PsDirection Direction) FlipCanvas;
	public void delegate(wchar* File) ImportAnnotations;
	public void delegate() Flatten;
	public void delegate() MergeVisibleLayers;
	public cArtLayer delegate(VARIANT IntoSelection) Paste;
	public void delegate(VARIANT SourceSpace, VARIANT PrintSpace, VARIANT Intent, VARIANT BlackPointCompensation) PrintOut;
	public void delegate() RevealAll;
	public void delegate() RasterizeAllLayers;
	public void delegate(VARIANT Source, VARIANT DataPoints) RecordMeasurements;
	public void delegate(double Angle) RotateCanvas;
	public void delegate(VARIANT Width, VARIANT Height, VARIANT Anchor) ResizeCanvas;
	public void delegate(VARIANT Width, VARIANT Height, VARIANT Resolution, VARIANT ResampleMethod, VARIANT Amount) ResizeImage;
	public SafeVariantPtr delegate() SplitChannels;
	public void delegate() Save;
	public void delegate(wchar* SaveIn, VARIANT Options, VARIANT AsCopy, VARIANT ExtensionType) SaveAs;
	public void delegate(int Width) Trap;
	public void delegate(VARIANT Type, VARIANT Top, VARIANT Left, VARIANT Bottom, VARIANT Right) Trim;
	public cDocument delegate(VARIANT Name, VARIANT MergeLayersOnly) Duplicate;
	public void delegate(iChannel Channel, int Threshold) AutoCount;

	// iDocument
	public this(bool _query = false, IDispatch _Query = null, IDispatch _Parent = null)
	{

		iDispatchQuery = _Query;
		iDispatchParent = _Parent;
		auto COMInterface = GetDynamicCOMInterface!(mPhotoshopCOM.iDocument, void, cDocument)(this, null, _query);

		// extern (Windows) iArtLayer()
		BackgroundLayer = cast(typeof(this.BackgroundLayer)) () 
		{
		 	auto key = `Document.ArtLayer`;
			if (auto v = key in cApplication.CachedInterfaces)
			{
				return cast(cArtLayer)*v;
			}
		
			EXCEPINFO exception;
			uint argErr = 0;
			auto iidNULL = IID_NULL;
			auto RT = new SafeVariantPtr();
			DISPPARAMS params = {rgvarg: null, cArgs: 0, cNamedArgs: 0};
			auto ID = COMInterface[`BackgroundLayer`].ID;
			auto res = cDocument.iDispatch.Invoke(cast(int)ID, &iidNULL, 0, DISPATCH_PROPERTYGET, &params, cast(VARIANT*)RT, &exception, &argErr);
			assert(res == S_OK, `Could not invoke COM Function cDocument.BackgroundLayer. Error `~to!string(res, 16));
			if (cApplication.Cache)
			{
				if (auto v = key in cApplication.CachedInterfaces)
				{
					(cast(cArtLayer)v).iDispatch = cast(IDispatch)RT.punkVal;
					return cast(cArtLayer)*v;
				}
			}
			auto _class = new cArtLayer(true, cast(IDispatch)(RT.punkVal), this.iDispatch);
			cApplication.CachedInterfaces[key] = _class;
			return _class;
		
		};
		

		// extern (Windows) PsBitsPerChannelType()
		getBitsPerChannel = cast(typeof(this.getBitsPerChannel)) () 
		{
		 
			EXCEPINFO exception;
			uint argErr = 0;
			auto iidNULL = IID_NULL;
			auto RT = new SafeVariantPtr();
			DISPPARAMS params = {rgvarg: null, cArgs: 0, cNamedArgs: 0};
			auto ID = COMInterface[`BitsPerChannel`].ID;
			auto res = cDocument.iDispatch.Invoke(cast(int)ID, &iidNULL, 0, DISPATCH_PROPERTYGET, &params, cast(VARIANT*)RT, &exception, &argErr);
			assert(res == S_OK, `Could not invoke COM Function cDocument.getBitsPerChannel. Error `~to!string(res, 16));
			return cast(PsBitsPerChannelType)(RT.lVal);
		
		};
		

		// extern (Windows) void(PsBitsPerChannelType value)
		setBitsPerChannel = cast(typeof(this.setBitsPerChannel)) (PsBitsPerChannelType value) 
		{
		 
			EXCEPINFO exception;
			uint argErr = 0;
			auto iidNULL = IID_NULL;
			auto RT = new SafeVariantPtr();
			VARIANT[1] paramVars;
			DISPPARAMS params = {rgvarg: paramVars.ptr, cArgs: 1, cNamedArgs: 0};
			auto ID = COMInterface[`BitsPerChannel`].ID;
			paramVars[0].vt = 22;
			paramVars[0].intVal = value;
			scope(exit) VariantClear(&paramVars[0]);
			auto res = cDocument.iDispatch.Invoke(cast(int)ID, &iidNULL, 0, DISPATCH_PROPERTYPUT, &params, cast(VARIANT*)RT, &exception, &argErr);
			assert(res == S_OK, `Could not invoke COM Function cDocument.setBitsPerChannel. Error `~to!string(res, 16));
		
		};
		

		// extern (Windows) PsColorProfileType()
		getColorProfileType = cast(typeof(this.getColorProfileType)) () 
		{
		 
			EXCEPINFO exception;
			uint argErr = 0;
			auto iidNULL = IID_NULL;
			auto RT = new SafeVariantPtr();
			DISPPARAMS params = {rgvarg: null, cArgs: 0, cNamedArgs: 0};
			auto ID = COMInterface[`ColorProfileType`].ID;
			auto res = cDocument.iDispatch.Invoke(cast(int)ID, &iidNULL, 0, DISPATCH_PROPERTYGET, &params, cast(VARIANT*)RT, &exception, &argErr);
			assert(res == S_OK, `Could not invoke COM Function cDocument.getColorProfileType. Error `~to!string(res, 16));
			return cast(PsColorProfileType)(RT.lVal);
		
		};
		

		// extern (Windows) void(PsColorProfileType value)
		setColorProfileType = cast(typeof(this.setColorProfileType)) (PsColorProfileType value) 
		{
		 
			EXCEPINFO exception;
			uint argErr = 0;
			auto iidNULL = IID_NULL;
			auto RT = new SafeVariantPtr();
			VARIANT[1] paramVars;
			DISPPARAMS params = {rgvarg: paramVars.ptr, cArgs: 1, cNamedArgs: 0};
			auto ID = COMInterface[`ColorProfileType`].ID;
			paramVars[0].vt = 22;
			paramVars[0].intVal = value;
			scope(exit) VariantClear(&paramVars[0]);
			auto res = cDocument.iDispatch.Invoke(cast(int)ID, &iidNULL, 0, DISPATCH_PROPERTYPUT, &params, cast(VARIANT*)RT, &exception, &argErr);
			assert(res == S_OK, `Could not invoke COM Function cDocument.setColorProfileType. Error `~to!string(res, 16));
		
		};
		

		// extern (Windows) wchar*()
		getColorProfileName = cast(typeof(this.getColorProfileName)) () 
		{
		 
			EXCEPINFO exception;
			uint argErr = 0;
			auto iidNULL = IID_NULL;
			auto RT = new SafeVariantPtr();
			DISPPARAMS params = {rgvarg: null, cArgs: 0, cNamedArgs: 0};
			auto ID = COMInterface[`ColorProfileName`].ID;
			auto res = cDocument.iDispatch.Invoke(cast(int)ID, &iidNULL, 0, DISPATCH_PROPERTYGET, &params, cast(VARIANT*)RT, &exception, &argErr);
			assert(res == S_OK, `Could not invoke COM Function cDocument.getColorProfileName. Error `~to!string(res, 16));
			return cast(wchar*)(RT.bstrVal);
		
		};
		

		// extern (Windows) void(wchar* value)
		setColorProfileName = cast(typeof(this.setColorProfileName)) (wchar* value) 
		{
		 
			EXCEPINFO exception;
			uint argErr = 0;
			auto iidNULL = IID_NULL;
			auto RT = new SafeVariantPtr();
			VARIANT[1] paramVars;
			DISPPARAMS params = {rgvarg: paramVars.ptr, cArgs: 1, cNamedArgs: 0};
			auto ID = COMInterface[`ColorProfileName`].ID;
			paramVars[0].vt = 8;
			paramVars[0].bstrVal = value;
			scope(exit) VariantClear(&paramVars[0]);
			auto res = cDocument.iDispatch.Invoke(cast(int)ID, &iidNULL, 0, DISPATCH_PROPERTYPUT, &params, cast(VARIANT*)RT, &exception, &argErr);
			assert(res == S_OK, `Could not invoke COM Function cDocument.setColorProfileName. Error `~to!string(res, 16));
		
		};
		

		// extern (Windows) PsDocumentMode()
		Mode = cast(typeof(this.Mode)) () 
		{
		 
			EXCEPINFO exception;
			uint argErr = 0;
			auto iidNULL = IID_NULL;
			auto RT = new SafeVariantPtr();
			DISPPARAMS params = {rgvarg: null, cArgs: 0, cNamedArgs: 0};
			auto ID = COMInterface[`Mode`].ID;
			auto res = cDocument.iDispatch.Invoke(cast(int)ID, &iidNULL, 0, DISPATCH_PROPERTYGET, &params, cast(VARIANT*)RT, &exception, &argErr);
			assert(res == S_OK, `Could not invoke COM Function cDocument.Mode. Error `~to!string(res, 16));
			return cast(PsDocumentMode)(RT.lVal);
		
		};
		

		// extern (Windows) VARIANT()
		ComponentChannels = cast(typeof(this.ComponentChannels)) () 
		{
		 
			EXCEPINFO exception;
			uint argErr = 0;
			auto iidNULL = IID_NULL;
			auto RT = new SafeVariantPtr();
			DISPPARAMS params = {rgvarg: null, cArgs: 0, cNamedArgs: 0};
			auto ID = COMInterface[`ComponentChannels`].ID;
			auto res = cDocument.iDispatch.Invoke(cast(int)ID, &iidNULL, 0, DISPATCH_PROPERTYGET, &params, cast(VARIANT*)RT, &exception, &argErr);
			assert(res == S_OK, `Could not invoke COM Function cDocument.ComponentChannels. Error `~to!string(res, 16));
			return RT;
		
		};
		

		// extern (Windows) iHistoryState()
		getActiveHistoryState = cast(typeof(this.getActiveHistoryState)) () 
		{
		 	auto key = `Document.HistoryState`;
		
			EXCEPINFO exception;
			uint argErr = 0;
			auto iidNULL = IID_NULL;
			auto RT = new SafeVariantPtr();
			DISPPARAMS params = {rgvarg: null, cArgs: 0, cNamedArgs: 0};
			auto ID = COMInterface[`ActiveHistoryState`].ID;
			auto res = cDocument.iDispatch.Invoke(cast(int)ID, &iidNULL, 0, DISPATCH_PROPERTYGET, &params, cast(VARIANT*)RT, &exception, &argErr);
			assert(res == S_OK, `Could not invoke COM Function cDocument.getActiveHistoryState. Error `~to!string(res, 16));
			return cast(iHistoryState)(RT.punkVal);
		
		};
		

		// extern (Windows) void(iHistoryState value)
		setActiveHistoryState = cast(typeof(this.setActiveHistoryState)) (iHistoryState value) 
		{
		 
			EXCEPINFO exception;
			uint argErr = 0;
			auto iidNULL = IID_NULL;
			auto RT = new SafeVariantPtr();
			VARIANT[1] paramVars;
			DISPPARAMS params = {rgvarg: paramVars.ptr, cArgs: 1, cNamedArgs: 0};
			auto ID = COMInterface[`ActiveHistoryState`].ID;
			paramVars[0].vt = 13;
			paramVars[0].punkVal = value;
			scope(exit) VariantClear(&paramVars[0]);
			auto res = cDocument.iDispatch.Invoke(cast(int)ID, &iidNULL, 0, DISPATCH_PROPERTYPUT, &params, cast(VARIANT*)RT, &exception, &argErr);
			assert(res == S_OK, `Could not invoke COM Function cDocument.setActiveHistoryState. Error `~to!string(res, 16));
		
		};
		

		// extern (Windows) iHistoryState()
		getActiveHistoryBrushSource = cast(typeof(this.getActiveHistoryBrushSource)) () 
		{
		 	auto key = `Document.HistoryState`;
		
			EXCEPINFO exception;
			uint argErr = 0;
			auto iidNULL = IID_NULL;
			auto RT = new SafeVariantPtr();
			DISPPARAMS params = {rgvarg: null, cArgs: 0, cNamedArgs: 0};
			auto ID = COMInterface[`ActiveHistoryBrushSource`].ID;
			auto res = cDocument.iDispatch.Invoke(cast(int)ID, &iidNULL, 0, DISPATCH_PROPERTYGET, &params, cast(VARIANT*)RT, &exception, &argErr);
			assert(res == S_OK, `Could not invoke COM Function cDocument.getActiveHistoryBrushSource. Error `~to!string(res, 16));
			return cast(iHistoryState)(RT.punkVal);
		
		};
		

		// extern (Windows) void(iHistoryState value)
		setActiveHistoryBrushSource = cast(typeof(this.setActiveHistoryBrushSource)) (iHistoryState value) 
		{
		 
			EXCEPINFO exception;
			uint argErr = 0;
			auto iidNULL = IID_NULL;
			auto RT = new SafeVariantPtr();
			VARIANT[1] paramVars;
			DISPPARAMS params = {rgvarg: paramVars.ptr, cArgs: 1, cNamedArgs: 0};
			auto ID = COMInterface[`ActiveHistoryBrushSource`].ID;
			paramVars[0].vt = 13;
			paramVars[0].punkVal = value;
			scope(exit) VariantClear(&paramVars[0]);
			auto res = cDocument.iDispatch.Invoke(cast(int)ID, &iidNULL, 0, DISPATCH_PROPERTYPUT, &params, cast(VARIANT*)RT, &exception, &argErr);
			assert(res == S_OK, `Could not invoke COM Function cDocument.setActiveHistoryBrushSource. Error `~to!string(res, 16));
		
		};
		

		// extern (Windows) IDispatch()
		getActiveLayer = cast(typeof(this.getActiveLayer)) () 
		{
		 	auto key = `Document.Dispatch`;
		
			EXCEPINFO exception;
			uint argErr = 0;
			auto iidNULL = IID_NULL;
			auto RT = new SafeVariantPtr();
			DISPPARAMS params = {rgvarg: null, cArgs: 0, cNamedArgs: 0};
			auto ID = COMInterface[`ActiveLayer`].ID;
			auto res = cDocument.iDispatch.Invoke(cast(int)ID, &iidNULL, 0, DISPATCH_PROPERTYGET, &params, cast(VARIANT*)RT, &exception, &argErr);
			assert(res == S_OK, `Could not invoke COM Function cDocument.getActiveLayer. Error `~to!string(res, 16));
			return cast(IDispatch)(RT.pdispVal);
		
		};
		

		// extern (Windows) void(IDispatch value)
		setActiveLayer = cast(typeof(this.setActiveLayer)) (IDispatch value) 
		{
		 
			EXCEPINFO exception;
			uint argErr = 0;
			auto iidNULL = IID_NULL;
			auto RT = new SafeVariantPtr();
			VARIANT[1] paramVars;
			DISPPARAMS params = {rgvarg: paramVars.ptr, cArgs: 1, cNamedArgs: 0};
			auto ID = COMInterface[`ActiveLayer`].ID;
			paramVars[0].vt = 13;
			paramVars[0].punkVal = value;
			scope(exit) VariantClear(&paramVars[0]);
			auto res = cDocument.iDispatch.Invoke(cast(int)ID, &iidNULL, 0, DISPATCH_PROPERTYPUT, &params, cast(VARIANT*)RT, &exception, &argErr);
			assert(res == S_OK, `Could not invoke COM Function cDocument.setActiveLayer. Error `~to!string(res, 16));
		
		};
		

		// extern (Windows) VARIANT()
		getActiveChannels = cast(typeof(this.getActiveChannels)) () 
		{
		 
			EXCEPINFO exception;
			uint argErr = 0;
			auto iidNULL = IID_NULL;
			auto RT = new SafeVariantPtr();
			DISPPARAMS params = {rgvarg: null, cArgs: 0, cNamedArgs: 0};
			auto ID = COMInterface[`ActiveChannels`].ID;
			auto res = cDocument.iDispatch.Invoke(cast(int)ID, &iidNULL, 0, DISPATCH_PROPERTYGET, &params, cast(VARIANT*)RT, &exception, &argErr);
			assert(res == S_OK, `Could not invoke COM Function cDocument.getActiveChannels. Error `~to!string(res, 16));
			return RT;
		
		};
		

		// extern (Windows) void(VARIANT value)
		setActiveChannels = cast(typeof(this.setActiveChannels)) (VARIANT value) 
		{
		 
			EXCEPINFO exception;
			uint argErr = 0;
			auto iidNULL = IID_NULL;
			auto RT = new SafeVariantPtr();
			VARIANT[1] paramVars;
			DISPPARAMS params = {rgvarg: paramVars.ptr, cArgs: 1, cNamedArgs: 0};
			auto ID = COMInterface[`ActiveChannels`].ID;
			paramVars[0] = value;
			auto res = cDocument.iDispatch.Invoke(cast(int)ID, &iidNULL, 0, DISPATCH_PROPERTYPUT, &params, cast(VARIANT*)RT, &exception, &argErr);
			assert(res == S_OK, `Could not invoke COM Function cDocument.setActiveChannels. Error `~to!string(res, 16));
		
		};
		

		// extern (Windows) iDocumentInfo()
		Info = cast(typeof(this.Info)) () 
		{
		 	auto key = `Document.DocumentInfo`;
		
			EXCEPINFO exception;
			uint argErr = 0;
			auto iidNULL = IID_NULL;
			auto RT = new SafeVariantPtr();
			DISPPARAMS params = {rgvarg: null, cArgs: 0, cNamedArgs: 0};
			auto ID = COMInterface[`Info`].ID;
			auto res = cDocument.iDispatch.Invoke(cast(int)ID, &iidNULL, 0, DISPATCH_PROPERTYGET, &params, cast(VARIANT*)RT, &exception, &argErr);
			assert(res == S_OK, `Could not invoke COM Function cDocument.Info. Error `~to!string(res, 16));
			return cast(iDocumentInfo)(RT.punkVal);
		
		};
		

		// extern (Windows) wchar*()
		FullName = cast(typeof(this.FullName)) () 
		{
		 
			EXCEPINFO exception;
			uint argErr = 0;
			auto iidNULL = IID_NULL;
			auto RT = new SafeVariantPtr();
			DISPPARAMS params = {rgvarg: null, cArgs: 0, cNamedArgs: 0};
			auto ID = COMInterface[`FullName`].ID;
			auto res = cDocument.iDispatch.Invoke(cast(int)ID, &iidNULL, 0, DISPATCH_PROPERTYGET, &params, cast(VARIANT*)RT, &exception, &argErr);
			assert(res == S_OK, `Could not invoke COM Function cDocument.FullName. Error `~to!string(res, 16));
			return cast(wchar*)(RT.bstrVal);
		
		};
		

		// extern (Windows) double()
		Height = cast(typeof(this.Height)) () 
		{
		 
			EXCEPINFO exception;
			uint argErr = 0;
			auto iidNULL = IID_NULL;
			auto RT = new SafeVariantPtr();
			DISPPARAMS params = {rgvarg: null, cArgs: 0, cNamedArgs: 0};
			auto ID = COMInterface[`Height`].ID;
			auto res = cDocument.iDispatch.Invoke(cast(int)ID, &iidNULL, 0, DISPATCH_PROPERTYGET, &params, cast(VARIANT*)RT, &exception, &argErr);
			assert(res == S_OK, `Could not invoke COM Function cDocument.Height. Error `~to!string(res, 16));
			return cast(double)(RT.dblVal);
		
		};
		

		// extern (Windows) bool()
		Managed = cast(typeof(this.Managed)) () 
		{
		 
			EXCEPINFO exception;
			uint argErr = 0;
			auto iidNULL = IID_NULL;
			auto RT = new SafeVariantPtr();
			DISPPARAMS params = {rgvarg: null, cArgs: 0, cNamedArgs: 0};
			auto ID = COMInterface[`Managed`].ID;
			auto res = cDocument.iDispatch.Invoke(cast(int)ID, &iidNULL, 0, DISPATCH_PROPERTYGET, &params, cast(VARIANT*)RT, &exception, &argErr);
			assert(res == S_OK, `Could not invoke COM Function cDocument.Managed. Error `~to!string(res, 16));
			return cast(bool)(RT.intVal);
		
		};
		

		// extern (Windows) bool()
		Saved = cast(typeof(this.Saved)) () 
		{
		 
			EXCEPINFO exception;
			uint argErr = 0;
			auto iidNULL = IID_NULL;
			auto RT = new SafeVariantPtr();
			DISPPARAMS params = {rgvarg: null, cArgs: 0, cNamedArgs: 0};
			auto ID = COMInterface[`Saved`].ID;
			auto res = cDocument.iDispatch.Invoke(cast(int)ID, &iidNULL, 0, DISPATCH_PROPERTYGET, &params, cast(VARIANT*)RT, &exception, &argErr);
			assert(res == S_OK, `Could not invoke COM Function cDocument.Saved. Error `~to!string(res, 16));
			return cast(bool)(RT.intVal);
		
		};
		

		// extern (Windows) wchar*()
		Name = cast(typeof(this.Name)) () 
		{
		 
			EXCEPINFO exception;
			uint argErr = 0;
			auto iidNULL = IID_NULL;
			auto RT = new SafeVariantPtr();
			DISPPARAMS params = {rgvarg: null, cArgs: 0, cNamedArgs: 0};
			auto ID = COMInterface[`Name`].ID;
			auto res = cDocument.iDispatch.Invoke(cast(int)ID, &iidNULL, 0, DISPATCH_PROPERTYGET, &params, cast(VARIANT*)RT, &exception, &argErr);
			assert(res == S_OK, `Could not invoke COM Function cDocument.Name. Error `~to!string(res, 16));
			return cast(wchar*)(RT.bstrVal);
		
		};
		

		// extern (Windows) wchar*()
		Path = cast(typeof(this.Path)) () 
		{
		 
			EXCEPINFO exception;
			uint argErr = 0;
			auto iidNULL = IID_NULL;
			auto RT = new SafeVariantPtr();
			DISPPARAMS params = {rgvarg: null, cArgs: 0, cNamedArgs: 0};
			auto ID = COMInterface[`Path`].ID;
			auto res = cDocument.iDispatch.Invoke(cast(int)ID, &iidNULL, 0, DISPATCH_PROPERTYGET, &params, cast(VARIANT*)RT, &exception, &argErr);
			assert(res == S_OK, `Could not invoke COM Function cDocument.Path. Error `~to!string(res, 16));
			return cast(wchar*)(RT.bstrVal);
		
		};
		

		// extern (Windows) bool()
		getQuickMaskMode = cast(typeof(this.getQuickMaskMode)) () 
		{
		 
			EXCEPINFO exception;
			uint argErr = 0;
			auto iidNULL = IID_NULL;
			auto RT = new SafeVariantPtr();
			DISPPARAMS params = {rgvarg: null, cArgs: 0, cNamedArgs: 0};
			auto ID = COMInterface[`QuickMaskMode`].ID;
			auto res = cDocument.iDispatch.Invoke(cast(int)ID, &iidNULL, 0, DISPATCH_PROPERTYGET, &params, cast(VARIANT*)RT, &exception, &argErr);
			assert(res == S_OK, `Could not invoke COM Function cDocument.getQuickMaskMode. Error `~to!string(res, 16));
			return cast(bool)(RT.intVal);
		
		};
		

		// extern (Windows) void(bool value)
		setQuickMaskMode = cast(typeof(this.setQuickMaskMode)) (bool value) 
		{
		 
			EXCEPINFO exception;
			uint argErr = 0;
			auto iidNULL = IID_NULL;
			auto RT = new SafeVariantPtr();
			VARIANT[1] paramVars;
			DISPPARAMS params = {rgvarg: paramVars.ptr, cArgs: 1, cNamedArgs: 0};
			auto ID = COMInterface[`QuickMaskMode`].ID;
			paramVars[0].vt = 11;
			paramVars[0].intVal = value;
			scope(exit) VariantClear(&paramVars[0]);
			auto res = cDocument.iDispatch.Invoke(cast(int)ID, &iidNULL, 0, DISPATCH_PROPERTYPUT, &params, cast(VARIANT*)RT, &exception, &argErr);
			assert(res == S_OK, `Could not invoke COM Function cDocument.setQuickMaskMode. Error `~to!string(res, 16));
		
		};
		

		// extern (Windows) double()
		Resolution = cast(typeof(this.Resolution)) () 
		{
		 
			EXCEPINFO exception;
			uint argErr = 0;
			auto iidNULL = IID_NULL;
			auto RT = new SafeVariantPtr();
			DISPPARAMS params = {rgvarg: null, cArgs: 0, cNamedArgs: 0};
			auto ID = COMInterface[`Resolution`].ID;
			auto res = cDocument.iDispatch.Invoke(cast(int)ID, &iidNULL, 0, DISPATCH_PROPERTYGET, &params, cast(VARIANT*)RT, &exception, &argErr);
			assert(res == S_OK, `Could not invoke COM Function cDocument.Resolution. Error `~to!string(res, 16));
			return cast(double)(RT.dblVal);
		
		};
		

		// extern (Windows) iSelection()
		Selection = cast(typeof(this.Selection)) () 
		{
		 	auto key = `Document.Selection`;
		
			EXCEPINFO exception;
			uint argErr = 0;
			auto iidNULL = IID_NULL;
			auto RT = new SafeVariantPtr();
			DISPPARAMS params = {rgvarg: null, cArgs: 0, cNamedArgs: 0};
			auto ID = COMInterface[`Selection`].ID;
			auto res = cDocument.iDispatch.Invoke(cast(int)ID, &iidNULL, 0, DISPATCH_PROPERTYGET, &params, cast(VARIANT*)RT, &exception, &argErr);
			assert(res == S_OK, `Could not invoke COM Function cDocument.Selection. Error `~to!string(res, 16));
			return cast(iSelection)(RT.punkVal);
		
		};
		

		// extern (Windows) double()
		Width = cast(typeof(this.Width)) () 
		{
		 
			EXCEPINFO exception;
			uint argErr = 0;
			auto iidNULL = IID_NULL;
			auto RT = new SafeVariantPtr();
			DISPPARAMS params = {rgvarg: null, cArgs: 0, cNamedArgs: 0};
			auto ID = COMInterface[`Width`].ID;
			auto res = cDocument.iDispatch.Invoke(cast(int)ID, &iidNULL, 0, DISPATCH_PROPERTYGET, &params, cast(VARIANT*)RT, &exception, &argErr);
			assert(res == S_OK, `Could not invoke COM Function cDocument.Width. Error `~to!string(res, 16));
			return cast(double)(RT.dblVal);
		
		};
		

		// extern (Windows) VARIANT()
		Histogram = cast(typeof(this.Histogram)) () 
		{
		 
			EXCEPINFO exception;
			uint argErr = 0;
			auto iidNULL = IID_NULL;
			auto RT = new SafeVariantPtr();
			DISPPARAMS params = {rgvarg: null, cArgs: 0, cNamedArgs: 0};
			auto ID = COMInterface[`Histogram`].ID;
			auto res = cDocument.iDispatch.Invoke(cast(int)ID, &iidNULL, 0, DISPATCH_PROPERTYGET, &params, cast(VARIANT*)RT, &exception, &argErr);
			assert(res == S_OK, `Could not invoke COM Function cDocument.Histogram. Error `~to!string(res, 16));
			return RT;
		
		};
		

		// extern (Windows) double()
		getPixelAspectRatio = cast(typeof(this.getPixelAspectRatio)) () 
		{
		 
			EXCEPINFO exception;
			uint argErr = 0;
			auto iidNULL = IID_NULL;
			auto RT = new SafeVariantPtr();
			DISPPARAMS params = {rgvarg: null, cArgs: 0, cNamedArgs: 0};
			auto ID = COMInterface[`PixelAspectRatio`].ID;
			auto res = cDocument.iDispatch.Invoke(cast(int)ID, &iidNULL, 0, DISPATCH_PROPERTYGET, &params, cast(VARIANT*)RT, &exception, &argErr);
			assert(res == S_OK, `Could not invoke COM Function cDocument.getPixelAspectRatio. Error `~to!string(res, 16));
			return cast(double)(RT.dblVal);
		
		};
		

		// extern (Windows) void(double value)
		setPixelAspectRatio = cast(typeof(this.setPixelAspectRatio)) (double value) 
		{
		 
			EXCEPINFO exception;
			uint argErr = 0;
			auto iidNULL = IID_NULL;
			auto RT = new SafeVariantPtr();
			VARIANT[1] paramVars;
			DISPPARAMS params = {rgvarg: paramVars.ptr, cArgs: 1, cNamedArgs: 0};
			auto ID = COMInterface[`PixelAspectRatio`].ID;
			paramVars[0].vt = 5;
			paramVars[0].dblVal = value;
			scope(exit) VariantClear(&paramVars[0]);
			auto res = cDocument.iDispatch.Invoke(cast(int)ID, &iidNULL, 0, DISPATCH_PROPERTYPUT, &params, cast(VARIANT*)RT, &exception, &argErr);
			assert(res == S_OK, `Could not invoke COM Function cDocument.setPixelAspectRatio. Error `~to!string(res, 16));
		
		};
		

		// extern (Windows) iXMPMetadata()
		XMPMetadata = cast(typeof(this.XMPMetadata)) () 
		{
		 	auto key = `Document.XMPMetadata`;
		
			EXCEPINFO exception;
			uint argErr = 0;
			auto iidNULL = IID_NULL;
			auto RT = new SafeVariantPtr();
			DISPPARAMS params = {rgvarg: null, cArgs: 0, cNamedArgs: 0};
			auto ID = COMInterface[`XMPMetadata`].ID;
			auto res = cDocument.iDispatch.Invoke(cast(int)ID, &iidNULL, 0, DISPATCH_PROPERTYGET, &params, cast(VARIANT*)RT, &exception, &argErr);
			assert(res == S_OK, `Could not invoke COM Function cDocument.XMPMetadata. Error `~to!string(res, 16));
			return cast(iXMPMetadata)(RT.punkVal);
		
		};
		

		// extern (Windows) iMeasurementScale()
		MeasurementScale = cast(typeof(this.MeasurementScale)) () 
		{
		 	auto key = `Document.MeasurementScale`;
		
			EXCEPINFO exception;
			uint argErr = 0;
			auto iidNULL = IID_NULL;
			auto RT = new SafeVariantPtr();
			DISPPARAMS params = {rgvarg: null, cArgs: 0, cNamedArgs: 0};
			auto ID = COMInterface[`MeasurementScale`].ID;
			auto res = cDocument.iDispatch.Invoke(cast(int)ID, &iidNULL, 0, DISPATCH_PROPERTYGET, &params, cast(VARIANT*)RT, &exception, &argErr);
			assert(res == S_OK, `Could not invoke COM Function cDocument.MeasurementScale. Error `~to!string(res, 16));
			return cast(iMeasurementScale)(RT.punkVal);
		
		};
		

		// extern (Windows) int()
		id = cast(typeof(this.id)) () 
		{
		 
			EXCEPINFO exception;
			uint argErr = 0;
			auto iidNULL = IID_NULL;
			auto RT = new SafeVariantPtr();
			DISPPARAMS params = {rgvarg: null, cArgs: 0, cNamedArgs: 0};
			auto ID = COMInterface[`id`].ID;
			auto res = cDocument.iDispatch.Invoke(cast(int)ID, &iidNULL, 0, DISPATCH_PROPERTYGET, &params, cast(VARIANT*)RT, &exception, &argErr);
			assert(res == S_OK, `Could not invoke COM Function cDocument.id. Error `~to!string(res, 16));
			return cast(int)(RT.lVal);
		
		};
		

		// extern (Windows) iLayers()
		Layers = cast(typeof(this.Layers)) () 
		{
		 	auto key = `Document.Layers`;
		
			EXCEPINFO exception;
			uint argErr = 0;
			auto iidNULL = IID_NULL;
			auto RT = new SafeVariantPtr();
			DISPPARAMS params = {rgvarg: null, cArgs: 0, cNamedArgs: 0};
			auto ID = COMInterface[`Layers`].ID;
			auto res = cDocument.iDispatch.Invoke(cast(int)ID, &iidNULL, 0, DISPATCH_PROPERTYGET, &params, cast(VARIANT*)RT, &exception, &argErr);
			assert(res == S_OK, `Could not invoke COM Function cDocument.Layers. Error `~to!string(res, 16));
			return cast(iLayers)(RT.punkVal);
		
		};
		

		// extern (Windows) iLayerSets()
		LayerSets = cast(typeof(this.LayerSets)) () 
		{
		 	auto key = `Document.LayerSets`;
		
			EXCEPINFO exception;
			uint argErr = 0;
			auto iidNULL = IID_NULL;
			auto RT = new SafeVariantPtr();
			DISPPARAMS params = {rgvarg: null, cArgs: 0, cNamedArgs: 0};
			auto ID = COMInterface[`LayerSets`].ID;
			auto res = cDocument.iDispatch.Invoke(cast(int)ID, &iidNULL, 0, DISPATCH_PROPERTYGET, &params, cast(VARIANT*)RT, &exception, &argErr);
			assert(res == S_OK, `Could not invoke COM Function cDocument.LayerSets. Error `~to!string(res, 16));
			return cast(iLayerSets)(RT.punkVal);
		
		};
		

		// extern (Windows) iArtLayers()
		ArtLayers = cast(typeof(this.ArtLayers)) () 
		{
		 	auto key = `Document.ArtLayers`;
		
			EXCEPINFO exception;
			uint argErr = 0;
			auto iidNULL = IID_NULL;
			auto RT = new SafeVariantPtr();
			DISPPARAMS params = {rgvarg: null, cArgs: 0, cNamedArgs: 0};
			auto ID = COMInterface[`ArtLayers`].ID;
			auto res = cDocument.iDispatch.Invoke(cast(int)ID, &iidNULL, 0, DISPATCH_PROPERTYGET, &params, cast(VARIANT*)RT, &exception, &argErr);
			assert(res == S_OK, `Could not invoke COM Function cDocument.ArtLayers. Error `~to!string(res, 16));
			return cast(iArtLayers)(RT.punkVal);
		
		};
		

		// extern (Windows) iChannels()
		Channels = cast(typeof(this.Channels)) () 
		{
		 	auto key = `Document.Channels`;
		
			EXCEPINFO exception;
			uint argErr = 0;
			auto iidNULL = IID_NULL;
			auto RT = new SafeVariantPtr();
			DISPPARAMS params = {rgvarg: null, cArgs: 0, cNamedArgs: 0};
			auto ID = COMInterface[`Channels`].ID;
			auto res = cDocument.iDispatch.Invoke(cast(int)ID, &iidNULL, 0, DISPATCH_PROPERTYGET, &params, cast(VARIANT*)RT, &exception, &argErr);
			assert(res == S_OK, `Could not invoke COM Function cDocument.Channels. Error `~to!string(res, 16));
			return cast(iChannels)(RT.punkVal);
		
		};
		

		// extern (Windows) iHistoryStates()
		HistoryStates = cast(typeof(this.HistoryStates)) () 
		{
		 	auto key = `Document.HistoryStates`;
		
			EXCEPINFO exception;
			uint argErr = 0;
			auto iidNULL = IID_NULL;
			auto RT = new SafeVariantPtr();
			DISPPARAMS params = {rgvarg: null, cArgs: 0, cNamedArgs: 0};
			auto ID = COMInterface[`HistoryStates`].ID;
			auto res = cDocument.iDispatch.Invoke(cast(int)ID, &iidNULL, 0, DISPATCH_PROPERTYGET, &params, cast(VARIANT*)RT, &exception, &argErr);
			assert(res == S_OK, `Could not invoke COM Function cDocument.HistoryStates. Error `~to!string(res, 16));
			return cast(iHistoryStates)(RT.punkVal);
		
		};
		

		// extern (Windows) iLayerComps()
		LayerComps = cast(typeof(this.LayerComps)) () 
		{
		 	auto key = `Document.LayerComps`;
		
			EXCEPINFO exception;
			uint argErr = 0;
			auto iidNULL = IID_NULL;
			auto RT = new SafeVariantPtr();
			DISPPARAMS params = {rgvarg: null, cArgs: 0, cNamedArgs: 0};
			auto ID = COMInterface[`LayerComps`].ID;
			auto res = cDocument.iDispatch.Invoke(cast(int)ID, &iidNULL, 0, DISPATCH_PROPERTYGET, &params, cast(VARIANT*)RT, &exception, &argErr);
			assert(res == S_OK, `Could not invoke COM Function cDocument.LayerComps. Error `~to!string(res, 16));
			return cast(iLayerComps)(RT.punkVal);
		
		};
		

		// extern (Windows) iPathItems()
		PathItems = cast(typeof(this.PathItems)) () 
		{
		 	auto key = `Document.PathItems`;
		
			EXCEPINFO exception;
			uint argErr = 0;
			auto iidNULL = IID_NULL;
			auto RT = new SafeVariantPtr();
			DISPPARAMS params = {rgvarg: null, cArgs: 0, cNamedArgs: 0};
			auto ID = COMInterface[`PathItems`].ID;
			auto res = cDocument.iDispatch.Invoke(cast(int)ID, &iidNULL, 0, DISPATCH_PROPERTYGET, &params, cast(VARIANT*)RT, &exception, &argErr);
			assert(res == S_OK, `Could not invoke COM Function cDocument.PathItems. Error `~to!string(res, 16));
			return cast(iPathItems)(RT.punkVal);
		
		};
		

		// extern (Windows) iCountItems()
		CountItems = cast(typeof(this.CountItems)) () 
		{
		 	auto key = `Document.CountItems`;
		
			EXCEPINFO exception;
			uint argErr = 0;
			auto iidNULL = IID_NULL;
			auto RT = new SafeVariantPtr();
			DISPPARAMS params = {rgvarg: null, cArgs: 0, cNamedArgs: 0};
			auto ID = COMInterface[`CountItems`].ID;
			auto res = cDocument.iDispatch.Invoke(cast(int)ID, &iidNULL, 0, DISPATCH_PROPERTYGET, &params, cast(VARIANT*)RT, &exception, &argErr);
			assert(res == S_OK, `Could not invoke COM Function cDocument.CountItems. Error `~to!string(res, 16));
			return cast(iCountItems)(RT.punkVal);
		
		};
		

		// extern (Windows) iColorSamplers()
		ColorSamplers = cast(typeof(this.ColorSamplers)) () 
		{
		 	auto key = `Document.ColorSamplers`;
		
			EXCEPINFO exception;
			uint argErr = 0;
			auto iidNULL = IID_NULL;
			auto RT = new SafeVariantPtr();
			DISPPARAMS params = {rgvarg: null, cArgs: 0, cNamedArgs: 0};
			auto ID = COMInterface[`ColorSamplers`].ID;
			auto res = cDocument.iDispatch.Invoke(cast(int)ID, &iidNULL, 0, DISPATCH_PROPERTYGET, &params, cast(VARIANT*)RT, &exception, &argErr);
			assert(res == S_OK, `Could not invoke COM Function cDocument.ColorSamplers. Error `~to!string(res, 16));
			return cast(iColorSamplers)(RT.punkVal);
		
		};
		

		// extern (Windows) iApplication()
		Application = cast(typeof(this.Application)) () 
		{
		 	auto key = `Document.Application`;
			if (auto v = key in cApplication.CachedInterfaces)
			{
				return cast(cApplication)*v;
			}
		
			EXCEPINFO exception;
			uint argErr = 0;
			auto iidNULL = IID_NULL;
			auto RT = new SafeVariantPtr();
			DISPPARAMS params = {rgvarg: null, cArgs: 0, cNamedArgs: 0};
			auto ID = COMInterface[`Application`].ID;
			auto res = cDocument.iDispatch.Invoke(cast(int)ID, &iidNULL, 0, DISPATCH_PROPERTYGET, &params, cast(VARIANT*)RT, &exception, &argErr);
			assert(res == S_OK, `Could not invoke COM Function cDocument.Application. Error `~to!string(res, 16));
			if (cApplication.Cache)
			{
				if (auto v = key in cApplication.CachedInterfaces)
				{
					(cast(cApplication)v).iDispatch = cast(IDispatch)RT.punkVal;
					return cast(cApplication)*v;
				}
			}
			auto _class = new cApplication(true, cast(IDispatch)(RT.punkVal), this.iDispatch);
			cApplication.CachedInterfaces[key] = _class;
			return _class;
		
		};
		

		// extern (Windows) IDispatch()
		Parent = cast(typeof(this.Parent)) () 
		{
		 	auto key = `Document.Dispatch`;
		
			EXCEPINFO exception;
			uint argErr = 0;
			auto iidNULL = IID_NULL;
			auto RT = new SafeVariantPtr();
			DISPPARAMS params = {rgvarg: null, cArgs: 0, cNamedArgs: 0};
			auto ID = COMInterface[`Parent`].ID;
			auto res = cDocument.iDispatch.Invoke(cast(int)ID, &iidNULL, 0, DISPATCH_PROPERTYGET, &params, cast(VARIANT*)RT, &exception, &argErr);
			assert(res == S_OK, `Could not invoke COM Function cDocument.Parent. Error `~to!string(res, 16));
			return cast(IDispatch)(RT.pdispVal);
		
		};
		

		// extern (Windows) void(VARIANT Saving)
		Close = cast(typeof(this.Close)) (VARIANT Saving) 
		{
		 
			EXCEPINFO exception;
			uint argErr = 0;
			auto iidNULL = IID_NULL;
			auto RT = new SafeVariantPtr();
			VARIANT[1] paramVars;
			DISPPARAMS params = {rgvarg: paramVars.ptr, cArgs: 1, cNamedArgs: 0};
			auto ID = COMInterface[`Close`].ID;
			paramVars[0] = Saving;
			auto res = cDocument.iDispatch.Invoke(cast(int)ID, &iidNULL, 0, DISPATCH_METHOD, &params, cast(VARIANT*)RT, &exception, &argErr);
			assert(res == S_OK, `Could not invoke COM Function cDocument.Close. Error `~to!string(res, 16));
		
		};
		

		// extern (Windows) void(wchar* DestinationProfile, PsIntent Intent, VARIANT BlackPointCompensation, VARIANT Dither)
		ConvertProfile = cast(typeof(this.ConvertProfile)) (wchar* DestinationProfile, PsIntent Intent, VARIANT BlackPointCompensation, VARIANT Dither) 
		{
		 
			EXCEPINFO exception;
			uint argErr = 0;
			auto iidNULL = IID_NULL;
			auto RT = new SafeVariantPtr();
			VARIANT[4] paramVars;
			DISPPARAMS params = {rgvarg: paramVars.ptr, cArgs: 4, cNamedArgs: 0};
			auto ID = COMInterface[`ConvertProfile`].ID;
			paramVars[3].vt = 8;
			paramVars[3].bstrVal = DestinationProfile;
			scope(exit) VariantClear(&paramVars[3]);
			paramVars[2].vt = 22;
			paramVars[2].intVal = Intent;
			scope(exit) VariantClear(&paramVars[2]);
			paramVars[1] = BlackPointCompensation;
			paramVars[0] = Dither;
			auto res = cDocument.iDispatch.Invoke(cast(int)ID, &iidNULL, 0, DISPATCH_METHOD, &params, cast(VARIANT*)RT, &exception, &argErr);
			assert(res == S_OK, `Could not invoke COM Function cDocument.ConvertProfile. Error `~to!string(res, 16));
		
		};
		

		// extern (Windows) void(PsChangeMode DestinationMode, VARIANT Options)
		ChangeMode = cast(typeof(this.ChangeMode)) (PsChangeMode DestinationMode, VARIANT Options) 
		{
		 
			EXCEPINFO exception;
			uint argErr = 0;
			auto iidNULL = IID_NULL;
			auto RT = new SafeVariantPtr();
			VARIANT[2] paramVars;
			DISPPARAMS params = {rgvarg: paramVars.ptr, cArgs: 2, cNamedArgs: 0};
			auto ID = COMInterface[`ChangeMode`].ID;
			paramVars[1].vt = 22;
			paramVars[1].intVal = DestinationMode;
			scope(exit) VariantClear(&paramVars[1]);
			paramVars[0] = Options;
			auto res = cDocument.iDispatch.Invoke(cast(int)ID, &iidNULL, 0, DISPATCH_METHOD, &params, cast(VARIANT*)RT, &exception, &argErr);
			assert(res == S_OK, `Could not invoke COM Function cDocument.ChangeMode. Error `~to!string(res, 16));
		
		};
		

		// extern (Windows) void(VARIANT Bounds, VARIANT Angle, VARIANT Width, VARIANT Height)
		Crop = cast(typeof(this.Crop)) (VARIANT Bounds, VARIANT Angle, VARIANT Width, VARIANT Height) 
		{
		 
			EXCEPINFO exception;
			uint argErr = 0;
			auto iidNULL = IID_NULL;
			auto RT = new SafeVariantPtr();
			VARIANT[4] paramVars;
			DISPPARAMS params = {rgvarg: paramVars.ptr, cArgs: 4, cNamedArgs: 0};
			auto ID = COMInterface[`Crop`].ID;
			paramVars[3] = Bounds;
			paramVars[2] = Angle;
			paramVars[1] = Width;
			paramVars[0] = Height;
			auto res = cDocument.iDispatch.Invoke(cast(int)ID, &iidNULL, 0, DISPATCH_METHOD, &params, cast(VARIANT*)RT, &exception, &argErr);
			assert(res == S_OK, `Could not invoke COM Function cDocument.Crop. Error `~to!string(res, 16));
		
		};
		

		// extern (Windows) void(wchar* ExportIn, VARIANT ExportAs, VARIANT Options)
		Export = cast(typeof(this.Export)) (wchar* ExportIn, VARIANT ExportAs, VARIANT Options) 
		{
		 
			EXCEPINFO exception;
			uint argErr = 0;
			auto iidNULL = IID_NULL;
			auto RT = new SafeVariantPtr();
			VARIANT[3] paramVars;
			DISPPARAMS params = {rgvarg: paramVars.ptr, cArgs: 3, cNamedArgs: 0};
			auto ID = COMInterface[`Export`].ID;
			paramVars[2].vt = 8;
			paramVars[2].bstrVal = ExportIn;
			scope(exit) VariantClear(&paramVars[2]);
			paramVars[1] = ExportAs;
			paramVars[0] = Options;
			auto res = cDocument.iDispatch.Invoke(cast(int)ID, &iidNULL, 0, DISPATCH_METHOD, &params, cast(VARIANT*)RT, &exception, &argErr);
			assert(res == S_OK, `Could not invoke COM Function cDocument.Export. Error `~to!string(res, 16));
		
		};
		

		// extern (Windows) void(PsDirection Direction)
		FlipCanvas = cast(typeof(this.FlipCanvas)) (PsDirection Direction) 
		{
		 
			EXCEPINFO exception;
			uint argErr = 0;
			auto iidNULL = IID_NULL;
			auto RT = new SafeVariantPtr();
			VARIANT[1] paramVars;
			DISPPARAMS params = {rgvarg: paramVars.ptr, cArgs: 1, cNamedArgs: 0};
			auto ID = COMInterface[`FlipCanvas`].ID;
			paramVars[0].vt = 22;
			paramVars[0].intVal = Direction;
			scope(exit) VariantClear(&paramVars[0]);
			auto res = cDocument.iDispatch.Invoke(cast(int)ID, &iidNULL, 0, DISPATCH_METHOD, &params, cast(VARIANT*)RT, &exception, &argErr);
			assert(res == S_OK, `Could not invoke COM Function cDocument.FlipCanvas. Error `~to!string(res, 16));
		
		};
		

		// extern (Windows) void(wchar* File)
		ImportAnnotations = cast(typeof(this.ImportAnnotations)) (wchar* File) 
		{
		 
			EXCEPINFO exception;
			uint argErr = 0;
			auto iidNULL = IID_NULL;
			auto RT = new SafeVariantPtr();
			VARIANT[1] paramVars;
			DISPPARAMS params = {rgvarg: paramVars.ptr, cArgs: 1, cNamedArgs: 0};
			auto ID = COMInterface[`ImportAnnotations`].ID;
			paramVars[0].vt = 8;
			paramVars[0].bstrVal = File;
			scope(exit) VariantClear(&paramVars[0]);
			auto res = cDocument.iDispatch.Invoke(cast(int)ID, &iidNULL, 0, DISPATCH_METHOD, &params, cast(VARIANT*)RT, &exception, &argErr);
			assert(res == S_OK, `Could not invoke COM Function cDocument.ImportAnnotations. Error `~to!string(res, 16));
		
		};
		

		// extern (Windows) void()
		Flatten = cast(typeof(this.Flatten)) () 
		{
		 
			EXCEPINFO exception;
			uint argErr = 0;
			auto iidNULL = IID_NULL;
			auto RT = new SafeVariantPtr();
			DISPPARAMS params = {rgvarg: null, cArgs: 0, cNamedArgs: 0};
			auto ID = COMInterface[`Flatten`].ID;
			auto res = cDocument.iDispatch.Invoke(cast(int)ID, &iidNULL, 0, DISPATCH_PROPERTYGET, &params, cast(VARIANT*)RT, &exception, &argErr);
			assert(res == S_OK, `Could not invoke COM Function cDocument.Flatten. Error `~to!string(res, 16));
		
		};
		

		// extern (Windows) void()
		MergeVisibleLayers = cast(typeof(this.MergeVisibleLayers)) () 
		{
		 
			EXCEPINFO exception;
			uint argErr = 0;
			auto iidNULL = IID_NULL;
			auto RT = new SafeVariantPtr();
			DISPPARAMS params = {rgvarg: null, cArgs: 0, cNamedArgs: 0};
			auto ID = COMInterface[`MergeVisibleLayers`].ID;
			auto res = cDocument.iDispatch.Invoke(cast(int)ID, &iidNULL, 0, DISPATCH_PROPERTYGET, &params, cast(VARIANT*)RT, &exception, &argErr);
			assert(res == S_OK, `Could not invoke COM Function cDocument.MergeVisibleLayers. Error `~to!string(res, 16));
		
		};
		

		// extern (Windows) iArtLayer(VARIANT IntoSelection)
		Paste = cast(typeof(this.Paste)) (VARIANT IntoSelection) 
		{
		 	auto key = `Document.ArtLayer`;
			if (auto v = key in cApplication.CachedInterfaces)
			{
				return cast(cArtLayer)*v;
			}
		
			EXCEPINFO exception;
			uint argErr = 0;
			auto iidNULL = IID_NULL;
			auto RT = new SafeVariantPtr();
			VARIANT[1] paramVars;
			DISPPARAMS params = {rgvarg: paramVars.ptr, cArgs: 1, cNamedArgs: 0};
			auto ID = COMInterface[`Paste`].ID;
			paramVars[0] = IntoSelection;
			auto res = cDocument.iDispatch.Invoke(cast(int)ID, &iidNULL, 0, DISPATCH_METHOD, &params, cast(VARIANT*)RT, &exception, &argErr);
			assert(res == S_OK, `Could not invoke COM Function cDocument.Paste. Error `~to!string(res, 16));
			if (cApplication.Cache)
			{
				if (auto v = key in cApplication.CachedInterfaces)
				{
					(cast(cArtLayer)v).iDispatch = cast(IDispatch)RT.punkVal;
					return cast(cArtLayer)*v;
				}
			}
			auto _class = new cArtLayer(true, cast(IDispatch)(RT.punkVal), this.iDispatch);
			cApplication.CachedInterfaces[key] = _class;
			return _class;
		
		};
		

		// extern (Windows) void(VARIANT SourceSpace, VARIANT PrintSpace, VARIANT Intent, VARIANT BlackPointCompensation)
		PrintOut = cast(typeof(this.PrintOut)) (VARIANT SourceSpace, VARIANT PrintSpace, VARIANT Intent, VARIANT BlackPointCompensation) 
		{
		 
			EXCEPINFO exception;
			uint argErr = 0;
			auto iidNULL = IID_NULL;
			auto RT = new SafeVariantPtr();
			VARIANT[4] paramVars;
			DISPPARAMS params = {rgvarg: paramVars.ptr, cArgs: 4, cNamedArgs: 0};
			auto ID = COMInterface[`PrintOut`].ID;
			paramVars[3] = SourceSpace;
			paramVars[2] = PrintSpace;
			paramVars[1] = Intent;
			paramVars[0] = BlackPointCompensation;
			auto res = cDocument.iDispatch.Invoke(cast(int)ID, &iidNULL, 0, DISPATCH_METHOD, &params, cast(VARIANT*)RT, &exception, &argErr);
			assert(res == S_OK, `Could not invoke COM Function cDocument.PrintOut. Error `~to!string(res, 16));
		
		};
		

		// extern (Windows) void()
		RevealAll = cast(typeof(this.RevealAll)) () 
		{
		 
			EXCEPINFO exception;
			uint argErr = 0;
			auto iidNULL = IID_NULL;
			auto RT = new SafeVariantPtr();
			DISPPARAMS params = {rgvarg: null, cArgs: 0, cNamedArgs: 0};
			auto ID = COMInterface[`RevealAll`].ID;
			auto res = cDocument.iDispatch.Invoke(cast(int)ID, &iidNULL, 0, DISPATCH_PROPERTYGET, &params, cast(VARIANT*)RT, &exception, &argErr);
			assert(res == S_OK, `Could not invoke COM Function cDocument.RevealAll. Error `~to!string(res, 16));
		
		};
		

		// extern (Windows) void()
		RasterizeAllLayers = cast(typeof(this.RasterizeAllLayers)) () 
		{
		 
			EXCEPINFO exception;
			uint argErr = 0;
			auto iidNULL = IID_NULL;
			auto RT = new SafeVariantPtr();
			DISPPARAMS params = {rgvarg: null, cArgs: 0, cNamedArgs: 0};
			auto ID = COMInterface[`RasterizeAllLayers`].ID;
			auto res = cDocument.iDispatch.Invoke(cast(int)ID, &iidNULL, 0, DISPATCH_PROPERTYGET, &params, cast(VARIANT*)RT, &exception, &argErr);
			assert(res == S_OK, `Could not invoke COM Function cDocument.RasterizeAllLayers. Error `~to!string(res, 16));
		
		};
		

		// extern (Windows) void(VARIANT Source, VARIANT DataPoints)
		RecordMeasurements = cast(typeof(this.RecordMeasurements)) (VARIANT Source, VARIANT DataPoints) 
		{
		 
			EXCEPINFO exception;
			uint argErr = 0;
			auto iidNULL = IID_NULL;
			auto RT = new SafeVariantPtr();
			VARIANT[2] paramVars;
			DISPPARAMS params = {rgvarg: paramVars.ptr, cArgs: 2, cNamedArgs: 0};
			auto ID = COMInterface[`RecordMeasurements`].ID;
			paramVars[1] = Source;
			paramVars[0] = DataPoints;
			auto res = cDocument.iDispatch.Invoke(cast(int)ID, &iidNULL, 0, DISPATCH_METHOD, &params, cast(VARIANT*)RT, &exception, &argErr);
			assert(res == S_OK, `Could not invoke COM Function cDocument.RecordMeasurements. Error `~to!string(res, 16));
		
		};
		

		// extern (Windows) void(double Angle)
		RotateCanvas = cast(typeof(this.RotateCanvas)) (double Angle) 
		{
		 
			EXCEPINFO exception;
			uint argErr = 0;
			auto iidNULL = IID_NULL;
			auto RT = new SafeVariantPtr();
			VARIANT[1] paramVars;
			DISPPARAMS params = {rgvarg: paramVars.ptr, cArgs: 1, cNamedArgs: 0};
			auto ID = COMInterface[`RotateCanvas`].ID;
			paramVars[0].vt = 5;
			paramVars[0].dblVal = Angle;
			scope(exit) VariantClear(&paramVars[0]);
			auto res = cDocument.iDispatch.Invoke(cast(int)ID, &iidNULL, 0, DISPATCH_METHOD, &params, cast(VARIANT*)RT, &exception, &argErr);
			assert(res == S_OK, `Could not invoke COM Function cDocument.RotateCanvas. Error `~to!string(res, 16));
		
		};
		

		// extern (Windows) void(VARIANT Width, VARIANT Height, VARIANT Anchor)
		ResizeCanvas = cast(typeof(this.ResizeCanvas)) (VARIANT Width, VARIANT Height, VARIANT Anchor) 
		{
		 
			EXCEPINFO exception;
			uint argErr = 0;
			auto iidNULL = IID_NULL;
			auto RT = new SafeVariantPtr();
			VARIANT[3] paramVars;
			DISPPARAMS params = {rgvarg: paramVars.ptr, cArgs: 3, cNamedArgs: 0};
			auto ID = COMInterface[`ResizeCanvas`].ID;
			paramVars[2] = Width;
			paramVars[1] = Height;
			paramVars[0] = Anchor;
			auto res = cDocument.iDispatch.Invoke(cast(int)ID, &iidNULL, 0, DISPATCH_METHOD, &params, cast(VARIANT*)RT, &exception, &argErr);
			assert(res == S_OK, `Could not invoke COM Function cDocument.ResizeCanvas. Error `~to!string(res, 16));
		
		};
		

		// extern (Windows) void(VARIANT Width, VARIANT Height, VARIANT Resolution, VARIANT ResampleMethod, VARIANT Amount)
		ResizeImage = cast(typeof(this.ResizeImage)) (VARIANT Width, VARIANT Height, VARIANT Resolution, VARIANT ResampleMethod, VARIANT Amount) 
		{
		 
			EXCEPINFO exception;
			uint argErr = 0;
			auto iidNULL = IID_NULL;
			auto RT = new SafeVariantPtr();
			VARIANT[5] paramVars;
			DISPPARAMS params = {rgvarg: paramVars.ptr, cArgs: 5, cNamedArgs: 0};
			auto ID = COMInterface[`ResizeImage`].ID;
			paramVars[4] = Width;
			paramVars[3] = Height;
			paramVars[2] = Resolution;
			paramVars[1] = ResampleMethod;
			paramVars[0] = Amount;
			auto res = cDocument.iDispatch.Invoke(cast(int)ID, &iidNULL, 0, DISPATCH_METHOD, &params, cast(VARIANT*)RT, &exception, &argErr);
			assert(res == S_OK, `Could not invoke COM Function cDocument.ResizeImage. Error `~to!string(res, 16));
		
		};
		

		// extern (Windows) VARIANT()
		SplitChannels = cast(typeof(this.SplitChannels)) () 
		{
		 
			EXCEPINFO exception;
			uint argErr = 0;
			auto iidNULL = IID_NULL;
			auto RT = new SafeVariantPtr();
			DISPPARAMS params = {rgvarg: null, cArgs: 0, cNamedArgs: 0};
			auto ID = COMInterface[`SplitChannels`].ID;
			auto res = cDocument.iDispatch.Invoke(cast(int)ID, &iidNULL, 0, DISPATCH_PROPERTYGET, &params, cast(VARIANT*)RT, &exception, &argErr);
			assert(res == S_OK, `Could not invoke COM Function cDocument.SplitChannels. Error `~to!string(res, 16));
			return RT;
		
		};
		

		// extern (Windows) void()
		Save = cast(typeof(this.Save)) () 
		{
		 
			EXCEPINFO exception;
			uint argErr = 0;
			auto iidNULL = IID_NULL;
			auto RT = new SafeVariantPtr();
			DISPPARAMS params = {rgvarg: null, cArgs: 0, cNamedArgs: 0};
			auto ID = COMInterface[`Save`].ID;
			auto res = cDocument.iDispatch.Invoke(cast(int)ID, &iidNULL, 0, DISPATCH_PROPERTYGET, &params, cast(VARIANT*)RT, &exception, &argErr);
			assert(res == S_OK, `Could not invoke COM Function cDocument.Save. Error `~to!string(res, 16));
		
		};
		

		// extern (Windows) void(wchar* SaveIn, VARIANT Options, VARIANT AsCopy, VARIANT ExtensionType)
		SaveAs = cast(typeof(this.SaveAs)) (wchar* SaveIn, VARIANT Options, VARIANT AsCopy, VARIANT ExtensionType) 
		{
		 
			EXCEPINFO exception;
			uint argErr = 0;
			auto iidNULL = IID_NULL;
			auto RT = new SafeVariantPtr();
			VARIANT[4] paramVars;
			DISPPARAMS params = {rgvarg: paramVars.ptr, cArgs: 4, cNamedArgs: 0};
			auto ID = COMInterface[`SaveAs`].ID;
			paramVars[3].vt = 8;
			paramVars[3].bstrVal = SaveIn;
			scope(exit) VariantClear(&paramVars[3]);
			paramVars[2] = Options;
			paramVars[1] = AsCopy;
			paramVars[0] = ExtensionType;
			auto res = cDocument.iDispatch.Invoke(cast(int)ID, &iidNULL, 0, DISPATCH_METHOD, &params, cast(VARIANT*)RT, &exception, &argErr);
			assert(res == S_OK, `Could not invoke COM Function cDocument.SaveAs. Error `~to!string(res, 16));
		
		};
		

		// extern (Windows) void(int Width)
		Trap = cast(typeof(this.Trap)) (int Width) 
		{
		 
			EXCEPINFO exception;
			uint argErr = 0;
			auto iidNULL = IID_NULL;
			auto RT = new SafeVariantPtr();
			VARIANT[1] paramVars;
			DISPPARAMS params = {rgvarg: paramVars.ptr, cArgs: 1, cNamedArgs: 0};
			auto ID = COMInterface[`Trap`].ID;
			paramVars[0].vt = 3;
			paramVars[0].lVal = Width;
			scope(exit) VariantClear(&paramVars[0]);
			auto res = cDocument.iDispatch.Invoke(cast(int)ID, &iidNULL, 0, DISPATCH_METHOD, &params, cast(VARIANT*)RT, &exception, &argErr);
			assert(res == S_OK, `Could not invoke COM Function cDocument.Trap. Error `~to!string(res, 16));
		
		};
		

		// extern (Windows) void(VARIANT Type, VARIANT Top, VARIANT Left, VARIANT Bottom, VARIANT Right)
		Trim = cast(typeof(this.Trim)) (VARIANT Type, VARIANT Top, VARIANT Left, VARIANT Bottom, VARIANT Right) 
		{
		 
			EXCEPINFO exception;
			uint argErr = 0;
			auto iidNULL = IID_NULL;
			auto RT = new SafeVariantPtr();
			VARIANT[5] paramVars;
			DISPPARAMS params = {rgvarg: paramVars.ptr, cArgs: 5, cNamedArgs: 0};
			auto ID = COMInterface[`Trim`].ID;
			paramVars[4] = Type;
			paramVars[3] = Top;
			paramVars[2] = Left;
			paramVars[1] = Bottom;
			paramVars[0] = Right;
			auto res = cDocument.iDispatch.Invoke(cast(int)ID, &iidNULL, 0, DISPATCH_METHOD, &params, cast(VARIANT*)RT, &exception, &argErr);
			assert(res == S_OK, `Could not invoke COM Function cDocument.Trim. Error `~to!string(res, 16));
		
		};
		

		// extern (Windows) iDocument(VARIANT Name, VARIANT MergeLayersOnly)
		Duplicate = cast(typeof(this.Duplicate)) (VARIANT Name, VARIANT MergeLayersOnly) 
		{
		 	auto key = `Document.Document`;
			if (auto v = key in cApplication.CachedInterfaces)
			{
				return cast(cDocument)*v;
			}
		
			EXCEPINFO exception;
			uint argErr = 0;
			auto iidNULL = IID_NULL;
			auto RT = new SafeVariantPtr();
			VARIANT[2] paramVars;
			DISPPARAMS params = {rgvarg: paramVars.ptr, cArgs: 2, cNamedArgs: 0};
			auto ID = COMInterface[`Duplicate`].ID;
			paramVars[1] = Name;
			paramVars[0] = MergeLayersOnly;
			auto res = cDocument.iDispatch.Invoke(cast(int)ID, &iidNULL, 0, DISPATCH_METHOD, &params, cast(VARIANT*)RT, &exception, &argErr);
			assert(res == S_OK, `Could not invoke COM Function cDocument.Duplicate. Error `~to!string(res, 16));
			if (cApplication.Cache)
			{
				if (auto v = key in cApplication.CachedInterfaces)
				{
					(cast(cDocument)v).iDispatch = cast(IDispatch)RT.punkVal;
					return cast(cDocument)*v;
				}
			}
			auto _class = new cDocument(true, cast(IDispatch)(RT.punkVal), this.iDispatch);
			cApplication.CachedInterfaces[key] = _class;
			return _class;
		
		};
		

		// extern (Windows) void(iChannel Channel, int Threshold)
		AutoCount = cast(typeof(this.AutoCount)) (iChannel Channel, int Threshold) 
		{
		 
			EXCEPINFO exception;
			uint argErr = 0;
			auto iidNULL = IID_NULL;
			auto RT = new SafeVariantPtr();
			VARIANT[2] paramVars;
			DISPPARAMS params = {rgvarg: paramVars.ptr, cArgs: 2, cNamedArgs: 0};
			auto ID = COMInterface[`AutoCount`].ID;
			paramVars[1].vt = 13;
			paramVars[1].punkVal = Channel;
			scope(exit) VariantClear(&paramVars[1]);
			paramVars[0].vt = 3;
			paramVars[0].lVal = Threshold;
			scope(exit) VariantClear(&paramVars[0]);
			auto res = cDocument.iDispatch.Invoke(cast(int)ID, &iidNULL, 0, DISPATCH_METHOD, &params, cast(VARIANT*)RT, &exception, &argErr);
			assert(res == S_OK, `Could not invoke COM Function cDocument.AutoCount. Error `~to!string(res, 16));
		
		};
		
	}
	~this(){ if (iDispatch) iDispatch.Release(); }
}

public class cArtLayer
{
	import mPhotoshopCOM, std.conv, mCOM2D, core.sys.windows.windows, core.sys.windows.com, core.sys.windows.wtypes, core.sys.windows.basetyps, core.sys.windows.unknwn, core.sys.windows.oaidl;
	public IDispatch iDispatch = null;
	public IDispatch iDispatchParent = null;
	public IDispatch iDispatchQuery = null;
	public GUID iID = IID.init;
	public GUID clsID = IID.init;
	public static bool Cache = true;
	public static bool FastCache = true;

	public double delegate() getFillOpacity;
	double FillOpacity() { return getFillOpacity(); } 
	public void delegate(double value) setFillOpacity;
	auto FillOpacity(double value) { setFillOpacity(value); }
	public bool delegate() getGrouped;
	bool Grouped() { return getGrouped(); } 
	public void delegate(bool value) setGrouped;
	auto Grouped(bool value) { setGrouped(value); }
	public bool delegate() getIsBackgroundLayer;
	bool IsBackgroundLayer() { return getIsBackgroundLayer(); } 
	public void delegate(bool value) setIsBackgroundLayer;
	auto IsBackgroundLayer(bool value) { setIsBackgroundLayer(value); }
	public bool delegate() getPixelsLocked;
	bool PixelsLocked() { return getPixelsLocked(); } 
	public void delegate(bool value) setPixelsLocked;
	auto PixelsLocked(bool value) { setPixelsLocked(value); }
	public bool delegate() getPositionLocked;
	bool PositionLocked() { return getPositionLocked(); } 
	public void delegate(bool value) setPositionLocked;
	auto PositionLocked(bool value) { setPositionLocked(value); }
	public bool delegate() getTransparentPixelsLocked;
	bool TransparentPixelsLocked() { return getTransparentPixelsLocked(); } 
	public void delegate(bool value) setTransparentPixelsLocked;
	auto TransparentPixelsLocked(bool value) { setTransparentPixelsLocked(value); }
	public PsLayerKind delegate() getKind;
	PsLayerKind Kind() { return getKind(); } 
	public void delegate(PsLayerKind value) setKind;
	auto Kind(PsLayerKind value) { setKind(value); }
	public cTextItem delegate() TextItem;
	public IDispatch delegate() Layer;
	public wchar* delegate() getName;
	wchar* Name() { return getName(); } 
	public void delegate(wchar* value) setName;
	auto Name(wchar* value) { setName(value); }
	public bool delegate() getAllLocked;
	bool AllLocked() { return getAllLocked(); } 
	public void delegate(bool value) setAllLocked;
	auto AllLocked(bool value) { setAllLocked(value); }
	public PsBlendMode delegate() getBlendMode;
	PsBlendMode BlendMode() { return getBlendMode(); } 
	public void delegate(PsBlendMode value) setBlendMode;
	auto BlendMode(PsBlendMode value) { setBlendMode(value); }
	public SafeVariantPtr delegate() LinkedLayers;
	public double delegate() getOpacity;
	double Opacity() { return getOpacity(); } 
	public void delegate(double value) setOpacity;
	auto Opacity(double value) { setOpacity(value); }
	public bool delegate() getVisible;
	bool Visible() { return getVisible(); } 
	public void delegate(bool value) setVisible;
	auto Visible(bool value) { setVisible(value); }
	public int delegate() id;
	public int delegate() ItemIndex;
	public PsLayerType delegate() LayerType;
	public cArtLayer delegate() ArtLayer;
	public cLayerSet delegate() LayerSet;
	public SafeVariantPtr delegate() Bounds;
	public cApplication delegate() Application;
	public IDispatch delegate() Parent;
	public void delegate(wchar* StyleName) ApplyStyle;
	public void delegate() Clear;
	public void delegate(VARIANT Merge) Copy;
	public void delegate() Cut;
	public cArtLayer delegate() Merge;
	public void delegate(PsRasterizeType Tar) Rasterize;
	public void delegate() ApplyAverage;
	public void delegate(double Radius) ApplyGaussianBlur;
	public void delegate(VARIANT Source, VARIANT FocalDistance, VARIANT InvertDepthMap, VARIANT Shape, VARIANT Radius, VARIANT BladeCurvature, VARIANT Rotation, VARIANT Brightness, VARIANT Threshold, VARIANT Amount, VARIANT Distribution, VARIANT Monochromatic) ApplyLensBlur;
	public void delegate() ApplyBlur;
	public void delegate() ApplyBlurMore;
	public void delegate(int Angle, double Radius) ApplyMotionBlur;
	public void delegate(int Amount, PsRadialBlurMethod BlurMethod, PsRadialBlurQuality BlurQuality, VARIANT BlurCenter) ApplyRadialBlur;
	public void delegate(double Radius, double Threshold, PsSmartBlurQuality BlurQuality, PsSmartBlurMode Mode) ApplySmartBlur;
	public void delegate(int Graininess, int GlowAmount, int ClearAmount) ApplyDiffuseGlow;
	public void delegate(int HorizontalScale, int VerticalScale, PsDisplacementMapType DisplacementType, PsUndefinedAreas UndefinedAreas, wchar* DisplacementMapFile) ApplyDisplace;
	public void delegate(int Distortion, int Smoothness, int Scaling, VARIANT Invert, VARIANT Texture, VARIANT TextureFile) ApplyGlassEffect;
	public void delegate(int Size, int Magnitude) ApplyOceanRipple;
	public void delegate(int Amount) ApplyPinch;
	public void delegate(PsPolarConversionType Conversion) ApplyPolarCoordinates;
	public void delegate(int Amount, PsRippleSize Size) ApplyRipple;
	public void delegate(VARIANT Curve, PsUndefinedAreas UndefinedAreas) ApplyShear;
	public void delegate(int Amount, PsSpherizeMode Mode) ApplySpherize;
	public void delegate(int Angle) ApplyTwirl;
	public void delegate(int GeneratorNumber, int MinimumWavelength, int MaximumWavelength, int MinimumAmplitude, int MaximumAmplitude, int HorizontalScale, int VerticalScale, PsWaveType WaveType, PsUndefinedAreas UndefinedAreas, int RandomSeed) ApplyWave;
	public void delegate(int Amount, int Ridges, PsZigZagType Style) ApplyZigZag;
	public void delegate(double Amount, PsNoiseDistribution Distribution, bool Monochromatic) ApplyAddNoise;
	public void delegate() ApplyDespeckle;
	public void delegate(int Radius, int Threshold) ApplyDustAndScratches;
	public void delegate(double Radius) ApplyMedianNoise;
	public void delegate() ApplyClouds;
	public void delegate() ApplyDifferenceClouds;
	public void delegate(int Brightness, VARIANT FlareCenter, PsLensType LensType) ApplyLensFlare;
	public void delegate(wchar* TextureFile) ApplyTextureFill;
	public void delegate() ApplySharpen;
	public void delegate() ApplySharpenEdges;
	public void delegate() ApplySharpenMore;
	public void delegate(double Amount, double Radius, int Threshold) ApplyUnSharpMask;
	public void delegate(PsEliminateFields EliminateFields, PsCreateFields CreateFields) ApplyDeInterlace;
	public void delegate() ApplyNTSC;
	public void delegate(VARIANT Characteristics, int Scale, int Offset) ApplyCustomFilter;
	public void delegate(double Radius) ApplyHighPass;
	public void delegate(double Radius) ApplyMaximum;
	public void delegate(double Radius) ApplyMinimum;
	public void delegate(double Horizontal, double Vertical, PsOffsetUndefinedAreas UndefinedAreas) ApplyOffset;
	public void delegate(int InRangeStart, int InRangeEnd, double InRangeGamma, int OutRangeStart, int OutRangeEnd) AdjustLevels;
	public void delegate() AutoLevels;
	public void delegate() AutoContrast;
	public void delegate(VARIANT CurveShape) AdjustCurves;
	public void delegate(int Brightness, int Contrast) AdjustBrightnessContrast;
	public void delegate(VARIANT Shadows, VARIANT Midtones, VARIANT Highlights, VARIANT PreserveLuminosity) AdjustColorBalance;
	public void delegate() Desaturate;
	public void delegate(PsAdjustmentReference SelectionMethod, VARIANT Reds, VARIANT Yellows, VARIANT Greens, VARIANT Cyans, VARIANT Blues, VARIANT Magentas, VARIANT Whites, VARIANT Neutrals, VARIANT Blacks) SelectiveColor;
	public void delegate(VARIANT OutChannels, VARIANT Monochrome) MixChannels;
	public void delegate() Invert;
	public void delegate() Equalize;
	public void delegate(int Level) Threshold;
	public void delegate(int Levels) Posterize;
	public void delegate(VARIANT FillColor, VARIANT Density, VARIANT PreserveLuminosity) PhotoFilter;
	public void delegate(VARIANT ShadowAmount, VARIANT ShadowWidth, VARIANT ShadowRaduis, VARIANT HighlightAmount, VARIANT HighlightWidth, VARIANT HighlightRaduis, VARIANT ColorCorrection, VARIANT MidtoneContrast, VARIANT BlackClip, VARIANT WhiteClip) ShadowHighlight;
	public void delegate() Unlink;
	public void delegate(IDispatch With) Link;
	public void delegate(VARIANT DeltaX, VARIANT DeltaY) Translate;
	public void delegate(double Angle, VARIANT Anchor) Rotate;
	public void delegate(VARIANT Horizontal, VARIANT Vertical, VARIANT Anchor) Resize;
	public void delegate(IDispatch Container) MoveToBeginning;
	public void delegate(IDispatch Container) MoveToEnd;
	public void delegate(IDispatch RelativeObject) MoveBefore;
	public void delegate(IDispatch RelativeObject) MoveAfter;
	public IDispatch delegate(VARIANT RelativeObject, VARIANT InsertionLocation) Duplicate;
	public void delegate(IDispatch RelativeObject, PsElementPlacement InsertionLocation) Move;
	public void delegate() Delete;

	// iArtLayer
	public this(bool _query = false, IDispatch _Query = null, IDispatch _Parent = null)
	{

		iDispatchQuery = _Query;
		iDispatchParent = _Parent;
		auto COMInterface = GetDynamicCOMInterface!(mPhotoshopCOM.iArtLayer, void, cArtLayer)(this, null, _query);

		// extern (Windows) double()
		getFillOpacity = cast(typeof(this.getFillOpacity)) () 
		{
		 
			EXCEPINFO exception;
			uint argErr = 0;
			auto iidNULL = IID_NULL;
			auto RT = new SafeVariantPtr();
			DISPPARAMS params = {rgvarg: null, cArgs: 0, cNamedArgs: 0};
			auto ID = COMInterface[`FillOpacity`].ID;
			auto res = cArtLayer.iDispatch.Invoke(cast(int)ID, &iidNULL, 0, DISPATCH_PROPERTYGET, &params, cast(VARIANT*)RT, &exception, &argErr);
			assert(res == S_OK, `Could not invoke COM Function cArtLayer.getFillOpacity. Error `~to!string(res, 16));
			return cast(double)(RT.dblVal);
		
		};
		

		// extern (Windows) void(double value)
		setFillOpacity = cast(typeof(this.setFillOpacity)) (double value) 
		{
		 
			EXCEPINFO exception;
			uint argErr = 0;
			auto iidNULL = IID_NULL;
			auto RT = new SafeVariantPtr();
			VARIANT[1] paramVars;
			DISPPARAMS params = {rgvarg: paramVars.ptr, cArgs: 1, cNamedArgs: 0};
			auto ID = COMInterface[`FillOpacity`].ID;
			paramVars[0].vt = 5;
			paramVars[0].dblVal = value;
			scope(exit) VariantClear(&paramVars[0]);
			auto res = cArtLayer.iDispatch.Invoke(cast(int)ID, &iidNULL, 0, DISPATCH_PROPERTYPUT, &params, cast(VARIANT*)RT, &exception, &argErr);
			assert(res == S_OK, `Could not invoke COM Function cArtLayer.setFillOpacity. Error `~to!string(res, 16));
		
		};
		

		// extern (Windows) bool()
		getGrouped = cast(typeof(this.getGrouped)) () 
		{
		 
			EXCEPINFO exception;
			uint argErr = 0;
			auto iidNULL = IID_NULL;
			auto RT = new SafeVariantPtr();
			DISPPARAMS params = {rgvarg: null, cArgs: 0, cNamedArgs: 0};
			auto ID = COMInterface[`Grouped`].ID;
			auto res = cArtLayer.iDispatch.Invoke(cast(int)ID, &iidNULL, 0, DISPATCH_PROPERTYGET, &params, cast(VARIANT*)RT, &exception, &argErr);
			assert(res == S_OK, `Could not invoke COM Function cArtLayer.getGrouped. Error `~to!string(res, 16));
			return cast(bool)(RT.intVal);
		
		};
		

		// extern (Windows) void(bool value)
		setGrouped = cast(typeof(this.setGrouped)) (bool value) 
		{
		 
			EXCEPINFO exception;
			uint argErr = 0;
			auto iidNULL = IID_NULL;
			auto RT = new SafeVariantPtr();
			VARIANT[1] paramVars;
			DISPPARAMS params = {rgvarg: paramVars.ptr, cArgs: 1, cNamedArgs: 0};
			auto ID = COMInterface[`Grouped`].ID;
			paramVars[0].vt = 11;
			paramVars[0].intVal = value;
			scope(exit) VariantClear(&paramVars[0]);
			auto res = cArtLayer.iDispatch.Invoke(cast(int)ID, &iidNULL, 0, DISPATCH_PROPERTYPUT, &params, cast(VARIANT*)RT, &exception, &argErr);
			assert(res == S_OK, `Could not invoke COM Function cArtLayer.setGrouped. Error `~to!string(res, 16));
		
		};
		

		// extern (Windows) bool()
		getIsBackgroundLayer = cast(typeof(this.getIsBackgroundLayer)) () 
		{
		 
			EXCEPINFO exception;
			uint argErr = 0;
			auto iidNULL = IID_NULL;
			auto RT = new SafeVariantPtr();
			DISPPARAMS params = {rgvarg: null, cArgs: 0, cNamedArgs: 0};
			auto ID = COMInterface[`IsBackgroundLayer`].ID;
			auto res = cArtLayer.iDispatch.Invoke(cast(int)ID, &iidNULL, 0, DISPATCH_PROPERTYGET, &params, cast(VARIANT*)RT, &exception, &argErr);
			assert(res == S_OK, `Could not invoke COM Function cArtLayer.getIsBackgroundLayer. Error `~to!string(res, 16));
			return cast(bool)(RT.intVal);
		
		};
		

		// extern (Windows) void(bool value)
		setIsBackgroundLayer = cast(typeof(this.setIsBackgroundLayer)) (bool value) 
		{
		 
			EXCEPINFO exception;
			uint argErr = 0;
			auto iidNULL = IID_NULL;
			auto RT = new SafeVariantPtr();
			VARIANT[1] paramVars;
			DISPPARAMS params = {rgvarg: paramVars.ptr, cArgs: 1, cNamedArgs: 0};
			auto ID = COMInterface[`IsBackgroundLayer`].ID;
			paramVars[0].vt = 11;
			paramVars[0].intVal = value;
			scope(exit) VariantClear(&paramVars[0]);
			auto res = cArtLayer.iDispatch.Invoke(cast(int)ID, &iidNULL, 0, DISPATCH_PROPERTYPUT, &params, cast(VARIANT*)RT, &exception, &argErr);
			assert(res == S_OK, `Could not invoke COM Function cArtLayer.setIsBackgroundLayer. Error `~to!string(res, 16));
		
		};
		

		// extern (Windows) bool()
		getPixelsLocked = cast(typeof(this.getPixelsLocked)) () 
		{
		 
			EXCEPINFO exception;
			uint argErr = 0;
			auto iidNULL = IID_NULL;
			auto RT = new SafeVariantPtr();
			DISPPARAMS params = {rgvarg: null, cArgs: 0, cNamedArgs: 0};
			auto ID = COMInterface[`PixelsLocked`].ID;
			auto res = cArtLayer.iDispatch.Invoke(cast(int)ID, &iidNULL, 0, DISPATCH_PROPERTYGET, &params, cast(VARIANT*)RT, &exception, &argErr);
			assert(res == S_OK, `Could not invoke COM Function cArtLayer.getPixelsLocked. Error `~to!string(res, 16));
			return cast(bool)(RT.intVal);
		
		};
		

		// extern (Windows) void(bool value)
		setPixelsLocked = cast(typeof(this.setPixelsLocked)) (bool value) 
		{
		 
			EXCEPINFO exception;
			uint argErr = 0;
			auto iidNULL = IID_NULL;
			auto RT = new SafeVariantPtr();
			VARIANT[1] paramVars;
			DISPPARAMS params = {rgvarg: paramVars.ptr, cArgs: 1, cNamedArgs: 0};
			auto ID = COMInterface[`PixelsLocked`].ID;
			paramVars[0].vt = 11;
			paramVars[0].intVal = value;
			scope(exit) VariantClear(&paramVars[0]);
			auto res = cArtLayer.iDispatch.Invoke(cast(int)ID, &iidNULL, 0, DISPATCH_PROPERTYPUT, &params, cast(VARIANT*)RT, &exception, &argErr);
			assert(res == S_OK, `Could not invoke COM Function cArtLayer.setPixelsLocked. Error `~to!string(res, 16));
		
		};
		

		// extern (Windows) bool()
		getPositionLocked = cast(typeof(this.getPositionLocked)) () 
		{
		 
			EXCEPINFO exception;
			uint argErr = 0;
			auto iidNULL = IID_NULL;
			auto RT = new SafeVariantPtr();
			DISPPARAMS params = {rgvarg: null, cArgs: 0, cNamedArgs: 0};
			auto ID = COMInterface[`PositionLocked`].ID;
			auto res = cArtLayer.iDispatch.Invoke(cast(int)ID, &iidNULL, 0, DISPATCH_PROPERTYGET, &params, cast(VARIANT*)RT, &exception, &argErr);
			assert(res == S_OK, `Could not invoke COM Function cArtLayer.getPositionLocked. Error `~to!string(res, 16));
			return cast(bool)(RT.intVal);
		
		};
		

		// extern (Windows) void(bool value)
		setPositionLocked = cast(typeof(this.setPositionLocked)) (bool value) 
		{
		 
			EXCEPINFO exception;
			uint argErr = 0;
			auto iidNULL = IID_NULL;
			auto RT = new SafeVariantPtr();
			VARIANT[1] paramVars;
			DISPPARAMS params = {rgvarg: paramVars.ptr, cArgs: 1, cNamedArgs: 0};
			auto ID = COMInterface[`PositionLocked`].ID;
			paramVars[0].vt = 11;
			paramVars[0].intVal = value;
			scope(exit) VariantClear(&paramVars[0]);
			auto res = cArtLayer.iDispatch.Invoke(cast(int)ID, &iidNULL, 0, DISPATCH_PROPERTYPUT, &params, cast(VARIANT*)RT, &exception, &argErr);
			assert(res == S_OK, `Could not invoke COM Function cArtLayer.setPositionLocked. Error `~to!string(res, 16));
		
		};
		

		// extern (Windows) bool()
		getTransparentPixelsLocked = cast(typeof(this.getTransparentPixelsLocked)) () 
		{
		 
			EXCEPINFO exception;
			uint argErr = 0;
			auto iidNULL = IID_NULL;
			auto RT = new SafeVariantPtr();
			DISPPARAMS params = {rgvarg: null, cArgs: 0, cNamedArgs: 0};
			auto ID = COMInterface[`TransparentPixelsLocked`].ID;
			auto res = cArtLayer.iDispatch.Invoke(cast(int)ID, &iidNULL, 0, DISPATCH_PROPERTYGET, &params, cast(VARIANT*)RT, &exception, &argErr);
			assert(res == S_OK, `Could not invoke COM Function cArtLayer.getTransparentPixelsLocked. Error `~to!string(res, 16));
			return cast(bool)(RT.intVal);
		
		};
		

		// extern (Windows) void(bool value)
		setTransparentPixelsLocked = cast(typeof(this.setTransparentPixelsLocked)) (bool value) 
		{
		 
			EXCEPINFO exception;
			uint argErr = 0;
			auto iidNULL = IID_NULL;
			auto RT = new SafeVariantPtr();
			VARIANT[1] paramVars;
			DISPPARAMS params = {rgvarg: paramVars.ptr, cArgs: 1, cNamedArgs: 0};
			auto ID = COMInterface[`TransparentPixelsLocked`].ID;
			paramVars[0].vt = 11;
			paramVars[0].intVal = value;
			scope(exit) VariantClear(&paramVars[0]);
			auto res = cArtLayer.iDispatch.Invoke(cast(int)ID, &iidNULL, 0, DISPATCH_PROPERTYPUT, &params, cast(VARIANT*)RT, &exception, &argErr);
			assert(res == S_OK, `Could not invoke COM Function cArtLayer.setTransparentPixelsLocked. Error `~to!string(res, 16));
		
		};
		

		// extern (Windows) PsLayerKind()
		getKind = cast(typeof(this.getKind)) () 
		{
		 
			EXCEPINFO exception;
			uint argErr = 0;
			auto iidNULL = IID_NULL;
			auto RT = new SafeVariantPtr();
			DISPPARAMS params = {rgvarg: null, cArgs: 0, cNamedArgs: 0};
			auto ID = COMInterface[`Kind`].ID;
			auto res = cArtLayer.iDispatch.Invoke(cast(int)ID, &iidNULL, 0, DISPATCH_PROPERTYGET, &params, cast(VARIANT*)RT, &exception, &argErr);
			assert(res == S_OK, `Could not invoke COM Function cArtLayer.getKind. Error `~to!string(res, 16));
			return cast(PsLayerKind)(RT.lVal);
		
		};
		

		// extern (Windows) void(PsLayerKind value)
		setKind = cast(typeof(this.setKind)) (PsLayerKind value) 
		{
		 
			EXCEPINFO exception;
			uint argErr = 0;
			auto iidNULL = IID_NULL;
			auto RT = new SafeVariantPtr();
			VARIANT[1] paramVars;
			DISPPARAMS params = {rgvarg: paramVars.ptr, cArgs: 1, cNamedArgs: 0};
			auto ID = COMInterface[`Kind`].ID;
			paramVars[0].vt = 22;
			paramVars[0].intVal = value;
			scope(exit) VariantClear(&paramVars[0]);
			auto res = cArtLayer.iDispatch.Invoke(cast(int)ID, &iidNULL, 0, DISPATCH_PROPERTYPUT, &params, cast(VARIANT*)RT, &exception, &argErr);
			assert(res == S_OK, `Could not invoke COM Function cArtLayer.setKind. Error `~to!string(res, 16));
		
		};
		

		// extern (Windows) iTextItem()
		TextItem = cast(typeof(this.TextItem)) () 
		{
		 	auto key = `ArtLayer.TextItem`;
			if (auto v = key in cApplication.CachedInterfaces)
			{
				return cast(cTextItem)*v;
			}
		
			EXCEPINFO exception;
			uint argErr = 0;
			auto iidNULL = IID_NULL;
			auto RT = new SafeVariantPtr();
			DISPPARAMS params = {rgvarg: null, cArgs: 0, cNamedArgs: 0};
			auto ID = COMInterface[`TextItem`].ID;
			auto res = cArtLayer.iDispatch.Invoke(cast(int)ID, &iidNULL, 0, DISPATCH_PROPERTYGET, &params, cast(VARIANT*)RT, &exception, &argErr);
			assert(res == S_OK, `Could not invoke COM Function cArtLayer.TextItem. Error `~to!string(res, 16));
			if (cApplication.Cache)
			{
				if (auto v = key in cApplication.CachedInterfaces)
				{
					(cast(cTextItem)v).iDispatch = cast(IDispatch)RT.punkVal;
					return cast(cTextItem)*v;
				}
			}
			auto _class = new cTextItem(true, cast(IDispatch)(RT.punkVal), this.iDispatch);
			cApplication.CachedInterfaces[key] = _class;
			return _class;
		
		};
		

		// extern (Windows) IDispatch()
		Layer = cast(typeof(this.Layer)) () 
		{
		 	auto key = `ArtLayer.Dispatch`;
		
			EXCEPINFO exception;
			uint argErr = 0;
			auto iidNULL = IID_NULL;
			auto RT = new SafeVariantPtr();
			DISPPARAMS params = {rgvarg: null, cArgs: 0, cNamedArgs: 0};
			auto ID = COMInterface[`Layer`].ID;
			auto res = cArtLayer.iDispatch.Invoke(cast(int)ID, &iidNULL, 0, DISPATCH_PROPERTYGET, &params, cast(VARIANT*)RT, &exception, &argErr);
			assert(res == S_OK, `Could not invoke COM Function cArtLayer.Layer. Error `~to!string(res, 16));
			return cast(IDispatch)(RT.pdispVal);
		
		};
		

		// extern (Windows) wchar*()
		getName = cast(typeof(this.getName)) () 
		{
		 
			EXCEPINFO exception;
			uint argErr = 0;
			auto iidNULL = IID_NULL;
			auto RT = new SafeVariantPtr();
			DISPPARAMS params = {rgvarg: null, cArgs: 0, cNamedArgs: 0};
			auto ID = COMInterface[`Name`].ID;
			auto res = cArtLayer.iDispatch.Invoke(cast(int)ID, &iidNULL, 0, DISPATCH_PROPERTYGET, &params, cast(VARIANT*)RT, &exception, &argErr);
			assert(res == S_OK, `Could not invoke COM Function cArtLayer.getName. Error `~to!string(res, 16));
			return cast(wchar*)(RT.bstrVal);
		
		};
		

		// extern (Windows) void(wchar* value)
		setName = cast(typeof(this.setName)) (wchar* value) 
		{
		 
			EXCEPINFO exception;
			uint argErr = 0;
			auto iidNULL = IID_NULL;
			auto RT = new SafeVariantPtr();
			VARIANT[1] paramVars;
			DISPPARAMS params = {rgvarg: paramVars.ptr, cArgs: 1, cNamedArgs: 0};
			auto ID = COMInterface[`Name`].ID;
			paramVars[0].vt = 8;
			paramVars[0].bstrVal = value;
			scope(exit) VariantClear(&paramVars[0]);
			auto res = cArtLayer.iDispatch.Invoke(cast(int)ID, &iidNULL, 0, DISPATCH_PROPERTYPUT, &params, cast(VARIANT*)RT, &exception, &argErr);
			assert(res == S_OK, `Could not invoke COM Function cArtLayer.setName. Error `~to!string(res, 16));
		
		};
		

		// extern (Windows) bool()
		getAllLocked = cast(typeof(this.getAllLocked)) () 
		{
		 
			EXCEPINFO exception;
			uint argErr = 0;
			auto iidNULL = IID_NULL;
			auto RT = new SafeVariantPtr();
			DISPPARAMS params = {rgvarg: null, cArgs: 0, cNamedArgs: 0};
			auto ID = COMInterface[`AllLocked`].ID;
			auto res = cArtLayer.iDispatch.Invoke(cast(int)ID, &iidNULL, 0, DISPATCH_PROPERTYGET, &params, cast(VARIANT*)RT, &exception, &argErr);
			assert(res == S_OK, `Could not invoke COM Function cArtLayer.getAllLocked. Error `~to!string(res, 16));
			return cast(bool)(RT.intVal);
		
		};
		

		// extern (Windows) void(bool value)
		setAllLocked = cast(typeof(this.setAllLocked)) (bool value) 
		{
		 
			EXCEPINFO exception;
			uint argErr = 0;
			auto iidNULL = IID_NULL;
			auto RT = new SafeVariantPtr();
			VARIANT[1] paramVars;
			DISPPARAMS params = {rgvarg: paramVars.ptr, cArgs: 1, cNamedArgs: 0};
			auto ID = COMInterface[`AllLocked`].ID;
			paramVars[0].vt = 11;
			paramVars[0].intVal = value;
			scope(exit) VariantClear(&paramVars[0]);
			auto res = cArtLayer.iDispatch.Invoke(cast(int)ID, &iidNULL, 0, DISPATCH_PROPERTYPUT, &params, cast(VARIANT*)RT, &exception, &argErr);
			assert(res == S_OK, `Could not invoke COM Function cArtLayer.setAllLocked. Error `~to!string(res, 16));
		
		};
		

		// extern (Windows) PsBlendMode()
		getBlendMode = cast(typeof(this.getBlendMode)) () 
		{
		 
			EXCEPINFO exception;
			uint argErr = 0;
			auto iidNULL = IID_NULL;
			auto RT = new SafeVariantPtr();
			DISPPARAMS params = {rgvarg: null, cArgs: 0, cNamedArgs: 0};
			auto ID = COMInterface[`BlendMode`].ID;
			auto res = cArtLayer.iDispatch.Invoke(cast(int)ID, &iidNULL, 0, DISPATCH_PROPERTYGET, &params, cast(VARIANT*)RT, &exception, &argErr);
			assert(res == S_OK, `Could not invoke COM Function cArtLayer.getBlendMode. Error `~to!string(res, 16));
			return cast(PsBlendMode)(RT.lVal);
		
		};
		

		// extern (Windows) void(PsBlendMode value)
		setBlendMode = cast(typeof(this.setBlendMode)) (PsBlendMode value) 
		{
		 
			EXCEPINFO exception;
			uint argErr = 0;
			auto iidNULL = IID_NULL;
			auto RT = new SafeVariantPtr();
			VARIANT[1] paramVars;
			DISPPARAMS params = {rgvarg: paramVars.ptr, cArgs: 1, cNamedArgs: 0};
			auto ID = COMInterface[`BlendMode`].ID;
			paramVars[0].vt = 22;
			paramVars[0].intVal = value;
			scope(exit) VariantClear(&paramVars[0]);
			auto res = cArtLayer.iDispatch.Invoke(cast(int)ID, &iidNULL, 0, DISPATCH_PROPERTYPUT, &params, cast(VARIANT*)RT, &exception, &argErr);
			assert(res == S_OK, `Could not invoke COM Function cArtLayer.setBlendMode. Error `~to!string(res, 16));
		
		};
		

		// extern (Windows) VARIANT()
		LinkedLayers = cast(typeof(this.LinkedLayers)) () 
		{
		 
			EXCEPINFO exception;
			uint argErr = 0;
			auto iidNULL = IID_NULL;
			auto RT = new SafeVariantPtr();
			DISPPARAMS params = {rgvarg: null, cArgs: 0, cNamedArgs: 0};
			auto ID = COMInterface[`LinkedLayers`].ID;
			auto res = cArtLayer.iDispatch.Invoke(cast(int)ID, &iidNULL, 0, DISPATCH_PROPERTYGET, &params, cast(VARIANT*)RT, &exception, &argErr);
			assert(res == S_OK, `Could not invoke COM Function cArtLayer.LinkedLayers. Error `~to!string(res, 16));
			return RT;
		
		};
		

		// extern (Windows) double()
		getOpacity = cast(typeof(this.getOpacity)) () 
		{
		 
			EXCEPINFO exception;
			uint argErr = 0;
			auto iidNULL = IID_NULL;
			auto RT = new SafeVariantPtr();
			DISPPARAMS params = {rgvarg: null, cArgs: 0, cNamedArgs: 0};
			auto ID = COMInterface[`Opacity`].ID;
			auto res = cArtLayer.iDispatch.Invoke(cast(int)ID, &iidNULL, 0, DISPATCH_PROPERTYGET, &params, cast(VARIANT*)RT, &exception, &argErr);
			assert(res == S_OK, `Could not invoke COM Function cArtLayer.getOpacity. Error `~to!string(res, 16));
			return cast(double)(RT.dblVal);
		
		};
		

		// extern (Windows) void(double value)
		setOpacity = cast(typeof(this.setOpacity)) (double value) 
		{
		 
			EXCEPINFO exception;
			uint argErr = 0;
			auto iidNULL = IID_NULL;
			auto RT = new SafeVariantPtr();
			VARIANT[1] paramVars;
			DISPPARAMS params = {rgvarg: paramVars.ptr, cArgs: 1, cNamedArgs: 0};
			auto ID = COMInterface[`Opacity`].ID;
			paramVars[0].vt = 5;
			paramVars[0].dblVal = value;
			scope(exit) VariantClear(&paramVars[0]);
			auto res = cArtLayer.iDispatch.Invoke(cast(int)ID, &iidNULL, 0, DISPATCH_PROPERTYPUT, &params, cast(VARIANT*)RT, &exception, &argErr);
			assert(res == S_OK, `Could not invoke COM Function cArtLayer.setOpacity. Error `~to!string(res, 16));
		
		};
		

		// extern (Windows) bool()
		getVisible = cast(typeof(this.getVisible)) () 
		{
		 
			EXCEPINFO exception;
			uint argErr = 0;
			auto iidNULL = IID_NULL;
			auto RT = new SafeVariantPtr();
			DISPPARAMS params = {rgvarg: null, cArgs: 0, cNamedArgs: 0};
			auto ID = COMInterface[`Visible`].ID;
			auto res = cArtLayer.iDispatch.Invoke(cast(int)ID, &iidNULL, 0, DISPATCH_PROPERTYGET, &params, cast(VARIANT*)RT, &exception, &argErr);
			assert(res == S_OK, `Could not invoke COM Function cArtLayer.getVisible. Error `~to!string(res, 16));
			return cast(bool)(RT.intVal);
		
		};
		

		// extern (Windows) void(bool value)
		setVisible = cast(typeof(this.setVisible)) (bool value) 
		{
		 
			EXCEPINFO exception;
			uint argErr = 0;
			auto iidNULL = IID_NULL;
			auto RT = new SafeVariantPtr();
			VARIANT[1] paramVars;
			DISPPARAMS params = {rgvarg: paramVars.ptr, cArgs: 1, cNamedArgs: 0};
			auto ID = COMInterface[`Visible`].ID;
			paramVars[0].vt = 11;
			paramVars[0].intVal = value;
			scope(exit) VariantClear(&paramVars[0]);
			auto res = cArtLayer.iDispatch.Invoke(cast(int)ID, &iidNULL, 0, DISPATCH_PROPERTYPUT, &params, cast(VARIANT*)RT, &exception, &argErr);
			assert(res == S_OK, `Could not invoke COM Function cArtLayer.setVisible. Error `~to!string(res, 16));
		
		};
		

		// extern (Windows) int()
		id = cast(typeof(this.id)) () 
		{
		 
			EXCEPINFO exception;
			uint argErr = 0;
			auto iidNULL = IID_NULL;
			auto RT = new SafeVariantPtr();
			DISPPARAMS params = {rgvarg: null, cArgs: 0, cNamedArgs: 0};
			auto ID = COMInterface[`id`].ID;
			auto res = cArtLayer.iDispatch.Invoke(cast(int)ID, &iidNULL, 0, DISPATCH_PROPERTYGET, &params, cast(VARIANT*)RT, &exception, &argErr);
			assert(res == S_OK, `Could not invoke COM Function cArtLayer.id. Error `~to!string(res, 16));
			return cast(int)(RT.lVal);
		
		};
		

		// extern (Windows) int()
		ItemIndex = cast(typeof(this.ItemIndex)) () 
		{
		 
			EXCEPINFO exception;
			uint argErr = 0;
			auto iidNULL = IID_NULL;
			auto RT = new SafeVariantPtr();
			DISPPARAMS params = {rgvarg: null, cArgs: 0, cNamedArgs: 0};
			auto ID = COMInterface[`ItemIndex`].ID;
			auto res = cArtLayer.iDispatch.Invoke(cast(int)ID, &iidNULL, 0, DISPATCH_PROPERTYGET, &params, cast(VARIANT*)RT, &exception, &argErr);
			assert(res == S_OK, `Could not invoke COM Function cArtLayer.ItemIndex. Error `~to!string(res, 16));
			return cast(int)(RT.lVal);
		
		};
		

		// extern (Windows) PsLayerType()
		LayerType = cast(typeof(this.LayerType)) () 
		{
		 
			EXCEPINFO exception;
			uint argErr = 0;
			auto iidNULL = IID_NULL;
			auto RT = new SafeVariantPtr();
			DISPPARAMS params = {rgvarg: null, cArgs: 0, cNamedArgs: 0};
			auto ID = COMInterface[`LayerType`].ID;
			auto res = cArtLayer.iDispatch.Invoke(cast(int)ID, &iidNULL, 0, DISPATCH_PROPERTYGET, &params, cast(VARIANT*)RT, &exception, &argErr);
			assert(res == S_OK, `Could not invoke COM Function cArtLayer.LayerType. Error `~to!string(res, 16));
			return cast(PsLayerType)(RT.lVal);
		
		};
		

		// extern (Windows) iArtLayer()
		ArtLayer = cast(typeof(this.ArtLayer)) () 
		{
		 	auto key = `ArtLayer.ArtLayer`;
			if (auto v = key in cApplication.CachedInterfaces)
			{
				return cast(cArtLayer)*v;
			}
		
			EXCEPINFO exception;
			uint argErr = 0;
			auto iidNULL = IID_NULL;
			auto RT = new SafeVariantPtr();
			DISPPARAMS params = {rgvarg: null, cArgs: 0, cNamedArgs: 0};
			auto ID = COMInterface[`ArtLayer`].ID;
			auto res = cArtLayer.iDispatch.Invoke(cast(int)ID, &iidNULL, 0, DISPATCH_PROPERTYGET, &params, cast(VARIANT*)RT, &exception, &argErr);
			assert(res == S_OK, `Could not invoke COM Function cArtLayer.ArtLayer. Error `~to!string(res, 16));
			if (cApplication.Cache)
			{
				if (auto v = key in cApplication.CachedInterfaces)
				{
					(cast(cArtLayer)v).iDispatch = cast(IDispatch)RT.punkVal;
					return cast(cArtLayer)*v;
				}
			}
			auto _class = new cArtLayer(true, cast(IDispatch)(RT.punkVal), this.iDispatch);
			cApplication.CachedInterfaces[key] = _class;
			return _class;
		
		};
		

		// extern (Windows) iLayerSet()
		LayerSet = cast(typeof(this.LayerSet)) () 
		{
		 	auto key = `ArtLayer.LayerSet`;
			if (auto v = key in cApplication.CachedInterfaces)
			{
				return cast(cLayerSet)*v;
			}
		
			EXCEPINFO exception;
			uint argErr = 0;
			auto iidNULL = IID_NULL;
			auto RT = new SafeVariantPtr();
			DISPPARAMS params = {rgvarg: null, cArgs: 0, cNamedArgs: 0};
			auto ID = COMInterface[`LayerSet`].ID;
			auto res = cArtLayer.iDispatch.Invoke(cast(int)ID, &iidNULL, 0, DISPATCH_PROPERTYGET, &params, cast(VARIANT*)RT, &exception, &argErr);
			assert(res == S_OK, `Could not invoke COM Function cArtLayer.LayerSet. Error `~to!string(res, 16));
			if (cApplication.Cache)
			{
				if (auto v = key in cApplication.CachedInterfaces)
				{
					(cast(cLayerSet)v).iDispatch = cast(IDispatch)RT.punkVal;
					return cast(cLayerSet)*v;
				}
			}
			auto _class = new cLayerSet(true, cast(IDispatch)(RT.punkVal), this.iDispatch);
			cApplication.CachedInterfaces[key] = _class;
			return _class;
		
		};
		

		// extern (Windows) VARIANT()
		Bounds = cast(typeof(this.Bounds)) () 
		{
		 
			EXCEPINFO exception;
			uint argErr = 0;
			auto iidNULL = IID_NULL;
			auto RT = new SafeVariantPtr();
			DISPPARAMS params = {rgvarg: null, cArgs: 0, cNamedArgs: 0};
			auto ID = COMInterface[`Bounds`].ID;
			auto res = cArtLayer.iDispatch.Invoke(cast(int)ID, &iidNULL, 0, DISPATCH_PROPERTYGET, &params, cast(VARIANT*)RT, &exception, &argErr);
			assert(res == S_OK, `Could not invoke COM Function cArtLayer.Bounds. Error `~to!string(res, 16));
			return RT;
		
		};
		

		// extern (Windows) iApplication()
		Application = cast(typeof(this.Application)) () 
		{
		 	auto key = `ArtLayer.Application`;
			if (auto v = key in cApplication.CachedInterfaces)
			{
				return cast(cApplication)*v;
			}
		
			EXCEPINFO exception;
			uint argErr = 0;
			auto iidNULL = IID_NULL;
			auto RT = new SafeVariantPtr();
			DISPPARAMS params = {rgvarg: null, cArgs: 0, cNamedArgs: 0};
			auto ID = COMInterface[`Application`].ID;
			auto res = cArtLayer.iDispatch.Invoke(cast(int)ID, &iidNULL, 0, DISPATCH_PROPERTYGET, &params, cast(VARIANT*)RT, &exception, &argErr);
			assert(res == S_OK, `Could not invoke COM Function cArtLayer.Application. Error `~to!string(res, 16));
			if (cApplication.Cache)
			{
				if (auto v = key in cApplication.CachedInterfaces)
				{
					(cast(cApplication)v).iDispatch = cast(IDispatch)RT.punkVal;
					return cast(cApplication)*v;
				}
			}
			auto _class = new cApplication(true, cast(IDispatch)(RT.punkVal), this.iDispatch);
			cApplication.CachedInterfaces[key] = _class;
			return _class;
		
		};
		

		// extern (Windows) IDispatch()
		Parent = cast(typeof(this.Parent)) () 
		{
		 	auto key = `ArtLayer.Dispatch`;
		
			EXCEPINFO exception;
			uint argErr = 0;
			auto iidNULL = IID_NULL;
			auto RT = new SafeVariantPtr();
			DISPPARAMS params = {rgvarg: null, cArgs: 0, cNamedArgs: 0};
			auto ID = COMInterface[`Parent`].ID;
			auto res = cArtLayer.iDispatch.Invoke(cast(int)ID, &iidNULL, 0, DISPATCH_PROPERTYGET, &params, cast(VARIANT*)RT, &exception, &argErr);
			assert(res == S_OK, `Could not invoke COM Function cArtLayer.Parent. Error `~to!string(res, 16));
			return cast(IDispatch)(RT.pdispVal);
		
		};
		

		// extern (Windows) void(wchar* StyleName)
		ApplyStyle = cast(typeof(this.ApplyStyle)) (wchar* StyleName) 
		{
		 
			EXCEPINFO exception;
			uint argErr = 0;
			auto iidNULL = IID_NULL;
			auto RT = new SafeVariantPtr();
			VARIANT[1] paramVars;
			DISPPARAMS params = {rgvarg: paramVars.ptr, cArgs: 1, cNamedArgs: 0};
			auto ID = COMInterface[`ApplyStyle`].ID;
			paramVars[0].vt = 8;
			paramVars[0].bstrVal = StyleName;
			scope(exit) VariantClear(&paramVars[0]);
			auto res = cArtLayer.iDispatch.Invoke(cast(int)ID, &iidNULL, 0, DISPATCH_METHOD, &params, cast(VARIANT*)RT, &exception, &argErr);
			assert(res == S_OK, `Could not invoke COM Function cArtLayer.ApplyStyle. Error `~to!string(res, 16));
		
		};
		

		// extern (Windows) void()
		Clear = cast(typeof(this.Clear)) () 
		{
		 
			EXCEPINFO exception;
			uint argErr = 0;
			auto iidNULL = IID_NULL;
			auto RT = new SafeVariantPtr();
			DISPPARAMS params = {rgvarg: null, cArgs: 0, cNamedArgs: 0};
			auto ID = COMInterface[`Clear`].ID;
			auto res = cArtLayer.iDispatch.Invoke(cast(int)ID, &iidNULL, 0, DISPATCH_PROPERTYGET, &params, cast(VARIANT*)RT, &exception, &argErr);
			assert(res == S_OK, `Could not invoke COM Function cArtLayer.Clear. Error `~to!string(res, 16));
		
		};
		

		// extern (Windows) void(VARIANT Merge)
		Copy = cast(typeof(this.Copy)) (VARIANT Merge) 
		{
		 
			EXCEPINFO exception;
			uint argErr = 0;
			auto iidNULL = IID_NULL;
			auto RT = new SafeVariantPtr();
			VARIANT[1] paramVars;
			DISPPARAMS params = {rgvarg: paramVars.ptr, cArgs: 1, cNamedArgs: 0};
			auto ID = COMInterface[`Copy`].ID;
			paramVars[0] = Merge;
			auto res = cArtLayer.iDispatch.Invoke(cast(int)ID, &iidNULL, 0, DISPATCH_METHOD, &params, cast(VARIANT*)RT, &exception, &argErr);
			assert(res == S_OK, `Could not invoke COM Function cArtLayer.Copy. Error `~to!string(res, 16));
		
		};
		

		// extern (Windows) void()
		Cut = cast(typeof(this.Cut)) () 
		{
		 
			EXCEPINFO exception;
			uint argErr = 0;
			auto iidNULL = IID_NULL;
			auto RT = new SafeVariantPtr();
			DISPPARAMS params = {rgvarg: null, cArgs: 0, cNamedArgs: 0};
			auto ID = COMInterface[`Cut`].ID;
			auto res = cArtLayer.iDispatch.Invoke(cast(int)ID, &iidNULL, 0, DISPATCH_PROPERTYGET, &params, cast(VARIANT*)RT, &exception, &argErr);
			assert(res == S_OK, `Could not invoke COM Function cArtLayer.Cut. Error `~to!string(res, 16));
		
		};
		

		// extern (Windows) iArtLayer()
		Merge = cast(typeof(this.Merge)) () 
		{
		 	auto key = `ArtLayer.ArtLayer`;
			if (auto v = key in cApplication.CachedInterfaces)
			{
				return cast(cArtLayer)*v;
			}
		
			EXCEPINFO exception;
			uint argErr = 0;
			auto iidNULL = IID_NULL;
			auto RT = new SafeVariantPtr();
			DISPPARAMS params = {rgvarg: null, cArgs: 0, cNamedArgs: 0};
			auto ID = COMInterface[`Merge`].ID;
			auto res = cArtLayer.iDispatch.Invoke(cast(int)ID, &iidNULL, 0, DISPATCH_PROPERTYGET, &params, cast(VARIANT*)RT, &exception, &argErr);
			assert(res == S_OK, `Could not invoke COM Function cArtLayer.Merge. Error `~to!string(res, 16));
			if (cApplication.Cache)
			{
				if (auto v = key in cApplication.CachedInterfaces)
				{
					(cast(cArtLayer)v).iDispatch = cast(IDispatch)RT.punkVal;
					return cast(cArtLayer)*v;
				}
			}
			auto _class = new cArtLayer(true, cast(IDispatch)(RT.punkVal), this.iDispatch);
			cApplication.CachedInterfaces[key] = _class;
			return _class;
		
		};
		

		// extern (Windows) void(PsRasterizeType Tar)
		Rasterize = cast(typeof(this.Rasterize)) (PsRasterizeType Tar) 
		{
		 
			EXCEPINFO exception;
			uint argErr = 0;
			auto iidNULL = IID_NULL;
			auto RT = new SafeVariantPtr();
			VARIANT[1] paramVars;
			DISPPARAMS params = {rgvarg: paramVars.ptr, cArgs: 1, cNamedArgs: 0};
			auto ID = COMInterface[`Rasterize`].ID;
			paramVars[0].vt = 22;
			paramVars[0].intVal = Tar;
			scope(exit) VariantClear(&paramVars[0]);
			auto res = cArtLayer.iDispatch.Invoke(cast(int)ID, &iidNULL, 0, DISPATCH_METHOD, &params, cast(VARIANT*)RT, &exception, &argErr);
			assert(res == S_OK, `Could not invoke COM Function cArtLayer.Rasterize. Error `~to!string(res, 16));
		
		};
		

		// extern (Windows) void()
		ApplyAverage = cast(typeof(this.ApplyAverage)) () 
		{
		 
			EXCEPINFO exception;
			uint argErr = 0;
			auto iidNULL = IID_NULL;
			auto RT = new SafeVariantPtr();
			DISPPARAMS params = {rgvarg: null, cArgs: 0, cNamedArgs: 0};
			auto ID = COMInterface[`ApplyAverage`].ID;
			auto res = cArtLayer.iDispatch.Invoke(cast(int)ID, &iidNULL, 0, DISPATCH_PROPERTYGET, &params, cast(VARIANT*)RT, &exception, &argErr);
			assert(res == S_OK, `Could not invoke COM Function cArtLayer.ApplyAverage. Error `~to!string(res, 16));
		
		};
		

		// extern (Windows) void(double Radius)
		ApplyGaussianBlur = cast(typeof(this.ApplyGaussianBlur)) (double Radius) 
		{
		 
			EXCEPINFO exception;
			uint argErr = 0;
			auto iidNULL = IID_NULL;
			auto RT = new SafeVariantPtr();
			VARIANT[1] paramVars;
			DISPPARAMS params = {rgvarg: paramVars.ptr, cArgs: 1, cNamedArgs: 0};
			auto ID = COMInterface[`ApplyGaussianBlur`].ID;
			paramVars[0].vt = 5;
			paramVars[0].dblVal = Radius;
			scope(exit) VariantClear(&paramVars[0]);
			auto res = cArtLayer.iDispatch.Invoke(cast(int)ID, &iidNULL, 0, DISPATCH_METHOD, &params, cast(VARIANT*)RT, &exception, &argErr);
			assert(res == S_OK, `Could not invoke COM Function cArtLayer.ApplyGaussianBlur. Error `~to!string(res, 16));
		
		};
		

		// extern (Windows) void(VARIANT Source, VARIANT FocalDistance, VARIANT InvertDepthMap, VARIANT Shape, VARIANT Radius, VARIANT BladeCurvature, VARIANT Rotation, VARIANT Brightness, VARIANT Threshold, VARIANT Amount, VARIANT Distribution, VARIANT Monochromatic)
		ApplyLensBlur = cast(typeof(this.ApplyLensBlur)) (VARIANT Source, VARIANT FocalDistance, VARIANT InvertDepthMap, VARIANT Shape, VARIANT Radius, VARIANT BladeCurvature, VARIANT Rotation, VARIANT Brightness, VARIANT Threshold, VARIANT Amount, VARIANT Distribution, VARIANT Monochromatic) 
		{
		 
			EXCEPINFO exception;
			uint argErr = 0;
			auto iidNULL = IID_NULL;
			auto RT = new SafeVariantPtr();
			VARIANT[12] paramVars;
			DISPPARAMS params = {rgvarg: paramVars.ptr, cArgs: 12, cNamedArgs: 0};
			auto ID = COMInterface[`ApplyLensBlur`].ID;
			paramVars[11] = Source;
			paramVars[10] = FocalDistance;
			paramVars[9] = InvertDepthMap;
			paramVars[8] = Shape;
			paramVars[7] = Radius;
			paramVars[6] = BladeCurvature;
			paramVars[5] = Rotation;
			paramVars[4] = Brightness;
			paramVars[3] = Threshold;
			paramVars[2] = Amount;
			paramVars[1] = Distribution;
			paramVars[0] = Monochromatic;
			auto res = cArtLayer.iDispatch.Invoke(cast(int)ID, &iidNULL, 0, DISPATCH_METHOD, &params, cast(VARIANT*)RT, &exception, &argErr);
			assert(res == S_OK, `Could not invoke COM Function cArtLayer.ApplyLensBlur. Error `~to!string(res, 16));
		
		};
		

		// extern (Windows) void()
		ApplyBlur = cast(typeof(this.ApplyBlur)) () 
		{
		 
			EXCEPINFO exception;
			uint argErr = 0;
			auto iidNULL = IID_NULL;
			auto RT = new SafeVariantPtr();
			DISPPARAMS params = {rgvarg: null, cArgs: 0, cNamedArgs: 0};
			auto ID = COMInterface[`ApplyBlur`].ID;
			auto res = cArtLayer.iDispatch.Invoke(cast(int)ID, &iidNULL, 0, DISPATCH_PROPERTYGET, &params, cast(VARIANT*)RT, &exception, &argErr);
			assert(res == S_OK, `Could not invoke COM Function cArtLayer.ApplyBlur. Error `~to!string(res, 16));
		
		};
		

		// extern (Windows) void()
		ApplyBlurMore = cast(typeof(this.ApplyBlurMore)) () 
		{
		 
			EXCEPINFO exception;
			uint argErr = 0;
			auto iidNULL = IID_NULL;
			auto RT = new SafeVariantPtr();
			DISPPARAMS params = {rgvarg: null, cArgs: 0, cNamedArgs: 0};
			auto ID = COMInterface[`ApplyBlurMore`].ID;
			auto res = cArtLayer.iDispatch.Invoke(cast(int)ID, &iidNULL, 0, DISPATCH_PROPERTYGET, &params, cast(VARIANT*)RT, &exception, &argErr);
			assert(res == S_OK, `Could not invoke COM Function cArtLayer.ApplyBlurMore. Error `~to!string(res, 16));
		
		};
		

		// extern (Windows) void(int Angle, double Radius)
		ApplyMotionBlur = cast(typeof(this.ApplyMotionBlur)) (int Angle, double Radius) 
		{
		 
			EXCEPINFO exception;
			uint argErr = 0;
			auto iidNULL = IID_NULL;
			auto RT = new SafeVariantPtr();
			VARIANT[2] paramVars;
			DISPPARAMS params = {rgvarg: paramVars.ptr, cArgs: 2, cNamedArgs: 0};
			auto ID = COMInterface[`ApplyMotionBlur`].ID;
			paramVars[1].vt = 3;
			paramVars[1].lVal = Angle;
			scope(exit) VariantClear(&paramVars[1]);
			paramVars[0].vt = 5;
			paramVars[0].dblVal = Radius;
			scope(exit) VariantClear(&paramVars[0]);
			auto res = cArtLayer.iDispatch.Invoke(cast(int)ID, &iidNULL, 0, DISPATCH_METHOD, &params, cast(VARIANT*)RT, &exception, &argErr);
			assert(res == S_OK, `Could not invoke COM Function cArtLayer.ApplyMotionBlur. Error `~to!string(res, 16));
		
		};
		

		// extern (Windows) void(int Amount, PsRadialBlurMethod BlurMethod, PsRadialBlurQuality BlurQuality, VARIANT BlurCenter)
		ApplyRadialBlur = cast(typeof(this.ApplyRadialBlur)) (int Amount, PsRadialBlurMethod BlurMethod, PsRadialBlurQuality BlurQuality, VARIANT BlurCenter) 
		{
		 
			EXCEPINFO exception;
			uint argErr = 0;
			auto iidNULL = IID_NULL;
			auto RT = new SafeVariantPtr();
			VARIANT[4] paramVars;
			DISPPARAMS params = {rgvarg: paramVars.ptr, cArgs: 4, cNamedArgs: 0};
			auto ID = COMInterface[`ApplyRadialBlur`].ID;
			paramVars[3].vt = 3;
			paramVars[3].lVal = Amount;
			scope(exit) VariantClear(&paramVars[3]);
			paramVars[2].vt = 22;
			paramVars[2].intVal = BlurMethod;
			scope(exit) VariantClear(&paramVars[2]);
			paramVars[1].vt = 22;
			paramVars[1].intVal = BlurQuality;
			scope(exit) VariantClear(&paramVars[1]);
			paramVars[0] = BlurCenter;
			auto res = cArtLayer.iDispatch.Invoke(cast(int)ID, &iidNULL, 0, DISPATCH_METHOD, &params, cast(VARIANT*)RT, &exception, &argErr);
			assert(res == S_OK, `Could not invoke COM Function cArtLayer.ApplyRadialBlur. Error `~to!string(res, 16));
		
		};
		

		// extern (Windows) void(double Radius, double Threshold, PsSmartBlurQuality BlurQuality, PsSmartBlurMode Mode)
		ApplySmartBlur = cast(typeof(this.ApplySmartBlur)) (double Radius, double Threshold, PsSmartBlurQuality BlurQuality, PsSmartBlurMode Mode) 
		{
		 
			EXCEPINFO exception;
			uint argErr = 0;
			auto iidNULL = IID_NULL;
			auto RT = new SafeVariantPtr();
			VARIANT[4] paramVars;
			DISPPARAMS params = {rgvarg: paramVars.ptr, cArgs: 4, cNamedArgs: 0};
			auto ID = COMInterface[`ApplySmartBlur`].ID;
			paramVars[3].vt = 5;
			paramVars[3].dblVal = Radius;
			scope(exit) VariantClear(&paramVars[3]);
			paramVars[2].vt = 5;
			paramVars[2].dblVal = Threshold;
			scope(exit) VariantClear(&paramVars[2]);
			paramVars[1].vt = 22;
			paramVars[1].intVal = BlurQuality;
			scope(exit) VariantClear(&paramVars[1]);
			paramVars[0].vt = 22;
			paramVars[0].intVal = Mode;
			scope(exit) VariantClear(&paramVars[0]);
			auto res = cArtLayer.iDispatch.Invoke(cast(int)ID, &iidNULL, 0, DISPATCH_METHOD, &params, cast(VARIANT*)RT, &exception, &argErr);
			assert(res == S_OK, `Could not invoke COM Function cArtLayer.ApplySmartBlur. Error `~to!string(res, 16));
		
		};
		

		// extern (Windows) void(int Graininess, int GlowAmount, int ClearAmount)
		ApplyDiffuseGlow = cast(typeof(this.ApplyDiffuseGlow)) (int Graininess, int GlowAmount, int ClearAmount) 
		{
		 
			EXCEPINFO exception;
			uint argErr = 0;
			auto iidNULL = IID_NULL;
			auto RT = new SafeVariantPtr();
			VARIANT[3] paramVars;
			DISPPARAMS params = {rgvarg: paramVars.ptr, cArgs: 3, cNamedArgs: 0};
			auto ID = COMInterface[`ApplyDiffuseGlow`].ID;
			paramVars[2].vt = 3;
			paramVars[2].lVal = Graininess;
			scope(exit) VariantClear(&paramVars[2]);
			paramVars[1].vt = 3;
			paramVars[1].lVal = GlowAmount;
			scope(exit) VariantClear(&paramVars[1]);
			paramVars[0].vt = 3;
			paramVars[0].lVal = ClearAmount;
			scope(exit) VariantClear(&paramVars[0]);
			auto res = cArtLayer.iDispatch.Invoke(cast(int)ID, &iidNULL, 0, DISPATCH_METHOD, &params, cast(VARIANT*)RT, &exception, &argErr);
			assert(res == S_OK, `Could not invoke COM Function cArtLayer.ApplyDiffuseGlow. Error `~to!string(res, 16));
		
		};
		

		// extern (Windows) void(int HorizontalScale, int VerticalScale, PsDisplacementMapType DisplacementType, PsUndefinedAreas UndefinedAreas, wchar* DisplacementMapFile)
		ApplyDisplace = cast(typeof(this.ApplyDisplace)) (int HorizontalScale, int VerticalScale, PsDisplacementMapType DisplacementType, PsUndefinedAreas UndefinedAreas, wchar* DisplacementMapFile) 
		{
		 
			EXCEPINFO exception;
			uint argErr = 0;
			auto iidNULL = IID_NULL;
			auto RT = new SafeVariantPtr();
			VARIANT[5] paramVars;
			DISPPARAMS params = {rgvarg: paramVars.ptr, cArgs: 5, cNamedArgs: 0};
			auto ID = COMInterface[`ApplyDisplace`].ID;
			paramVars[4].vt = 3;
			paramVars[4].lVal = HorizontalScale;
			scope(exit) VariantClear(&paramVars[4]);
			paramVars[3].vt = 3;
			paramVars[3].lVal = VerticalScale;
			scope(exit) VariantClear(&paramVars[3]);
			paramVars[2].vt = 22;
			paramVars[2].intVal = DisplacementType;
			scope(exit) VariantClear(&paramVars[2]);
			paramVars[1].vt = 22;
			paramVars[1].intVal = UndefinedAreas;
			scope(exit) VariantClear(&paramVars[1]);
			paramVars[0].vt = 8;
			paramVars[0].bstrVal = DisplacementMapFile;
			scope(exit) VariantClear(&paramVars[0]);
			auto res = cArtLayer.iDispatch.Invoke(cast(int)ID, &iidNULL, 0, DISPATCH_METHOD, &params, cast(VARIANT*)RT, &exception, &argErr);
			assert(res == S_OK, `Could not invoke COM Function cArtLayer.ApplyDisplace. Error `~to!string(res, 16));
		
		};
		

		// extern (Windows) void(int Distortion, int Smoothness, int Scaling, VARIANT Invert, VARIANT Texture, VARIANT TextureFile)
		ApplyGlassEffect = cast(typeof(this.ApplyGlassEffect)) (int Distortion, int Smoothness, int Scaling, VARIANT Invert, VARIANT Texture, VARIANT TextureFile) 
		{
		 
			EXCEPINFO exception;
			uint argErr = 0;
			auto iidNULL = IID_NULL;
			auto RT = new SafeVariantPtr();
			VARIANT[6] paramVars;
			DISPPARAMS params = {rgvarg: paramVars.ptr, cArgs: 6, cNamedArgs: 0};
			auto ID = COMInterface[`ApplyGlassEffect`].ID;
			paramVars[5].vt = 3;
			paramVars[5].lVal = Distortion;
			scope(exit) VariantClear(&paramVars[5]);
			paramVars[4].vt = 3;
			paramVars[4].lVal = Smoothness;
			scope(exit) VariantClear(&paramVars[4]);
			paramVars[3].vt = 3;
			paramVars[3].lVal = Scaling;
			scope(exit) VariantClear(&paramVars[3]);
			paramVars[2] = Invert;
			paramVars[1] = Texture;
			paramVars[0] = TextureFile;
			auto res = cArtLayer.iDispatch.Invoke(cast(int)ID, &iidNULL, 0, DISPATCH_METHOD, &params, cast(VARIANT*)RT, &exception, &argErr);
			assert(res == S_OK, `Could not invoke COM Function cArtLayer.ApplyGlassEffect. Error `~to!string(res, 16));
		
		};
		

		// extern (Windows) void(int Size, int Magnitude)
		ApplyOceanRipple = cast(typeof(this.ApplyOceanRipple)) (int Size, int Magnitude) 
		{
		 
			EXCEPINFO exception;
			uint argErr = 0;
			auto iidNULL = IID_NULL;
			auto RT = new SafeVariantPtr();
			VARIANT[2] paramVars;
			DISPPARAMS params = {rgvarg: paramVars.ptr, cArgs: 2, cNamedArgs: 0};
			auto ID = COMInterface[`ApplyOceanRipple`].ID;
			paramVars[1].vt = 3;
			paramVars[1].lVal = Size;
			scope(exit) VariantClear(&paramVars[1]);
			paramVars[0].vt = 3;
			paramVars[0].lVal = Magnitude;
			scope(exit) VariantClear(&paramVars[0]);
			auto res = cArtLayer.iDispatch.Invoke(cast(int)ID, &iidNULL, 0, DISPATCH_METHOD, &params, cast(VARIANT*)RT, &exception, &argErr);
			assert(res == S_OK, `Could not invoke COM Function cArtLayer.ApplyOceanRipple. Error `~to!string(res, 16));
		
		};
		

		// extern (Windows) void(int Amount)
		ApplyPinch = cast(typeof(this.ApplyPinch)) (int Amount) 
		{
		 
			EXCEPINFO exception;
			uint argErr = 0;
			auto iidNULL = IID_NULL;
			auto RT = new SafeVariantPtr();
			VARIANT[1] paramVars;
			DISPPARAMS params = {rgvarg: paramVars.ptr, cArgs: 1, cNamedArgs: 0};
			auto ID = COMInterface[`ApplyPinch`].ID;
			paramVars[0].vt = 3;
			paramVars[0].lVal = Amount;
			scope(exit) VariantClear(&paramVars[0]);
			auto res = cArtLayer.iDispatch.Invoke(cast(int)ID, &iidNULL, 0, DISPATCH_METHOD, &params, cast(VARIANT*)RT, &exception, &argErr);
			assert(res == S_OK, `Could not invoke COM Function cArtLayer.ApplyPinch. Error `~to!string(res, 16));
		
		};
		

		// extern (Windows) void(PsPolarConversionType Conversion)
		ApplyPolarCoordinates = cast(typeof(this.ApplyPolarCoordinates)) (PsPolarConversionType Conversion) 
		{
		 
			EXCEPINFO exception;
			uint argErr = 0;
			auto iidNULL = IID_NULL;
			auto RT = new SafeVariantPtr();
			VARIANT[1] paramVars;
			DISPPARAMS params = {rgvarg: paramVars.ptr, cArgs: 1, cNamedArgs: 0};
			auto ID = COMInterface[`ApplyPolarCoordinates`].ID;
			paramVars[0].vt = 22;
			paramVars[0].intVal = Conversion;
			scope(exit) VariantClear(&paramVars[0]);
			auto res = cArtLayer.iDispatch.Invoke(cast(int)ID, &iidNULL, 0, DISPATCH_METHOD, &params, cast(VARIANT*)RT, &exception, &argErr);
			assert(res == S_OK, `Could not invoke COM Function cArtLayer.ApplyPolarCoordinates. Error `~to!string(res, 16));
		
		};
		

		// extern (Windows) void(int Amount, PsRippleSize Size)
		ApplyRipple = cast(typeof(this.ApplyRipple)) (int Amount, PsRippleSize Size) 
		{
		 
			EXCEPINFO exception;
			uint argErr = 0;
			auto iidNULL = IID_NULL;
			auto RT = new SafeVariantPtr();
			VARIANT[2] paramVars;
			DISPPARAMS params = {rgvarg: paramVars.ptr, cArgs: 2, cNamedArgs: 0};
			auto ID = COMInterface[`ApplyRipple`].ID;
			paramVars[1].vt = 3;
			paramVars[1].lVal = Amount;
			scope(exit) VariantClear(&paramVars[1]);
			paramVars[0].vt = 22;
			paramVars[0].intVal = Size;
			scope(exit) VariantClear(&paramVars[0]);
			auto res = cArtLayer.iDispatch.Invoke(cast(int)ID, &iidNULL, 0, DISPATCH_METHOD, &params, cast(VARIANT*)RT, &exception, &argErr);
			assert(res == S_OK, `Could not invoke COM Function cArtLayer.ApplyRipple. Error `~to!string(res, 16));
		
		};
		

		// extern (Windows) void(VARIANT Curve, PsUndefinedAreas UndefinedAreas)
		ApplyShear = cast(typeof(this.ApplyShear)) (VARIANT Curve, PsUndefinedAreas UndefinedAreas) 
		{
		 
			EXCEPINFO exception;
			uint argErr = 0;
			auto iidNULL = IID_NULL;
			auto RT = new SafeVariantPtr();
			VARIANT[2] paramVars;
			DISPPARAMS params = {rgvarg: paramVars.ptr, cArgs: 2, cNamedArgs: 0};
			auto ID = COMInterface[`ApplyShear`].ID;
			paramVars[1] = Curve;
			paramVars[0].vt = 22;
			paramVars[0].intVal = UndefinedAreas;
			scope(exit) VariantClear(&paramVars[0]);
			auto res = cArtLayer.iDispatch.Invoke(cast(int)ID, &iidNULL, 0, DISPATCH_METHOD, &params, cast(VARIANT*)RT, &exception, &argErr);
			assert(res == S_OK, `Could not invoke COM Function cArtLayer.ApplyShear. Error `~to!string(res, 16));
		
		};
		

		// extern (Windows) void(int Amount, PsSpherizeMode Mode)
		ApplySpherize = cast(typeof(this.ApplySpherize)) (int Amount, PsSpherizeMode Mode) 
		{
		 
			EXCEPINFO exception;
			uint argErr = 0;
			auto iidNULL = IID_NULL;
			auto RT = new SafeVariantPtr();
			VARIANT[2] paramVars;
			DISPPARAMS params = {rgvarg: paramVars.ptr, cArgs: 2, cNamedArgs: 0};
			auto ID = COMInterface[`ApplySpherize`].ID;
			paramVars[1].vt = 3;
			paramVars[1].lVal = Amount;
			scope(exit) VariantClear(&paramVars[1]);
			paramVars[0].vt = 22;
			paramVars[0].intVal = Mode;
			scope(exit) VariantClear(&paramVars[0]);
			auto res = cArtLayer.iDispatch.Invoke(cast(int)ID, &iidNULL, 0, DISPATCH_METHOD, &params, cast(VARIANT*)RT, &exception, &argErr);
			assert(res == S_OK, `Could not invoke COM Function cArtLayer.ApplySpherize. Error `~to!string(res, 16));
		
		};
		

		// extern (Windows) void(int Angle)
		ApplyTwirl = cast(typeof(this.ApplyTwirl)) (int Angle) 
		{
		 
			EXCEPINFO exception;
			uint argErr = 0;
			auto iidNULL = IID_NULL;
			auto RT = new SafeVariantPtr();
			VARIANT[1] paramVars;
			DISPPARAMS params = {rgvarg: paramVars.ptr, cArgs: 1, cNamedArgs: 0};
			auto ID = COMInterface[`ApplyTwirl`].ID;
			paramVars[0].vt = 3;
			paramVars[0].lVal = Angle;
			scope(exit) VariantClear(&paramVars[0]);
			auto res = cArtLayer.iDispatch.Invoke(cast(int)ID, &iidNULL, 0, DISPATCH_METHOD, &params, cast(VARIANT*)RT, &exception, &argErr);
			assert(res == S_OK, `Could not invoke COM Function cArtLayer.ApplyTwirl. Error `~to!string(res, 16));
		
		};
		

		// extern (Windows) void(int GeneratorNumber, int MinimumWavelength, int MaximumWavelength, int MinimumAmplitude, int MaximumAmplitude, int HorizontalScale, int VerticalScale, PsWaveType WaveType, PsUndefinedAreas UndefinedAreas, int RandomSeed)
		ApplyWave = cast(typeof(this.ApplyWave)) (int GeneratorNumber, int MinimumWavelength, int MaximumWavelength, int MinimumAmplitude, int MaximumAmplitude, int HorizontalScale, int VerticalScale, PsWaveType WaveType, PsUndefinedAreas UndefinedAreas, int RandomSeed) 
		{
		 
			EXCEPINFO exception;
			uint argErr = 0;
			auto iidNULL = IID_NULL;
			auto RT = new SafeVariantPtr();
			VARIANT[10] paramVars;
			DISPPARAMS params = {rgvarg: paramVars.ptr, cArgs: 10, cNamedArgs: 0};
			auto ID = COMInterface[`ApplyWave`].ID;
			paramVars[9].vt = 3;
			paramVars[9].lVal = GeneratorNumber;
			scope(exit) VariantClear(&paramVars[9]);
			paramVars[8].vt = 3;
			paramVars[8].lVal = MinimumWavelength;
			scope(exit) VariantClear(&paramVars[8]);
			paramVars[7].vt = 3;
			paramVars[7].lVal = MaximumWavelength;
			scope(exit) VariantClear(&paramVars[7]);
			paramVars[6].vt = 3;
			paramVars[6].lVal = MinimumAmplitude;
			scope(exit) VariantClear(&paramVars[6]);
			paramVars[5].vt = 3;
			paramVars[5].lVal = MaximumAmplitude;
			scope(exit) VariantClear(&paramVars[5]);
			paramVars[4].vt = 3;
			paramVars[4].lVal = HorizontalScale;
			scope(exit) VariantClear(&paramVars[4]);
			paramVars[3].vt = 3;
			paramVars[3].lVal = VerticalScale;
			scope(exit) VariantClear(&paramVars[3]);
			paramVars[2].vt = 22;
			paramVars[2].intVal = WaveType;
			scope(exit) VariantClear(&paramVars[2]);
			paramVars[1].vt = 22;
			paramVars[1].intVal = UndefinedAreas;
			scope(exit) VariantClear(&paramVars[1]);
			paramVars[0].vt = 3;
			paramVars[0].lVal = RandomSeed;
			scope(exit) VariantClear(&paramVars[0]);
			auto res = cArtLayer.iDispatch.Invoke(cast(int)ID, &iidNULL, 0, DISPATCH_METHOD, &params, cast(VARIANT*)RT, &exception, &argErr);
			assert(res == S_OK, `Could not invoke COM Function cArtLayer.ApplyWave. Error `~to!string(res, 16));
		
		};
		

		// extern (Windows) void(int Amount, int Ridges, PsZigZagType Style)
		ApplyZigZag = cast(typeof(this.ApplyZigZag)) (int Amount, int Ridges, PsZigZagType Style) 
		{
		 
			EXCEPINFO exception;
			uint argErr = 0;
			auto iidNULL = IID_NULL;
			auto RT = new SafeVariantPtr();
			VARIANT[3] paramVars;
			DISPPARAMS params = {rgvarg: paramVars.ptr, cArgs: 3, cNamedArgs: 0};
			auto ID = COMInterface[`ApplyZigZag`].ID;
			paramVars[2].vt = 3;
			paramVars[2].lVal = Amount;
			scope(exit) VariantClear(&paramVars[2]);
			paramVars[1].vt = 3;
			paramVars[1].lVal = Ridges;
			scope(exit) VariantClear(&paramVars[1]);
			paramVars[0].vt = 22;
			paramVars[0].intVal = Style;
			scope(exit) VariantClear(&paramVars[0]);
			auto res = cArtLayer.iDispatch.Invoke(cast(int)ID, &iidNULL, 0, DISPATCH_METHOD, &params, cast(VARIANT*)RT, &exception, &argErr);
			assert(res == S_OK, `Could not invoke COM Function cArtLayer.ApplyZigZag. Error `~to!string(res, 16));
		
		};
		

		// extern (Windows) void(double Amount, PsNoiseDistribution Distribution, bool Monochromatic)
		ApplyAddNoise = cast(typeof(this.ApplyAddNoise)) (double Amount, PsNoiseDistribution Distribution, bool Monochromatic) 
		{
		 
			EXCEPINFO exception;
			uint argErr = 0;
			auto iidNULL = IID_NULL;
			auto RT = new SafeVariantPtr();
			VARIANT[3] paramVars;
			DISPPARAMS params = {rgvarg: paramVars.ptr, cArgs: 3, cNamedArgs: 0};
			auto ID = COMInterface[`ApplyAddNoise`].ID;
			paramVars[2].vt = 5;
			paramVars[2].dblVal = Amount;
			scope(exit) VariantClear(&paramVars[2]);
			paramVars[1].vt = 22;
			paramVars[1].intVal = Distribution;
			scope(exit) VariantClear(&paramVars[1]);
			paramVars[0].vt = 11;
			paramVars[0].intVal = Monochromatic;
			scope(exit) VariantClear(&paramVars[0]);
			auto res = cArtLayer.iDispatch.Invoke(cast(int)ID, &iidNULL, 0, DISPATCH_METHOD, &params, cast(VARIANT*)RT, &exception, &argErr);
			assert(res == S_OK, `Could not invoke COM Function cArtLayer.ApplyAddNoise. Error `~to!string(res, 16));
		
		};
		

		// extern (Windows) void()
		ApplyDespeckle = cast(typeof(this.ApplyDespeckle)) () 
		{
		 
			EXCEPINFO exception;
			uint argErr = 0;
			auto iidNULL = IID_NULL;
			auto RT = new SafeVariantPtr();
			DISPPARAMS params = {rgvarg: null, cArgs: 0, cNamedArgs: 0};
			auto ID = COMInterface[`ApplyDespeckle`].ID;
			auto res = cArtLayer.iDispatch.Invoke(cast(int)ID, &iidNULL, 0, DISPATCH_PROPERTYGET, &params, cast(VARIANT*)RT, &exception, &argErr);
			assert(res == S_OK, `Could not invoke COM Function cArtLayer.ApplyDespeckle. Error `~to!string(res, 16));
		
		};
		

		// extern (Windows) void(int Radius, int Threshold)
		ApplyDustAndScratches = cast(typeof(this.ApplyDustAndScratches)) (int Radius, int Threshold) 
		{
		 
			EXCEPINFO exception;
			uint argErr = 0;
			auto iidNULL = IID_NULL;
			auto RT = new SafeVariantPtr();
			VARIANT[2] paramVars;
			DISPPARAMS params = {rgvarg: paramVars.ptr, cArgs: 2, cNamedArgs: 0};
			auto ID = COMInterface[`ApplyDustAndScratches`].ID;
			paramVars[1].vt = 3;
			paramVars[1].lVal = Radius;
			scope(exit) VariantClear(&paramVars[1]);
			paramVars[0].vt = 3;
			paramVars[0].lVal = Threshold;
			scope(exit) VariantClear(&paramVars[0]);
			auto res = cArtLayer.iDispatch.Invoke(cast(int)ID, &iidNULL, 0, DISPATCH_METHOD, &params, cast(VARIANT*)RT, &exception, &argErr);
			assert(res == S_OK, `Could not invoke COM Function cArtLayer.ApplyDustAndScratches. Error `~to!string(res, 16));
		
		};
		

		// extern (Windows) void(double Radius)
		ApplyMedianNoise = cast(typeof(this.ApplyMedianNoise)) (double Radius) 
		{
		 
			EXCEPINFO exception;
			uint argErr = 0;
			auto iidNULL = IID_NULL;
			auto RT = new SafeVariantPtr();
			VARIANT[1] paramVars;
			DISPPARAMS params = {rgvarg: paramVars.ptr, cArgs: 1, cNamedArgs: 0};
			auto ID = COMInterface[`ApplyMedianNoise`].ID;
			paramVars[0].vt = 5;
			paramVars[0].dblVal = Radius;
			scope(exit) VariantClear(&paramVars[0]);
			auto res = cArtLayer.iDispatch.Invoke(cast(int)ID, &iidNULL, 0, DISPATCH_METHOD, &params, cast(VARIANT*)RT, &exception, &argErr);
			assert(res == S_OK, `Could not invoke COM Function cArtLayer.ApplyMedianNoise. Error `~to!string(res, 16));
		
		};
		

		// extern (Windows) void()
		ApplyClouds = cast(typeof(this.ApplyClouds)) () 
		{
		 
			EXCEPINFO exception;
			uint argErr = 0;
			auto iidNULL = IID_NULL;
			auto RT = new SafeVariantPtr();
			DISPPARAMS params = {rgvarg: null, cArgs: 0, cNamedArgs: 0};
			auto ID = COMInterface[`ApplyClouds`].ID;
			auto res = cArtLayer.iDispatch.Invoke(cast(int)ID, &iidNULL, 0, DISPATCH_PROPERTYGET, &params, cast(VARIANT*)RT, &exception, &argErr);
			assert(res == S_OK, `Could not invoke COM Function cArtLayer.ApplyClouds. Error `~to!string(res, 16));
		
		};
		

		// extern (Windows) void()
		ApplyDifferenceClouds = cast(typeof(this.ApplyDifferenceClouds)) () 
		{
		 
			EXCEPINFO exception;
			uint argErr = 0;
			auto iidNULL = IID_NULL;
			auto RT = new SafeVariantPtr();
			DISPPARAMS params = {rgvarg: null, cArgs: 0, cNamedArgs: 0};
			auto ID = COMInterface[`ApplyDifferenceClouds`].ID;
			auto res = cArtLayer.iDispatch.Invoke(cast(int)ID, &iidNULL, 0, DISPATCH_PROPERTYGET, &params, cast(VARIANT*)RT, &exception, &argErr);
			assert(res == S_OK, `Could not invoke COM Function cArtLayer.ApplyDifferenceClouds. Error `~to!string(res, 16));
		
		};
		

		// extern (Windows) void(int Brightness, VARIANT FlareCenter, PsLensType LensType)
		ApplyLensFlare = cast(typeof(this.ApplyLensFlare)) (int Brightness, VARIANT FlareCenter, PsLensType LensType) 
		{
		 
			EXCEPINFO exception;
			uint argErr = 0;
			auto iidNULL = IID_NULL;
			auto RT = new SafeVariantPtr();
			VARIANT[3] paramVars;
			DISPPARAMS params = {rgvarg: paramVars.ptr, cArgs: 3, cNamedArgs: 0};
			auto ID = COMInterface[`ApplyLensFlare`].ID;
			paramVars[2].vt = 3;
			paramVars[2].lVal = Brightness;
			scope(exit) VariantClear(&paramVars[2]);
			paramVars[1] = FlareCenter;
			paramVars[0].vt = 22;
			paramVars[0].intVal = LensType;
			scope(exit) VariantClear(&paramVars[0]);
			auto res = cArtLayer.iDispatch.Invoke(cast(int)ID, &iidNULL, 0, DISPATCH_METHOD, &params, cast(VARIANT*)RT, &exception, &argErr);
			assert(res == S_OK, `Could not invoke COM Function cArtLayer.ApplyLensFlare. Error `~to!string(res, 16));
		
		};
		

		// extern (Windows) void(wchar* TextureFile)
		ApplyTextureFill = cast(typeof(this.ApplyTextureFill)) (wchar* TextureFile) 
		{
		 
			EXCEPINFO exception;
			uint argErr = 0;
			auto iidNULL = IID_NULL;
			auto RT = new SafeVariantPtr();
			VARIANT[1] paramVars;
			DISPPARAMS params = {rgvarg: paramVars.ptr, cArgs: 1, cNamedArgs: 0};
			auto ID = COMInterface[`ApplyTextureFill`].ID;
			paramVars[0].vt = 8;
			paramVars[0].bstrVal = TextureFile;
			scope(exit) VariantClear(&paramVars[0]);
			auto res = cArtLayer.iDispatch.Invoke(cast(int)ID, &iidNULL, 0, DISPATCH_METHOD, &params, cast(VARIANT*)RT, &exception, &argErr);
			assert(res == S_OK, `Could not invoke COM Function cArtLayer.ApplyTextureFill. Error `~to!string(res, 16));
		
		};
		

		// extern (Windows) void()
		ApplySharpen = cast(typeof(this.ApplySharpen)) () 
		{
		 
			EXCEPINFO exception;
			uint argErr = 0;
			auto iidNULL = IID_NULL;
			auto RT = new SafeVariantPtr();
			DISPPARAMS params = {rgvarg: null, cArgs: 0, cNamedArgs: 0};
			auto ID = COMInterface[`ApplySharpen`].ID;
			auto res = cArtLayer.iDispatch.Invoke(cast(int)ID, &iidNULL, 0, DISPATCH_PROPERTYGET, &params, cast(VARIANT*)RT, &exception, &argErr);
			assert(res == S_OK, `Could not invoke COM Function cArtLayer.ApplySharpen. Error `~to!string(res, 16));
		
		};
		

		// extern (Windows) void()
		ApplySharpenEdges = cast(typeof(this.ApplySharpenEdges)) () 
		{
		 
			EXCEPINFO exception;
			uint argErr = 0;
			auto iidNULL = IID_NULL;
			auto RT = new SafeVariantPtr();
			DISPPARAMS params = {rgvarg: null, cArgs: 0, cNamedArgs: 0};
			auto ID = COMInterface[`ApplySharpenEdges`].ID;
			auto res = cArtLayer.iDispatch.Invoke(cast(int)ID, &iidNULL, 0, DISPATCH_PROPERTYGET, &params, cast(VARIANT*)RT, &exception, &argErr);
			assert(res == S_OK, `Could not invoke COM Function cArtLayer.ApplySharpenEdges. Error `~to!string(res, 16));
		
		};
		

		// extern (Windows) void()
		ApplySharpenMore = cast(typeof(this.ApplySharpenMore)) () 
		{
		 
			EXCEPINFO exception;
			uint argErr = 0;
			auto iidNULL = IID_NULL;
			auto RT = new SafeVariantPtr();
			DISPPARAMS params = {rgvarg: null, cArgs: 0, cNamedArgs: 0};
			auto ID = COMInterface[`ApplySharpenMore`].ID;
			auto res = cArtLayer.iDispatch.Invoke(cast(int)ID, &iidNULL, 0, DISPATCH_PROPERTYGET, &params, cast(VARIANT*)RT, &exception, &argErr);
			assert(res == S_OK, `Could not invoke COM Function cArtLayer.ApplySharpenMore. Error `~to!string(res, 16));
		
		};
		

		// extern (Windows) void(double Amount, double Radius, int Threshold)
		ApplyUnSharpMask = cast(typeof(this.ApplyUnSharpMask)) (double Amount, double Radius, int Threshold) 
		{
		 
			EXCEPINFO exception;
			uint argErr = 0;
			auto iidNULL = IID_NULL;
			auto RT = new SafeVariantPtr();
			VARIANT[3] paramVars;
			DISPPARAMS params = {rgvarg: paramVars.ptr, cArgs: 3, cNamedArgs: 0};
			auto ID = COMInterface[`ApplyUnSharpMask`].ID;
			paramVars[2].vt = 5;
			paramVars[2].dblVal = Amount;
			scope(exit) VariantClear(&paramVars[2]);
			paramVars[1].vt = 5;
			paramVars[1].dblVal = Radius;
			scope(exit) VariantClear(&paramVars[1]);
			paramVars[0].vt = 3;
			paramVars[0].lVal = Threshold;
			scope(exit) VariantClear(&paramVars[0]);
			auto res = cArtLayer.iDispatch.Invoke(cast(int)ID, &iidNULL, 0, DISPATCH_METHOD, &params, cast(VARIANT*)RT, &exception, &argErr);
			assert(res == S_OK, `Could not invoke COM Function cArtLayer.ApplyUnSharpMask. Error `~to!string(res, 16));
		
		};
		

		// extern (Windows) void(PsEliminateFields EliminateFields, PsCreateFields CreateFields)
		ApplyDeInterlace = cast(typeof(this.ApplyDeInterlace)) (PsEliminateFields EliminateFields, PsCreateFields CreateFields) 
		{
		 
			EXCEPINFO exception;
			uint argErr = 0;
			auto iidNULL = IID_NULL;
			auto RT = new SafeVariantPtr();
			VARIANT[2] paramVars;
			DISPPARAMS params = {rgvarg: paramVars.ptr, cArgs: 2, cNamedArgs: 0};
			auto ID = COMInterface[`ApplyDeInterlace`].ID;
			paramVars[1].vt = 22;
			paramVars[1].intVal = EliminateFields;
			scope(exit) VariantClear(&paramVars[1]);
			paramVars[0].vt = 22;
			paramVars[0].intVal = CreateFields;
			scope(exit) VariantClear(&paramVars[0]);
			auto res = cArtLayer.iDispatch.Invoke(cast(int)ID, &iidNULL, 0, DISPATCH_METHOD, &params, cast(VARIANT*)RT, &exception, &argErr);
			assert(res == S_OK, `Could not invoke COM Function cArtLayer.ApplyDeInterlace. Error `~to!string(res, 16));
		
		};
		

		// extern (Windows) void()
		ApplyNTSC = cast(typeof(this.ApplyNTSC)) () 
		{
		 
			EXCEPINFO exception;
			uint argErr = 0;
			auto iidNULL = IID_NULL;
			auto RT = new SafeVariantPtr();
			DISPPARAMS params = {rgvarg: null, cArgs: 0, cNamedArgs: 0};
			auto ID = COMInterface[`ApplyNTSC`].ID;
			auto res = cArtLayer.iDispatch.Invoke(cast(int)ID, &iidNULL, 0, DISPATCH_PROPERTYGET, &params, cast(VARIANT*)RT, &exception, &argErr);
			assert(res == S_OK, `Could not invoke COM Function cArtLayer.ApplyNTSC. Error `~to!string(res, 16));
		
		};
		

		// extern (Windows) void(VARIANT Characteristics, int Scale, int Offset)
		ApplyCustomFilter = cast(typeof(this.ApplyCustomFilter)) (VARIANT Characteristics, int Scale, int Offset) 
		{
		 
			EXCEPINFO exception;
			uint argErr = 0;
			auto iidNULL = IID_NULL;
			auto RT = new SafeVariantPtr();
			VARIANT[3] paramVars;
			DISPPARAMS params = {rgvarg: paramVars.ptr, cArgs: 3, cNamedArgs: 0};
			auto ID = COMInterface[`ApplyCustomFilter`].ID;
			paramVars[2] = Characteristics;
			paramVars[1].vt = 3;
			paramVars[1].lVal = Scale;
			scope(exit) VariantClear(&paramVars[1]);
			paramVars[0].vt = 3;
			paramVars[0].lVal = Offset;
			scope(exit) VariantClear(&paramVars[0]);
			auto res = cArtLayer.iDispatch.Invoke(cast(int)ID, &iidNULL, 0, DISPATCH_METHOD, &params, cast(VARIANT*)RT, &exception, &argErr);
			assert(res == S_OK, `Could not invoke COM Function cArtLayer.ApplyCustomFilter. Error `~to!string(res, 16));
		
		};
		

		// extern (Windows) void(double Radius)
		ApplyHighPass = cast(typeof(this.ApplyHighPass)) (double Radius) 
		{
		 
			EXCEPINFO exception;
			uint argErr = 0;
			auto iidNULL = IID_NULL;
			auto RT = new SafeVariantPtr();
			VARIANT[1] paramVars;
			DISPPARAMS params = {rgvarg: paramVars.ptr, cArgs: 1, cNamedArgs: 0};
			auto ID = COMInterface[`ApplyHighPass`].ID;
			paramVars[0].vt = 5;
			paramVars[0].dblVal = Radius;
			scope(exit) VariantClear(&paramVars[0]);
			auto res = cArtLayer.iDispatch.Invoke(cast(int)ID, &iidNULL, 0, DISPATCH_METHOD, &params, cast(VARIANT*)RT, &exception, &argErr);
			assert(res == S_OK, `Could not invoke COM Function cArtLayer.ApplyHighPass. Error `~to!string(res, 16));
		
		};
		

		// extern (Windows) void(double Radius)
		ApplyMaximum = cast(typeof(this.ApplyMaximum)) (double Radius) 
		{
		 
			EXCEPINFO exception;
			uint argErr = 0;
			auto iidNULL = IID_NULL;
			auto RT = new SafeVariantPtr();
			VARIANT[1] paramVars;
			DISPPARAMS params = {rgvarg: paramVars.ptr, cArgs: 1, cNamedArgs: 0};
			auto ID = COMInterface[`ApplyMaximum`].ID;
			paramVars[0].vt = 5;
			paramVars[0].dblVal = Radius;
			scope(exit) VariantClear(&paramVars[0]);
			auto res = cArtLayer.iDispatch.Invoke(cast(int)ID, &iidNULL, 0, DISPATCH_METHOD, &params, cast(VARIANT*)RT, &exception, &argErr);
			assert(res == S_OK, `Could not invoke COM Function cArtLayer.ApplyMaximum. Error `~to!string(res, 16));
		
		};
		

		// extern (Windows) void(double Radius)
		ApplyMinimum = cast(typeof(this.ApplyMinimum)) (double Radius) 
		{
		 
			EXCEPINFO exception;
			uint argErr = 0;
			auto iidNULL = IID_NULL;
			auto RT = new SafeVariantPtr();
			VARIANT[1] paramVars;
			DISPPARAMS params = {rgvarg: paramVars.ptr, cArgs: 1, cNamedArgs: 0};
			auto ID = COMInterface[`ApplyMinimum`].ID;
			paramVars[0].vt = 5;
			paramVars[0].dblVal = Radius;
			scope(exit) VariantClear(&paramVars[0]);
			auto res = cArtLayer.iDispatch.Invoke(cast(int)ID, &iidNULL, 0, DISPATCH_METHOD, &params, cast(VARIANT*)RT, &exception, &argErr);
			assert(res == S_OK, `Could not invoke COM Function cArtLayer.ApplyMinimum. Error `~to!string(res, 16));
		
		};
		

		// extern (Windows) void(double Horizontal, double Vertical, PsOffsetUndefinedAreas UndefinedAreas)
		ApplyOffset = cast(typeof(this.ApplyOffset)) (double Horizontal, double Vertical, PsOffsetUndefinedAreas UndefinedAreas) 
		{
		 
			EXCEPINFO exception;
			uint argErr = 0;
			auto iidNULL = IID_NULL;
			auto RT = new SafeVariantPtr();
			VARIANT[3] paramVars;
			DISPPARAMS params = {rgvarg: paramVars.ptr, cArgs: 3, cNamedArgs: 0};
			auto ID = COMInterface[`ApplyOffset`].ID;
			paramVars[2].vt = 5;
			paramVars[2].dblVal = Horizontal;
			scope(exit) VariantClear(&paramVars[2]);
			paramVars[1].vt = 5;
			paramVars[1].dblVal = Vertical;
			scope(exit) VariantClear(&paramVars[1]);
			paramVars[0].vt = 22;
			paramVars[0].intVal = UndefinedAreas;
			scope(exit) VariantClear(&paramVars[0]);
			auto res = cArtLayer.iDispatch.Invoke(cast(int)ID, &iidNULL, 0, DISPATCH_METHOD, &params, cast(VARIANT*)RT, &exception, &argErr);
			assert(res == S_OK, `Could not invoke COM Function cArtLayer.ApplyOffset. Error `~to!string(res, 16));
		
		};
		

		// extern (Windows) void(int InRangeStart, int InRangeEnd, double InRangeGamma, int OutRangeStart, int OutRangeEnd)
		AdjustLevels = cast(typeof(this.AdjustLevels)) (int InRangeStart, int InRangeEnd, double InRangeGamma, int OutRangeStart, int OutRangeEnd) 
		{
		 
			EXCEPINFO exception;
			uint argErr = 0;
			auto iidNULL = IID_NULL;
			auto RT = new SafeVariantPtr();
			VARIANT[5] paramVars;
			DISPPARAMS params = {rgvarg: paramVars.ptr, cArgs: 5, cNamedArgs: 0};
			auto ID = COMInterface[`AdjustLevels`].ID;
			paramVars[4].vt = 3;
			paramVars[4].lVal = InRangeStart;
			scope(exit) VariantClear(&paramVars[4]);
			paramVars[3].vt = 3;
			paramVars[3].lVal = InRangeEnd;
			scope(exit) VariantClear(&paramVars[3]);
			paramVars[2].vt = 5;
			paramVars[2].dblVal = InRangeGamma;
			scope(exit) VariantClear(&paramVars[2]);
			paramVars[1].vt = 3;
			paramVars[1].lVal = OutRangeStart;
			scope(exit) VariantClear(&paramVars[1]);
			paramVars[0].vt = 3;
			paramVars[0].lVal = OutRangeEnd;
			scope(exit) VariantClear(&paramVars[0]);
			auto res = cArtLayer.iDispatch.Invoke(cast(int)ID, &iidNULL, 0, DISPATCH_METHOD, &params, cast(VARIANT*)RT, &exception, &argErr);
			assert(res == S_OK, `Could not invoke COM Function cArtLayer.AdjustLevels. Error `~to!string(res, 16));
		
		};
		

		// extern (Windows) void()
		AutoLevels = cast(typeof(this.AutoLevels)) () 
		{
		 
			EXCEPINFO exception;
			uint argErr = 0;
			auto iidNULL = IID_NULL;
			auto RT = new SafeVariantPtr();
			DISPPARAMS params = {rgvarg: null, cArgs: 0, cNamedArgs: 0};
			auto ID = COMInterface[`AutoLevels`].ID;
			auto res = cArtLayer.iDispatch.Invoke(cast(int)ID, &iidNULL, 0, DISPATCH_PROPERTYGET, &params, cast(VARIANT*)RT, &exception, &argErr);
			assert(res == S_OK, `Could not invoke COM Function cArtLayer.AutoLevels. Error `~to!string(res, 16));
		
		};
		

		// extern (Windows) void()
		AutoContrast = cast(typeof(this.AutoContrast)) () 
		{
		 
			EXCEPINFO exception;
			uint argErr = 0;
			auto iidNULL = IID_NULL;
			auto RT = new SafeVariantPtr();
			DISPPARAMS params = {rgvarg: null, cArgs: 0, cNamedArgs: 0};
			auto ID = COMInterface[`AutoContrast`].ID;
			auto res = cArtLayer.iDispatch.Invoke(cast(int)ID, &iidNULL, 0, DISPATCH_PROPERTYGET, &params, cast(VARIANT*)RT, &exception, &argErr);
			assert(res == S_OK, `Could not invoke COM Function cArtLayer.AutoContrast. Error `~to!string(res, 16));
		
		};
		

		// extern (Windows) void(VARIANT CurveShape)
		AdjustCurves = cast(typeof(this.AdjustCurves)) (VARIANT CurveShape) 
		{
		 
			EXCEPINFO exception;
			uint argErr = 0;
			auto iidNULL = IID_NULL;
			auto RT = new SafeVariantPtr();
			VARIANT[1] paramVars;
			DISPPARAMS params = {rgvarg: paramVars.ptr, cArgs: 1, cNamedArgs: 0};
			auto ID = COMInterface[`AdjustCurves`].ID;
			paramVars[0] = CurveShape;
			auto res = cArtLayer.iDispatch.Invoke(cast(int)ID, &iidNULL, 0, DISPATCH_METHOD, &params, cast(VARIANT*)RT, &exception, &argErr);
			assert(res == S_OK, `Could not invoke COM Function cArtLayer.AdjustCurves. Error `~to!string(res, 16));
		
		};
		

		// extern (Windows) void(int Brightness, int Contrast)
		AdjustBrightnessContrast = cast(typeof(this.AdjustBrightnessContrast)) (int Brightness, int Contrast) 
		{
		 
			EXCEPINFO exception;
			uint argErr = 0;
			auto iidNULL = IID_NULL;
			auto RT = new SafeVariantPtr();
			VARIANT[2] paramVars;
			DISPPARAMS params = {rgvarg: paramVars.ptr, cArgs: 2, cNamedArgs: 0};
			auto ID = COMInterface[`AdjustBrightnessContrast`].ID;
			paramVars[1].vt = 3;
			paramVars[1].lVal = Brightness;
			scope(exit) VariantClear(&paramVars[1]);
			paramVars[0].vt = 3;
			paramVars[0].lVal = Contrast;
			scope(exit) VariantClear(&paramVars[0]);
			auto res = cArtLayer.iDispatch.Invoke(cast(int)ID, &iidNULL, 0, DISPATCH_METHOD, &params, cast(VARIANT*)RT, &exception, &argErr);
			assert(res == S_OK, `Could not invoke COM Function cArtLayer.AdjustBrightnessContrast. Error `~to!string(res, 16));
		
		};
		

		// extern (Windows) void(VARIANT Shadows, VARIANT Midtones, VARIANT Highlights, VARIANT PreserveLuminosity)
		AdjustColorBalance = cast(typeof(this.AdjustColorBalance)) (VARIANT Shadows, VARIANT Midtones, VARIANT Highlights, VARIANT PreserveLuminosity) 
		{
		 
			EXCEPINFO exception;
			uint argErr = 0;
			auto iidNULL = IID_NULL;
			auto RT = new SafeVariantPtr();
			VARIANT[4] paramVars;
			DISPPARAMS params = {rgvarg: paramVars.ptr, cArgs: 4, cNamedArgs: 0};
			auto ID = COMInterface[`AdjustColorBalance`].ID;
			paramVars[3] = Shadows;
			paramVars[2] = Midtones;
			paramVars[1] = Highlights;
			paramVars[0] = PreserveLuminosity;
			auto res = cArtLayer.iDispatch.Invoke(cast(int)ID, &iidNULL, 0, DISPATCH_METHOD, &params, cast(VARIANT*)RT, &exception, &argErr);
			assert(res == S_OK, `Could not invoke COM Function cArtLayer.AdjustColorBalance. Error `~to!string(res, 16));
		
		};
		

		// extern (Windows) void()
		Desaturate = cast(typeof(this.Desaturate)) () 
		{
		 
			EXCEPINFO exception;
			uint argErr = 0;
			auto iidNULL = IID_NULL;
			auto RT = new SafeVariantPtr();
			DISPPARAMS params = {rgvarg: null, cArgs: 0, cNamedArgs: 0};
			auto ID = COMInterface[`Desaturate`].ID;
			auto res = cArtLayer.iDispatch.Invoke(cast(int)ID, &iidNULL, 0, DISPATCH_PROPERTYGET, &params, cast(VARIANT*)RT, &exception, &argErr);
			assert(res == S_OK, `Could not invoke COM Function cArtLayer.Desaturate. Error `~to!string(res, 16));
		
		};
		

		// extern (Windows) void(PsAdjustmentReference SelectionMethod, VARIANT Reds, VARIANT Yellows, VARIANT Greens, VARIANT Cyans, VARIANT Blues, VARIANT Magentas, VARIANT Whites, VARIANT Neutrals, VARIANT Blacks)
		SelectiveColor = cast(typeof(this.SelectiveColor)) (PsAdjustmentReference SelectionMethod, VARIANT Reds, VARIANT Yellows, VARIANT Greens, VARIANT Cyans, VARIANT Blues, VARIANT Magentas, VARIANT Whites, VARIANT Neutrals, VARIANT Blacks) 
		{
		 
			EXCEPINFO exception;
			uint argErr = 0;
			auto iidNULL = IID_NULL;
			auto RT = new SafeVariantPtr();
			VARIANT[10] paramVars;
			DISPPARAMS params = {rgvarg: paramVars.ptr, cArgs: 10, cNamedArgs: 0};
			auto ID = COMInterface[`SelectiveColor`].ID;
			paramVars[9].vt = 22;
			paramVars[9].intVal = SelectionMethod;
			scope(exit) VariantClear(&paramVars[9]);
			paramVars[8] = Reds;
			paramVars[7] = Yellows;
			paramVars[6] = Greens;
			paramVars[5] = Cyans;
			paramVars[4] = Blues;
			paramVars[3] = Magentas;
			paramVars[2] = Whites;
			paramVars[1] = Neutrals;
			paramVars[0] = Blacks;
			auto res = cArtLayer.iDispatch.Invoke(cast(int)ID, &iidNULL, 0, DISPATCH_METHOD, &params, cast(VARIANT*)RT, &exception, &argErr);
			assert(res == S_OK, `Could not invoke COM Function cArtLayer.SelectiveColor. Error `~to!string(res, 16));
		
		};
		

		// extern (Windows) void(VARIANT OutChannels, VARIANT Monochrome)
		MixChannels = cast(typeof(this.MixChannels)) (VARIANT OutChannels, VARIANT Monochrome) 
		{
		 
			EXCEPINFO exception;
			uint argErr = 0;
			auto iidNULL = IID_NULL;
			auto RT = new SafeVariantPtr();
			VARIANT[2] paramVars;
			DISPPARAMS params = {rgvarg: paramVars.ptr, cArgs: 2, cNamedArgs: 0};
			auto ID = COMInterface[`MixChannels`].ID;
			paramVars[1] = OutChannels;
			paramVars[0] = Monochrome;
			auto res = cArtLayer.iDispatch.Invoke(cast(int)ID, &iidNULL, 0, DISPATCH_METHOD, &params, cast(VARIANT*)RT, &exception, &argErr);
			assert(res == S_OK, `Could not invoke COM Function cArtLayer.MixChannels. Error `~to!string(res, 16));
		
		};
		

		// extern (Windows) void()
		Invert = cast(typeof(this.Invert)) () 
		{
		 
			EXCEPINFO exception;
			uint argErr = 0;
			auto iidNULL = IID_NULL;
			auto RT = new SafeVariantPtr();
			DISPPARAMS params = {rgvarg: null, cArgs: 0, cNamedArgs: 0};
			auto ID = COMInterface[`Invert`].ID;
			auto res = cArtLayer.iDispatch.Invoke(cast(int)ID, &iidNULL, 0, DISPATCH_PROPERTYGET, &params, cast(VARIANT*)RT, &exception, &argErr);
			assert(res == S_OK, `Could not invoke COM Function cArtLayer.Invert. Error `~to!string(res, 16));
		
		};
		

		// extern (Windows) void()
		Equalize = cast(typeof(this.Equalize)) () 
		{
		 
			EXCEPINFO exception;
			uint argErr = 0;
			auto iidNULL = IID_NULL;
			auto RT = new SafeVariantPtr();
			DISPPARAMS params = {rgvarg: null, cArgs: 0, cNamedArgs: 0};
			auto ID = COMInterface[`Equalize`].ID;
			auto res = cArtLayer.iDispatch.Invoke(cast(int)ID, &iidNULL, 0, DISPATCH_PROPERTYGET, &params, cast(VARIANT*)RT, &exception, &argErr);
			assert(res == S_OK, `Could not invoke COM Function cArtLayer.Equalize. Error `~to!string(res, 16));
		
		};
		

		// extern (Windows) void(int Level)
		Threshold = cast(typeof(this.Threshold)) (int Level) 
		{
		 
			EXCEPINFO exception;
			uint argErr = 0;
			auto iidNULL = IID_NULL;
			auto RT = new SafeVariantPtr();
			VARIANT[1] paramVars;
			DISPPARAMS params = {rgvarg: paramVars.ptr, cArgs: 1, cNamedArgs: 0};
			auto ID = COMInterface[`Threshold`].ID;
			paramVars[0].vt = 3;
			paramVars[0].lVal = Level;
			scope(exit) VariantClear(&paramVars[0]);
			auto res = cArtLayer.iDispatch.Invoke(cast(int)ID, &iidNULL, 0, DISPATCH_METHOD, &params, cast(VARIANT*)RT, &exception, &argErr);
			assert(res == S_OK, `Could not invoke COM Function cArtLayer.Threshold. Error `~to!string(res, 16));
		
		};
		

		// extern (Windows) void(int Levels)
		Posterize = cast(typeof(this.Posterize)) (int Levels) 
		{
		 
			EXCEPINFO exception;
			uint argErr = 0;
			auto iidNULL = IID_NULL;
			auto RT = new SafeVariantPtr();
			VARIANT[1] paramVars;
			DISPPARAMS params = {rgvarg: paramVars.ptr, cArgs: 1, cNamedArgs: 0};
			auto ID = COMInterface[`Posterize`].ID;
			paramVars[0].vt = 3;
			paramVars[0].lVal = Levels;
			scope(exit) VariantClear(&paramVars[0]);
			auto res = cArtLayer.iDispatch.Invoke(cast(int)ID, &iidNULL, 0, DISPATCH_METHOD, &params, cast(VARIANT*)RT, &exception, &argErr);
			assert(res == S_OK, `Could not invoke COM Function cArtLayer.Posterize. Error `~to!string(res, 16));
		
		};
		

		// extern (Windows) void(VARIANT FillColor, VARIANT Density, VARIANT PreserveLuminosity)
		PhotoFilter = cast(typeof(this.PhotoFilter)) (VARIANT FillColor, VARIANT Density, VARIANT PreserveLuminosity) 
		{
		 
			EXCEPINFO exception;
			uint argErr = 0;
			auto iidNULL = IID_NULL;
			auto RT = new SafeVariantPtr();
			VARIANT[3] paramVars;
			DISPPARAMS params = {rgvarg: paramVars.ptr, cArgs: 3, cNamedArgs: 0};
			auto ID = COMInterface[`PhotoFilter`].ID;
			paramVars[2] = FillColor;
			paramVars[1] = Density;
			paramVars[0] = PreserveLuminosity;
			auto res = cArtLayer.iDispatch.Invoke(cast(int)ID, &iidNULL, 0, DISPATCH_METHOD, &params, cast(VARIANT*)RT, &exception, &argErr);
			assert(res == S_OK, `Could not invoke COM Function cArtLayer.PhotoFilter. Error `~to!string(res, 16));
		
		};
		

		// extern (Windows) void(VARIANT ShadowAmount, VARIANT ShadowWidth, VARIANT ShadowRaduis, VARIANT HighlightAmount, VARIANT HighlightWidth, VARIANT HighlightRaduis, VARIANT ColorCorrection, VARIANT MidtoneContrast, VARIANT BlackClip, VARIANT WhiteClip)
		ShadowHighlight = cast(typeof(this.ShadowHighlight)) (VARIANT ShadowAmount, VARIANT ShadowWidth, VARIANT ShadowRaduis, VARIANT HighlightAmount, VARIANT HighlightWidth, VARIANT HighlightRaduis, VARIANT ColorCorrection, VARIANT MidtoneContrast, VARIANT BlackClip, VARIANT WhiteClip) 
		{
		 
			EXCEPINFO exception;
			uint argErr = 0;
			auto iidNULL = IID_NULL;
			auto RT = new SafeVariantPtr();
			VARIANT[10] paramVars;
			DISPPARAMS params = {rgvarg: paramVars.ptr, cArgs: 10, cNamedArgs: 0};
			auto ID = COMInterface[`ShadowHighlight`].ID;
			paramVars[9] = ShadowAmount;
			paramVars[8] = ShadowWidth;
			paramVars[7] = ShadowRaduis;
			paramVars[6] = HighlightAmount;
			paramVars[5] = HighlightWidth;
			paramVars[4] = HighlightRaduis;
			paramVars[3] = ColorCorrection;
			paramVars[2] = MidtoneContrast;
			paramVars[1] = BlackClip;
			paramVars[0] = WhiteClip;
			auto res = cArtLayer.iDispatch.Invoke(cast(int)ID, &iidNULL, 0, DISPATCH_METHOD, &params, cast(VARIANT*)RT, &exception, &argErr);
			assert(res == S_OK, `Could not invoke COM Function cArtLayer.ShadowHighlight. Error `~to!string(res, 16));
		
		};
		

		// extern (Windows) void()
		Unlink = cast(typeof(this.Unlink)) () 
		{
		 
			EXCEPINFO exception;
			uint argErr = 0;
			auto iidNULL = IID_NULL;
			auto RT = new SafeVariantPtr();
			DISPPARAMS params = {rgvarg: null, cArgs: 0, cNamedArgs: 0};
			auto ID = COMInterface[`Unlink`].ID;
			auto res = cArtLayer.iDispatch.Invoke(cast(int)ID, &iidNULL, 0, DISPATCH_PROPERTYGET, &params, cast(VARIANT*)RT, &exception, &argErr);
			assert(res == S_OK, `Could not invoke COM Function cArtLayer.Unlink. Error `~to!string(res, 16));
		
		};
		

		// extern (Windows) void(IDispatch With)
		Link = cast(typeof(this.Link)) (IDispatch With) 
		{
		 
			EXCEPINFO exception;
			uint argErr = 0;
			auto iidNULL = IID_NULL;
			auto RT = new SafeVariantPtr();
			VARIANT[1] paramVars;
			DISPPARAMS params = {rgvarg: paramVars.ptr, cArgs: 1, cNamedArgs: 0};
			auto ID = COMInterface[`Link`].ID;
			paramVars[0].vt = 13;
			paramVars[0].punkVal = With;
			scope(exit) VariantClear(&paramVars[0]);
			auto res = cArtLayer.iDispatch.Invoke(cast(int)ID, &iidNULL, 0, DISPATCH_METHOD, &params, cast(VARIANT*)RT, &exception, &argErr);
			assert(res == S_OK, `Could not invoke COM Function cArtLayer.Link. Error `~to!string(res, 16));
		
		};
		

		// extern (Windows) void(VARIANT DeltaX, VARIANT DeltaY)
		Translate = cast(typeof(this.Translate)) (VARIANT DeltaX, VARIANT DeltaY) 
		{
		 
			EXCEPINFO exception;
			uint argErr = 0;
			auto iidNULL = IID_NULL;
			auto RT = new SafeVariantPtr();
			VARIANT[2] paramVars;
			DISPPARAMS params = {rgvarg: paramVars.ptr, cArgs: 2, cNamedArgs: 0};
			auto ID = COMInterface[`Translate`].ID;
			paramVars[1] = DeltaX;
			paramVars[0] = DeltaY;
			auto res = cArtLayer.iDispatch.Invoke(cast(int)ID, &iidNULL, 0, DISPATCH_METHOD, &params, cast(VARIANT*)RT, &exception, &argErr);
			assert(res == S_OK, `Could not invoke COM Function cArtLayer.Translate. Error `~to!string(res, 16));
		
		};
		

		// extern (Windows) void(double Angle, VARIANT Anchor)
		Rotate = cast(typeof(this.Rotate)) (double Angle, VARIANT Anchor) 
		{
		 
			EXCEPINFO exception;
			uint argErr = 0;
			auto iidNULL = IID_NULL;
			auto RT = new SafeVariantPtr();
			VARIANT[2] paramVars;
			DISPPARAMS params = {rgvarg: paramVars.ptr, cArgs: 2, cNamedArgs: 0};
			auto ID = COMInterface[`Rotate`].ID;
			paramVars[1].vt = 5;
			paramVars[1].dblVal = Angle;
			scope(exit) VariantClear(&paramVars[1]);
			paramVars[0] = Anchor;
			auto res = cArtLayer.iDispatch.Invoke(cast(int)ID, &iidNULL, 0, DISPATCH_METHOD, &params, cast(VARIANT*)RT, &exception, &argErr);
			assert(res == S_OK, `Could not invoke COM Function cArtLayer.Rotate. Error `~to!string(res, 16));
		
		};
		

		// extern (Windows) void(VARIANT Horizontal, VARIANT Vertical, VARIANT Anchor)
		Resize = cast(typeof(this.Resize)) (VARIANT Horizontal, VARIANT Vertical, VARIANT Anchor) 
		{
		 
			EXCEPINFO exception;
			uint argErr = 0;
			auto iidNULL = IID_NULL;
			auto RT = new SafeVariantPtr();
			VARIANT[3] paramVars;
			DISPPARAMS params = {rgvarg: paramVars.ptr, cArgs: 3, cNamedArgs: 0};
			auto ID = COMInterface[`Resize`].ID;
			paramVars[2] = Horizontal;
			paramVars[1] = Vertical;
			paramVars[0] = Anchor;
			auto res = cArtLayer.iDispatch.Invoke(cast(int)ID, &iidNULL, 0, DISPATCH_METHOD, &params, cast(VARIANT*)RT, &exception, &argErr);
			assert(res == S_OK, `Could not invoke COM Function cArtLayer.Resize. Error `~to!string(res, 16));
		
		};
		

		// extern (Windows) void(IDispatch Container)
		MoveToBeginning = cast(typeof(this.MoveToBeginning)) (IDispatch Container) 
		{
		 
			EXCEPINFO exception;
			uint argErr = 0;
			auto iidNULL = IID_NULL;
			auto RT = new SafeVariantPtr();
			VARIANT[1] paramVars;
			DISPPARAMS params = {rgvarg: paramVars.ptr, cArgs: 1, cNamedArgs: 0};
			auto ID = COMInterface[`MoveToBeginning`].ID;
			paramVars[0].vt = 13;
			paramVars[0].punkVal = Container;
			scope(exit) VariantClear(&paramVars[0]);
			auto res = cArtLayer.iDispatch.Invoke(cast(int)ID, &iidNULL, 0, DISPATCH_METHOD, &params, cast(VARIANT*)RT, &exception, &argErr);
			assert(res == S_OK, `Could not invoke COM Function cArtLayer.MoveToBeginning. Error `~to!string(res, 16));
		
		};
		

		// extern (Windows) void(IDispatch Container)
		MoveToEnd = cast(typeof(this.MoveToEnd)) (IDispatch Container) 
		{
		 
			EXCEPINFO exception;
			uint argErr = 0;
			auto iidNULL = IID_NULL;
			auto RT = new SafeVariantPtr();
			VARIANT[1] paramVars;
			DISPPARAMS params = {rgvarg: paramVars.ptr, cArgs: 1, cNamedArgs: 0};
			auto ID = COMInterface[`MoveToEnd`].ID;
			paramVars[0].vt = 13;
			paramVars[0].punkVal = Container;
			scope(exit) VariantClear(&paramVars[0]);
			auto res = cArtLayer.iDispatch.Invoke(cast(int)ID, &iidNULL, 0, DISPATCH_METHOD, &params, cast(VARIANT*)RT, &exception, &argErr);
			assert(res == S_OK, `Could not invoke COM Function cArtLayer.MoveToEnd. Error `~to!string(res, 16));
		
		};
		

		// extern (Windows) void(IDispatch RelativeObject)
		MoveBefore = cast(typeof(this.MoveBefore)) (IDispatch RelativeObject) 
		{
		 
			EXCEPINFO exception;
			uint argErr = 0;
			auto iidNULL = IID_NULL;
			auto RT = new SafeVariantPtr();
			VARIANT[1] paramVars;
			DISPPARAMS params = {rgvarg: paramVars.ptr, cArgs: 1, cNamedArgs: 0};
			auto ID = COMInterface[`MoveBefore`].ID;
			paramVars[0].vt = 13;
			paramVars[0].punkVal = RelativeObject;
			scope(exit) VariantClear(&paramVars[0]);
			auto res = cArtLayer.iDispatch.Invoke(cast(int)ID, &iidNULL, 0, DISPATCH_METHOD, &params, cast(VARIANT*)RT, &exception, &argErr);
			assert(res == S_OK, `Could not invoke COM Function cArtLayer.MoveBefore. Error `~to!string(res, 16));
		
		};
		

		// extern (Windows) void(IDispatch RelativeObject)
		MoveAfter = cast(typeof(this.MoveAfter)) (IDispatch RelativeObject) 
		{
		 
			EXCEPINFO exception;
			uint argErr = 0;
			auto iidNULL = IID_NULL;
			auto RT = new SafeVariantPtr();
			VARIANT[1] paramVars;
			DISPPARAMS params = {rgvarg: paramVars.ptr, cArgs: 1, cNamedArgs: 0};
			auto ID = COMInterface[`MoveAfter`].ID;
			paramVars[0].vt = 13;
			paramVars[0].punkVal = RelativeObject;
			scope(exit) VariantClear(&paramVars[0]);
			auto res = cArtLayer.iDispatch.Invoke(cast(int)ID, &iidNULL, 0, DISPATCH_METHOD, &params, cast(VARIANT*)RT, &exception, &argErr);
			assert(res == S_OK, `Could not invoke COM Function cArtLayer.MoveAfter. Error `~to!string(res, 16));
		
		};
		

		// extern (Windows) IDispatch(VARIANT RelativeObject, VARIANT InsertionLocation)
		Duplicate = cast(typeof(this.Duplicate)) (VARIANT RelativeObject, VARIANT InsertionLocation) 
		{
		 	auto key = `ArtLayer.Dispatch`;
		
			EXCEPINFO exception;
			uint argErr = 0;
			auto iidNULL = IID_NULL;
			auto RT = new SafeVariantPtr();
			VARIANT[2] paramVars;
			DISPPARAMS params = {rgvarg: paramVars.ptr, cArgs: 2, cNamedArgs: 0};
			auto ID = COMInterface[`Duplicate`].ID;
			paramVars[1] = RelativeObject;
			paramVars[0] = InsertionLocation;
			auto res = cArtLayer.iDispatch.Invoke(cast(int)ID, &iidNULL, 0, DISPATCH_METHOD, &params, cast(VARIANT*)RT, &exception, &argErr);
			assert(res == S_OK, `Could not invoke COM Function cArtLayer.Duplicate. Error `~to!string(res, 16));
			return cast(IDispatch)(RT.pdispVal);
		
		};
		

		// extern (Windows) void(IDispatch RelativeObject, PsElementPlacement InsertionLocation)
		Move = cast(typeof(this.Move)) (IDispatch RelativeObject, PsElementPlacement InsertionLocation) 
		{
		 
			EXCEPINFO exception;
			uint argErr = 0;
			auto iidNULL = IID_NULL;
			auto RT = new SafeVariantPtr();
			VARIANT[2] paramVars;
			DISPPARAMS params = {rgvarg: paramVars.ptr, cArgs: 2, cNamedArgs: 0};
			auto ID = COMInterface[`Move`].ID;
			paramVars[1].vt = 13;
			paramVars[1].punkVal = RelativeObject;
			scope(exit) VariantClear(&paramVars[1]);
			paramVars[0].vt = 22;
			paramVars[0].intVal = InsertionLocation;
			scope(exit) VariantClear(&paramVars[0]);
			auto res = cArtLayer.iDispatch.Invoke(cast(int)ID, &iidNULL, 0, DISPATCH_METHOD, &params, cast(VARIANT*)RT, &exception, &argErr);
			assert(res == S_OK, `Could not invoke COM Function cArtLayer.Move. Error `~to!string(res, 16));
		
		};
		

		// extern (Windows) void()
		Delete = cast(typeof(this.Delete)) () 
		{
		 
			EXCEPINFO exception;
			uint argErr = 0;
			auto iidNULL = IID_NULL;
			auto RT = new SafeVariantPtr();
			DISPPARAMS params = {rgvarg: null, cArgs: 0, cNamedArgs: 0};
			auto ID = COMInterface[`Delete`].ID;
			auto res = cArtLayer.iDispatch.Invoke(cast(int)ID, &iidNULL, 0, DISPATCH_PROPERTYGET, &params, cast(VARIANT*)RT, &exception, &argErr);
			assert(res == S_OK, `Could not invoke COM Function cArtLayer.Delete. Error `~to!string(res, 16));
		
		};
		
	}
	~this(){ if (iDispatch) iDispatch.Release(); }
}

public class cTextItem
{
	import mPhotoshopCOM, std.conv, mCOM2D, core.sys.windows.windows, core.sys.windows.com, core.sys.windows.wtypes, core.sys.windows.basetyps, core.sys.windows.unknwn, core.sys.windows.oaidl;
	public IDispatch iDispatch = null;
	public IDispatch iDispatchParent = null;
	public IDispatch iDispatchQuery = null;
	public GUID iID = IID.init;
	public GUID clsID = IID.init;
	public static bool Cache = true;
	public static bool FastCache = true;

	public PsAntiAlias delegate() getAntiAliasMethod;
	PsAntiAlias AntiAliasMethod() { return getAntiAliasMethod(); } 
	public void delegate(PsAntiAlias value) setAntiAliasMethod;
	auto AntiAliasMethod(PsAntiAlias value) { setAntiAliasMethod(value); }
	public PsAutoKernType delegate() getAutoKerning;
	PsAutoKernType AutoKerning() { return getAutoKerning(); } 
	public void delegate(PsAutoKernType value) setAutoKerning;
	auto AutoKerning(PsAutoKernType value) { setAutoKerning(value); }
	public cSolidColor delegate() getColor;
	cSolidColor Color() { return getColor(); } 
	public void delegate(cSolidColor value) setColor;
	auto Color(cSolidColor value) { setColor(value); }
	public bool delegate() getUseAutoLeading;
	bool UseAutoLeading() { return getUseAutoLeading(); } 
	public void delegate(bool value) setUseAutoLeading;
	auto UseAutoLeading(bool value) { setUseAutoLeading(value); }
	public double delegate() getTracking;
	double Tracking() { return getTracking(); } 
	public void delegate(double value) setTracking;
	auto Tracking(double value) { setTracking(value); }
	public int delegate() getVerticalScale;
	int VerticalScale() { return getVerticalScale(); } 
	public void delegate(int value) setVerticalScale;
	auto VerticalScale(int value) { setVerticalScale(value); }
	public int delegate() getHorizontalScale;
	int HorizontalScale() { return getHorizontalScale(); } 
	public void delegate(int value) setHorizontalScale;
	auto HorizontalScale(int value) { setHorizontalScale(value); }
	public double delegate() getBaselineShift;
	double BaselineShift() { return getBaselineShift(); } 
	public void delegate(double value) setBaselineShift;
	auto BaselineShift(double value) { setBaselineShift(value); }
	public wchar* delegate() getContents;
	wchar* Contents() { return getContents(); } 
	public void delegate(wchar* value) setContents;
	auto Contents(wchar* value) { setContents(value); }
	public wchar* delegate() getFont;
	wchar* Font() { return getFont(); } 
	public void delegate(wchar* value) setFont;
	auto Font(wchar* value) { setFont(value); }
	public double delegate() getLeading;
	double Leading() { return getLeading(); } 
	public void delegate(double value) setLeading;
	auto Leading(double value) { setLeading(value); }
	public bool delegate() getLigatures;
	bool Ligatures() { return getLigatures(); } 
	public void delegate(bool value) setLigatures;
	auto Ligatures(bool value) { setLigatures(value); }
	public bool delegate() getAlternateLigatures;
	bool AlternateLigatures() { return getAlternateLigatures(); } 
	public void delegate(bool value) setAlternateLigatures;
	auto AlternateLigatures(bool value) { setAlternateLigatures(value); }
	public bool delegate() getOldStyle;
	bool OldStyle() { return getOldStyle(); } 
	public void delegate(bool value) setOldStyle;
	auto OldStyle(bool value) { setOldStyle(value); }
	public SafeVariantPtr delegate() getPosition;
	SafeVariantPtr Position() { return getPosition(); } 
	public void delegate(VARIANT value) setPosition;
	auto Position(VARIANT value) { setPosition(value); }
	public PsDirection delegate() getDirection;
	PsDirection Direction() { return getDirection(); } 
	public void delegate(PsDirection value) setDirection;
	auto Direction(PsDirection value) { setDirection(value); }
	public double delegate() getSize;
	double Size() { return getSize(); } 
	public void delegate(double value) setSize;
	auto Size(double value) { setSize(value); }
	public bool delegate() getFauxBold;
	bool FauxBold() { return getFauxBold(); } 
	public void delegate(bool value) setFauxBold;
	auto FauxBold(bool value) { setFauxBold(value); }
	public bool delegate() getFauxItalic;
	bool FauxItalic() { return getFauxItalic(); } 
	public void delegate(bool value) setFauxItalic;
	auto FauxItalic(bool value) { setFauxItalic(value); }
	public PsCase delegate() getCapitalization;
	PsCase Capitalization() { return getCapitalization(); } 
	public void delegate(PsCase value) setCapitalization;
	auto Capitalization(PsCase value) { setCapitalization(value); }
	public PsStrikeThruType delegate() getStrikeThru;
	PsStrikeThruType StrikeThru() { return getStrikeThru(); } 
	public void delegate(PsStrikeThruType value) setStrikeThru;
	auto StrikeThru(PsStrikeThruType value) { setStrikeThru(value); }
	public PsUnderlineType delegate() getUnderline;
	PsUnderlineType Underline() { return getUnderline(); } 
	public void delegate(PsUnderlineType value) setUnderline;
	auto Underline(PsUnderlineType value) { setUnderline(value); }
	public PsLanguage delegate() getLanguage;
	PsLanguage Language() { return getLanguage(); } 
	public void delegate(PsLanguage value) setLanguage;
	auto Language(PsLanguage value) { setLanguage(value); }
	public bool delegate() getNoBreak;
	bool NoBreak() { return getNoBreak(); } 
	public void delegate(bool value) setNoBreak;
	auto NoBreak(bool value) { setNoBreak(value); }
	public PsTextType delegate() getKind;
	PsTextType Kind() { return getKind(); } 
	public void delegate(PsTextType value) setKind;
	auto Kind(PsTextType value) { setKind(value); }
	public PsJustification delegate() getJustification;
	PsJustification Justification() { return getJustification(); } 
	public void delegate(PsJustification value) setJustification;
	auto Justification(PsJustification value) { setJustification(value); }
	public double delegate() getLeftIndent;
	double LeftIndent() { return getLeftIndent(); } 
	public void delegate(double value) setLeftIndent;
	auto LeftIndent(double value) { setLeftIndent(value); }
	public double delegate() getFirstLineIndent;
	double FirstLineIndent() { return getFirstLineIndent(); } 
	public void delegate(double value) setFirstLineIndent;
	auto FirstLineIndent(double value) { setFirstLineIndent(value); }
	public double delegate() getRightIndent;
	double RightIndent() { return getRightIndent(); } 
	public void delegate(double value) setRightIndent;
	auto RightIndent(double value) { setRightIndent(value); }
	public double delegate() getSpaceBefore;
	double SpaceBefore() { return getSpaceBefore(); } 
	public void delegate(double value) setSpaceBefore;
	auto SpaceBefore(double value) { setSpaceBefore(value); }
	public double delegate() getSpaceAfter;
	double SpaceAfter() { return getSpaceAfter(); } 
	public void delegate(double value) setSpaceAfter;
	auto SpaceAfter(double value) { setSpaceAfter(value); }
	public bool delegate() getHangingPuntuation;
	bool HangingPuntuation() { return getHangingPuntuation(); } 
	public void delegate(bool value) setHangingPuntuation;
	auto HangingPuntuation(bool value) { setHangingPuntuation(value); }
	public PsTextComposer delegate() getTextComposer;
	PsTextComposer TextComposer() { return getTextComposer(); } 
	public void delegate(PsTextComposer value) setTextComposer;
	auto TextComposer(PsTextComposer value) { setTextComposer(value); }
	public bool delegate() getHyphenation;
	bool Hyphenation() { return getHyphenation(); } 
	public void delegate(bool value) setHyphenation;
	auto Hyphenation(bool value) { setHyphenation(value); }
	public double delegate() getMinimumGlyphScaling;
	double MinimumGlyphScaling() { return getMinimumGlyphScaling(); } 
	public void delegate(double value) setMinimumGlyphScaling;
	auto MinimumGlyphScaling(double value) { setMinimumGlyphScaling(value); }
	public double delegate() getDesiredGlyphScaling;
	double DesiredGlyphScaling() { return getDesiredGlyphScaling(); } 
	public void delegate(double value) setDesiredGlyphScaling;
	auto DesiredGlyphScaling(double value) { setDesiredGlyphScaling(value); }
	public double delegate() getMaximumGlyphScaling;
	double MaximumGlyphScaling() { return getMaximumGlyphScaling(); } 
	public void delegate(double value) setMaximumGlyphScaling;
	auto MaximumGlyphScaling(double value) { setMaximumGlyphScaling(value); }
	public double delegate() getMinimumLetterScaling;
	double MinimumLetterScaling() { return getMinimumLetterScaling(); } 
	public void delegate(double value) setMinimumLetterScaling;
	auto MinimumLetterScaling(double value) { setMinimumLetterScaling(value); }
	public double delegate() getDesiredLetterScaling;
	double DesiredLetterScaling() { return getDesiredLetterScaling(); } 
	public void delegate(double value) setDesiredLetterScaling;
	auto DesiredLetterScaling(double value) { setDesiredLetterScaling(value); }
	public double delegate() getMaximumLetterScaling;
	double MaximumLetterScaling() { return getMaximumLetterScaling(); } 
	public void delegate(double value) setMaximumLetterScaling;
	auto MaximumLetterScaling(double value) { setMaximumLetterScaling(value); }
	public double delegate() getMinimumWordScaling;
	double MinimumWordScaling() { return getMinimumWordScaling(); } 
	public void delegate(double value) setMinimumWordScaling;
	auto MinimumWordScaling(double value) { setMinimumWordScaling(value); }
	public double delegate() getDesiredWordScaling;
	double DesiredWordScaling() { return getDesiredWordScaling(); } 
	public void delegate(double value) setDesiredWordScaling;
	auto DesiredWordScaling(double value) { setDesiredWordScaling(value); }
	public double delegate() getMaximumWordScaling;
	double MaximumWordScaling() { return getMaximumWordScaling(); } 
	public void delegate(double value) setMaximumWordScaling;
	auto MaximumWordScaling(double value) { setMaximumWordScaling(value); }
	public double delegate() getAutoLeadingAmount;
	double AutoLeadingAmount() { return getAutoLeadingAmount(); } 
	public void delegate(double value) setAutoLeadingAmount;
	auto AutoLeadingAmount(double value) { setAutoLeadingAmount(value); }
	public int delegate() getHyphenateWordsLongerThan;
	int HyphenateWordsLongerThan() { return getHyphenateWordsLongerThan(); } 
	public void delegate(int value) setHyphenateWordsLongerThan;
	auto HyphenateWordsLongerThan(int value) { setHyphenateWordsLongerThan(value); }
	public int delegate() getHyphenateAfterFirst;
	int HyphenateAfterFirst() { return getHyphenateAfterFirst(); } 
	public void delegate(int value) setHyphenateAfterFirst;
	auto HyphenateAfterFirst(int value) { setHyphenateAfterFirst(value); }
	public int delegate() getHyphenateBeforeLast;
	int HyphenateBeforeLast() { return getHyphenateBeforeLast(); } 
	public void delegate(int value) setHyphenateBeforeLast;
	auto HyphenateBeforeLast(int value) { setHyphenateBeforeLast(value); }
	public int delegate() getHyphenLimit;
	int HyphenLimit() { return getHyphenLimit(); } 
	public void delegate(int value) setHyphenLimit;
	auto HyphenLimit(int value) { setHyphenLimit(value); }
	public double delegate() getHyphenationZone;
	double HyphenationZone() { return getHyphenationZone(); } 
	public void delegate(double value) setHyphenationZone;
	auto HyphenationZone(double value) { setHyphenationZone(value); }
	public bool delegate() getHyphenateCapitalWords;
	bool HyphenateCapitalWords() { return getHyphenateCapitalWords(); } 
	public void delegate(bool value) setHyphenateCapitalWords;
	auto HyphenateCapitalWords(bool value) { setHyphenateCapitalWords(value); }
	public double delegate() getWidth;
	double Width() { return getWidth(); } 
	public void delegate(double value) setWidth;
	auto Width(double value) { setWidth(value); }
	public double delegate() getHeight;
	double Height() { return getHeight(); } 
	public void delegate(double value) setHeight;
	auto Height(double value) { setHeight(value); }
	public PsWarpStyle delegate() getWarpStyle;
	PsWarpStyle WarpStyle() { return getWarpStyle(); } 
	public void delegate(PsWarpStyle value) setWarpStyle;
	auto WarpStyle(PsWarpStyle value) { setWarpStyle(value); }
	public PsDirection delegate() getWarpDirection;
	PsDirection WarpDirection() { return getWarpDirection(); } 
	public void delegate(PsDirection value) setWarpDirection;
	auto WarpDirection(PsDirection value) { setWarpDirection(value); }
	public double delegate() getWarpBend;
	double WarpBend() { return getWarpBend(); } 
	public void delegate(double value) setWarpBend;
	auto WarpBend(double value) { setWarpBend(value); }
	public double delegate() getWarpHorizontalDistortion;
	double WarpHorizontalDistortion() { return getWarpHorizontalDistortion(); } 
	public void delegate(double value) setWarpHorizontalDistortion;
	auto WarpHorizontalDistortion(double value) { setWarpHorizontalDistortion(value); }
	public double delegate() getWarpVerticalDistortion;
	double WarpVerticalDistortion() { return getWarpVerticalDistortion(); } 
	public void delegate(double value) setWarpVerticalDistortion;
	auto WarpVerticalDistortion(double value) { setWarpVerticalDistortion(value); }
	public cApplication delegate() Application;
	public IDispatch delegate() Parent;
	public void delegate() CreatePath;
	public void delegate() ConvertToShape;

	// iTextItem
	public this(bool _query = false, IDispatch _Query = null, IDispatch _Parent = null)
	{

		iDispatchQuery = _Query;
		iDispatchParent = _Parent;
		auto COMInterface = GetDynamicCOMInterface!(mPhotoshopCOM.iTextItem, void, cTextItem)(this, null, _query);

		// extern (Windows) PsAntiAlias()
		getAntiAliasMethod = cast(typeof(this.getAntiAliasMethod)) () 
		{
		 
			EXCEPINFO exception;
			uint argErr = 0;
			auto iidNULL = IID_NULL;
			auto RT = new SafeVariantPtr();
			DISPPARAMS params = {rgvarg: null, cArgs: 0, cNamedArgs: 0};
			auto ID = COMInterface[`AntiAliasMethod`].ID;
			auto res = cTextItem.iDispatch.Invoke(cast(int)ID, &iidNULL, 0, DISPATCH_PROPERTYGET, &params, cast(VARIANT*)RT, &exception, &argErr);
			assert(res == S_OK, `Could not invoke COM Function cTextItem.getAntiAliasMethod. Error `~to!string(res, 16));
			return cast(PsAntiAlias)(RT.lVal);
		
		};
		

		// extern (Windows) void(PsAntiAlias value)
		setAntiAliasMethod = cast(typeof(this.setAntiAliasMethod)) (PsAntiAlias value) 
		{
		 
			EXCEPINFO exception;
			uint argErr = 0;
			auto iidNULL = IID_NULL;
			auto RT = new SafeVariantPtr();
			VARIANT[1] paramVars;
			DISPPARAMS params = {rgvarg: paramVars.ptr, cArgs: 1, cNamedArgs: 0};
			auto ID = COMInterface[`AntiAliasMethod`].ID;
			paramVars[0].vt = 22;
			paramVars[0].intVal = value;
			scope(exit) VariantClear(&paramVars[0]);
			auto res = cTextItem.iDispatch.Invoke(cast(int)ID, &iidNULL, 0, DISPATCH_PROPERTYPUT, &params, cast(VARIANT*)RT, &exception, &argErr);
			assert(res == S_OK, `Could not invoke COM Function cTextItem.setAntiAliasMethod. Error `~to!string(res, 16));
		
		};
		

		// extern (Windows) PsAutoKernType()
		getAutoKerning = cast(typeof(this.getAutoKerning)) () 
		{
		 
			EXCEPINFO exception;
			uint argErr = 0;
			auto iidNULL = IID_NULL;
			auto RT = new SafeVariantPtr();
			DISPPARAMS params = {rgvarg: null, cArgs: 0, cNamedArgs: 0};
			auto ID = COMInterface[`AutoKerning`].ID;
			auto res = cTextItem.iDispatch.Invoke(cast(int)ID, &iidNULL, 0, DISPATCH_PROPERTYGET, &params, cast(VARIANT*)RT, &exception, &argErr);
			assert(res == S_OK, `Could not invoke COM Function cTextItem.getAutoKerning. Error `~to!string(res, 16));
			return cast(PsAutoKernType)(RT.lVal);
		
		};
		

		// extern (Windows) void(PsAutoKernType value)
		setAutoKerning = cast(typeof(this.setAutoKerning)) (PsAutoKernType value) 
		{
		 
			EXCEPINFO exception;
			uint argErr = 0;
			auto iidNULL = IID_NULL;
			auto RT = new SafeVariantPtr();
			VARIANT[1] paramVars;
			DISPPARAMS params = {rgvarg: paramVars.ptr, cArgs: 1, cNamedArgs: 0};
			auto ID = COMInterface[`AutoKerning`].ID;
			paramVars[0].vt = 22;
			paramVars[0].intVal = value;
			scope(exit) VariantClear(&paramVars[0]);
			auto res = cTextItem.iDispatch.Invoke(cast(int)ID, &iidNULL, 0, DISPATCH_PROPERTYPUT, &params, cast(VARIANT*)RT, &exception, &argErr);
			assert(res == S_OK, `Could not invoke COM Function cTextItem.setAutoKerning. Error `~to!string(res, 16));
		
		};
		

		// extern (Windows) iSolidColor()
		getColor = cast(typeof(this.getColor)) () 
		{
		 	auto key = `TextItem.SolidColor`;
			if (auto v = key in cApplication.CachedInterfaces)
			{
				return cast(cSolidColor)*v;
			}
		
			EXCEPINFO exception;
			uint argErr = 0;
			auto iidNULL = IID_NULL;
			auto RT = new SafeVariantPtr();
			DISPPARAMS params = {rgvarg: null, cArgs: 0, cNamedArgs: 0};
			auto ID = COMInterface[`Color`].ID;
			auto res = cTextItem.iDispatch.Invoke(cast(int)ID, &iidNULL, 0, DISPATCH_PROPERTYGET, &params, cast(VARIANT*)RT, &exception, &argErr);
			assert(res == S_OK, `Could not invoke COM Function cTextItem.getColor. Error `~to!string(res, 16));
			if (cApplication.Cache)
			{
				if (auto v = key in cApplication.CachedInterfaces)
				{
					(cast(cSolidColor)v).iDispatch = cast(IDispatch)RT.punkVal;
					return cast(cSolidColor)*v;
				}
			}
			auto _class = new cSolidColor(true, cast(IDispatch)(RT.punkVal), this.iDispatch);
			cApplication.CachedInterfaces[key] = _class;
			return _class;
		
		};
		

		// extern (Windows) void(iSolidColor value)
		setColor = cast(typeof(this.setColor)) (iSolidColor value) 
		{
		 
			EXCEPINFO exception;
			uint argErr = 0;
			auto iidNULL = IID_NULL;
			auto RT = new SafeVariantPtr();
			VARIANT[1] paramVars;
			DISPPARAMS params = {rgvarg: paramVars.ptr, cArgs: 1, cNamedArgs: 0};
			auto ID = COMInterface[`Color`].ID;
			paramVars[0].vt = 13;
			paramVars[0].punkVal = value;
			scope(exit) VariantClear(&paramVars[0]);
			auto res = cTextItem.iDispatch.Invoke(cast(int)ID, &iidNULL, 0, DISPATCH_PROPERTYPUT, &params, cast(VARIANT*)RT, &exception, &argErr);
			assert(res == S_OK, `Could not invoke COM Function cTextItem.setColor. Error `~to!string(res, 16));
		
		};
		

		// extern (Windows) bool()
		getUseAutoLeading = cast(typeof(this.getUseAutoLeading)) () 
		{
		 
			EXCEPINFO exception;
			uint argErr = 0;
			auto iidNULL = IID_NULL;
			auto RT = new SafeVariantPtr();
			DISPPARAMS params = {rgvarg: null, cArgs: 0, cNamedArgs: 0};
			auto ID = COMInterface[`UseAutoLeading`].ID;
			auto res = cTextItem.iDispatch.Invoke(cast(int)ID, &iidNULL, 0, DISPATCH_PROPERTYGET, &params, cast(VARIANT*)RT, &exception, &argErr);
			assert(res == S_OK, `Could not invoke COM Function cTextItem.getUseAutoLeading. Error `~to!string(res, 16));
			return cast(bool)(RT.intVal);
		
		};
		

		// extern (Windows) void(bool value)
		setUseAutoLeading = cast(typeof(this.setUseAutoLeading)) (bool value) 
		{
		 
			EXCEPINFO exception;
			uint argErr = 0;
			auto iidNULL = IID_NULL;
			auto RT = new SafeVariantPtr();
			VARIANT[1] paramVars;
			DISPPARAMS params = {rgvarg: paramVars.ptr, cArgs: 1, cNamedArgs: 0};
			auto ID = COMInterface[`UseAutoLeading`].ID;
			paramVars[0].vt = 11;
			paramVars[0].intVal = value;
			scope(exit) VariantClear(&paramVars[0]);
			auto res = cTextItem.iDispatch.Invoke(cast(int)ID, &iidNULL, 0, DISPATCH_PROPERTYPUT, &params, cast(VARIANT*)RT, &exception, &argErr);
			assert(res == S_OK, `Could not invoke COM Function cTextItem.setUseAutoLeading. Error `~to!string(res, 16));
		
		};
		

		// extern (Windows) double()
		getTracking = cast(typeof(this.getTracking)) () 
		{
		 
			EXCEPINFO exception;
			uint argErr = 0;
			auto iidNULL = IID_NULL;
			auto RT = new SafeVariantPtr();
			DISPPARAMS params = {rgvarg: null, cArgs: 0, cNamedArgs: 0};
			auto ID = COMInterface[`Tracking`].ID;
			auto res = cTextItem.iDispatch.Invoke(cast(int)ID, &iidNULL, 0, DISPATCH_PROPERTYGET, &params, cast(VARIANT*)RT, &exception, &argErr);
			assert(res == S_OK, `Could not invoke COM Function cTextItem.getTracking. Error `~to!string(res, 16));
			return cast(double)(RT.dblVal);
		
		};
		

		// extern (Windows) void(double value)
		setTracking = cast(typeof(this.setTracking)) (double value) 
		{
		 
			EXCEPINFO exception;
			uint argErr = 0;
			auto iidNULL = IID_NULL;
			auto RT = new SafeVariantPtr();
			VARIANT[1] paramVars;
			DISPPARAMS params = {rgvarg: paramVars.ptr, cArgs: 1, cNamedArgs: 0};
			auto ID = COMInterface[`Tracking`].ID;
			paramVars[0].vt = 5;
			paramVars[0].dblVal = value;
			scope(exit) VariantClear(&paramVars[0]);
			auto res = cTextItem.iDispatch.Invoke(cast(int)ID, &iidNULL, 0, DISPATCH_PROPERTYPUT, &params, cast(VARIANT*)RT, &exception, &argErr);
			assert(res == S_OK, `Could not invoke COM Function cTextItem.setTracking. Error `~to!string(res, 16));
		
		};
		

		// extern (Windows) int()
		getVerticalScale = cast(typeof(this.getVerticalScale)) () 
		{
		 
			EXCEPINFO exception;
			uint argErr = 0;
			auto iidNULL = IID_NULL;
			auto RT = new SafeVariantPtr();
			DISPPARAMS params = {rgvarg: null, cArgs: 0, cNamedArgs: 0};
			auto ID = COMInterface[`VerticalScale`].ID;
			auto res = cTextItem.iDispatch.Invoke(cast(int)ID, &iidNULL, 0, DISPATCH_PROPERTYGET, &params, cast(VARIANT*)RT, &exception, &argErr);
			assert(res == S_OK, `Could not invoke COM Function cTextItem.getVerticalScale. Error `~to!string(res, 16));
			return cast(int)(RT.lVal);
		
		};
		

		// extern (Windows) void(int value)
		setVerticalScale = cast(typeof(this.setVerticalScale)) (int value) 
		{
		 
			EXCEPINFO exception;
			uint argErr = 0;
			auto iidNULL = IID_NULL;
			auto RT = new SafeVariantPtr();
			VARIANT[1] paramVars;
			DISPPARAMS params = {rgvarg: paramVars.ptr, cArgs: 1, cNamedArgs: 0};
			auto ID = COMInterface[`VerticalScale`].ID;
			paramVars[0].vt = 3;
			paramVars[0].lVal = value;
			scope(exit) VariantClear(&paramVars[0]);
			auto res = cTextItem.iDispatch.Invoke(cast(int)ID, &iidNULL, 0, DISPATCH_PROPERTYPUT, &params, cast(VARIANT*)RT, &exception, &argErr);
			assert(res == S_OK, `Could not invoke COM Function cTextItem.setVerticalScale. Error `~to!string(res, 16));
		
		};
		

		// extern (Windows) int()
		getHorizontalScale = cast(typeof(this.getHorizontalScale)) () 
		{
		 
			EXCEPINFO exception;
			uint argErr = 0;
			auto iidNULL = IID_NULL;
			auto RT = new SafeVariantPtr();
			DISPPARAMS params = {rgvarg: null, cArgs: 0, cNamedArgs: 0};
			auto ID = COMInterface[`HorizontalScale`].ID;
			auto res = cTextItem.iDispatch.Invoke(cast(int)ID, &iidNULL, 0, DISPATCH_PROPERTYGET, &params, cast(VARIANT*)RT, &exception, &argErr);
			assert(res == S_OK, `Could not invoke COM Function cTextItem.getHorizontalScale. Error `~to!string(res, 16));
			return cast(int)(RT.lVal);
		
		};
		

		// extern (Windows) void(int value)
		setHorizontalScale = cast(typeof(this.setHorizontalScale)) (int value) 
		{
		 
			EXCEPINFO exception;
			uint argErr = 0;
			auto iidNULL = IID_NULL;
			auto RT = new SafeVariantPtr();
			VARIANT[1] paramVars;
			DISPPARAMS params = {rgvarg: paramVars.ptr, cArgs: 1, cNamedArgs: 0};
			auto ID = COMInterface[`HorizontalScale`].ID;
			paramVars[0].vt = 3;
			paramVars[0].lVal = value;
			scope(exit) VariantClear(&paramVars[0]);
			auto res = cTextItem.iDispatch.Invoke(cast(int)ID, &iidNULL, 0, DISPATCH_PROPERTYPUT, &params, cast(VARIANT*)RT, &exception, &argErr);
			assert(res == S_OK, `Could not invoke COM Function cTextItem.setHorizontalScale. Error `~to!string(res, 16));
		
		};
		

		// extern (Windows) double()
		getBaselineShift = cast(typeof(this.getBaselineShift)) () 
		{
		 
			EXCEPINFO exception;
			uint argErr = 0;
			auto iidNULL = IID_NULL;
			auto RT = new SafeVariantPtr();
			DISPPARAMS params = {rgvarg: null, cArgs: 0, cNamedArgs: 0};
			auto ID = COMInterface[`BaselineShift`].ID;
			auto res = cTextItem.iDispatch.Invoke(cast(int)ID, &iidNULL, 0, DISPATCH_PROPERTYGET, &params, cast(VARIANT*)RT, &exception, &argErr);
			assert(res == S_OK, `Could not invoke COM Function cTextItem.getBaselineShift. Error `~to!string(res, 16));
			return cast(double)(RT.dblVal);
		
		};
		

		// extern (Windows) void(double value)
		setBaselineShift = cast(typeof(this.setBaselineShift)) (double value) 
		{
		 
			EXCEPINFO exception;
			uint argErr = 0;
			auto iidNULL = IID_NULL;
			auto RT = new SafeVariantPtr();
			VARIANT[1] paramVars;
			DISPPARAMS params = {rgvarg: paramVars.ptr, cArgs: 1, cNamedArgs: 0};
			auto ID = COMInterface[`BaselineShift`].ID;
			paramVars[0].vt = 5;
			paramVars[0].dblVal = value;
			scope(exit) VariantClear(&paramVars[0]);
			auto res = cTextItem.iDispatch.Invoke(cast(int)ID, &iidNULL, 0, DISPATCH_PROPERTYPUT, &params, cast(VARIANT*)RT, &exception, &argErr);
			assert(res == S_OK, `Could not invoke COM Function cTextItem.setBaselineShift. Error `~to!string(res, 16));
		
		};
		

		// extern (Windows) wchar*()
		getContents = cast(typeof(this.getContents)) () 
		{
		 
			EXCEPINFO exception;
			uint argErr = 0;
			auto iidNULL = IID_NULL;
			auto RT = new SafeVariantPtr();
			DISPPARAMS params = {rgvarg: null, cArgs: 0, cNamedArgs: 0};
			auto ID = COMInterface[`Contents`].ID;
			auto res = cTextItem.iDispatch.Invoke(cast(int)ID, &iidNULL, 0, DISPATCH_PROPERTYGET, &params, cast(VARIANT*)RT, &exception, &argErr);
			assert(res == S_OK, `Could not invoke COM Function cTextItem.getContents. Error `~to!string(res, 16));
			return cast(wchar*)(RT.bstrVal);
		
		};
		

		// extern (Windows) void(wchar* value)
		setContents = cast(typeof(this.setContents)) (wchar* value) 
		{
		 
			EXCEPINFO exception;
			uint argErr = 0;
			auto iidNULL = IID_NULL;
			auto RT = new SafeVariantPtr();
			VARIANT[1] paramVars;
			DISPPARAMS params = {rgvarg: paramVars.ptr, cArgs: 1, cNamedArgs: 0};
			auto ID = COMInterface[`Contents`].ID;
			paramVars[0].vt = 8;
			paramVars[0].bstrVal = value;
			scope(exit) VariantClear(&paramVars[0]);
			auto res = cTextItem.iDispatch.Invoke(cast(int)ID, &iidNULL, 0, DISPATCH_PROPERTYPUT, &params, cast(VARIANT*)RT, &exception, &argErr);
			assert(res == S_OK, `Could not invoke COM Function cTextItem.setContents. Error `~to!string(res, 16));
		
		};
		

		// extern (Windows) wchar*()
		getFont = cast(typeof(this.getFont)) () 
		{
		 
			EXCEPINFO exception;
			uint argErr = 0;
			auto iidNULL = IID_NULL;
			auto RT = new SafeVariantPtr();
			DISPPARAMS params = {rgvarg: null, cArgs: 0, cNamedArgs: 0};
			auto ID = COMInterface[`Font`].ID;
			auto res = cTextItem.iDispatch.Invoke(cast(int)ID, &iidNULL, 0, DISPATCH_PROPERTYGET, &params, cast(VARIANT*)RT, &exception, &argErr);
			assert(res == S_OK, `Could not invoke COM Function cTextItem.getFont. Error `~to!string(res, 16));
			return cast(wchar*)(RT.bstrVal);
		
		};
		

		// extern (Windows) void(wchar* value)
		setFont = cast(typeof(this.setFont)) (wchar* value) 
		{
		 
			EXCEPINFO exception;
			uint argErr = 0;
			auto iidNULL = IID_NULL;
			auto RT = new SafeVariantPtr();
			VARIANT[1] paramVars;
			DISPPARAMS params = {rgvarg: paramVars.ptr, cArgs: 1, cNamedArgs: 0};
			auto ID = COMInterface[`Font`].ID;
			paramVars[0].vt = 8;
			paramVars[0].bstrVal = value;
			scope(exit) VariantClear(&paramVars[0]);
			auto res = cTextItem.iDispatch.Invoke(cast(int)ID, &iidNULL, 0, DISPATCH_PROPERTYPUT, &params, cast(VARIANT*)RT, &exception, &argErr);
			assert(res == S_OK, `Could not invoke COM Function cTextItem.setFont. Error `~to!string(res, 16));
		
		};
		

		// extern (Windows) double()
		getLeading = cast(typeof(this.getLeading)) () 
		{
		 
			EXCEPINFO exception;
			uint argErr = 0;
			auto iidNULL = IID_NULL;
			auto RT = new SafeVariantPtr();
			DISPPARAMS params = {rgvarg: null, cArgs: 0, cNamedArgs: 0};
			auto ID = COMInterface[`Leading`].ID;
			auto res = cTextItem.iDispatch.Invoke(cast(int)ID, &iidNULL, 0, DISPATCH_PROPERTYGET, &params, cast(VARIANT*)RT, &exception, &argErr);
			assert(res == S_OK, `Could not invoke COM Function cTextItem.getLeading. Error `~to!string(res, 16));
			return cast(double)(RT.dblVal);
		
		};
		

		// extern (Windows) void(double value)
		setLeading = cast(typeof(this.setLeading)) (double value) 
		{
		 
			EXCEPINFO exception;
			uint argErr = 0;
			auto iidNULL = IID_NULL;
			auto RT = new SafeVariantPtr();
			VARIANT[1] paramVars;
			DISPPARAMS params = {rgvarg: paramVars.ptr, cArgs: 1, cNamedArgs: 0};
			auto ID = COMInterface[`Leading`].ID;
			paramVars[0].vt = 5;
			paramVars[0].dblVal = value;
			scope(exit) VariantClear(&paramVars[0]);
			auto res = cTextItem.iDispatch.Invoke(cast(int)ID, &iidNULL, 0, DISPATCH_PROPERTYPUT, &params, cast(VARIANT*)RT, &exception, &argErr);
			assert(res == S_OK, `Could not invoke COM Function cTextItem.setLeading. Error `~to!string(res, 16));
		
		};
		

		// extern (Windows) bool()
		getLigatures = cast(typeof(this.getLigatures)) () 
		{
		 
			EXCEPINFO exception;
			uint argErr = 0;
			auto iidNULL = IID_NULL;
			auto RT = new SafeVariantPtr();
			DISPPARAMS params = {rgvarg: null, cArgs: 0, cNamedArgs: 0};
			auto ID = COMInterface[`Ligatures`].ID;
			auto res = cTextItem.iDispatch.Invoke(cast(int)ID, &iidNULL, 0, DISPATCH_PROPERTYGET, &params, cast(VARIANT*)RT, &exception, &argErr);
			assert(res == S_OK, `Could not invoke COM Function cTextItem.getLigatures. Error `~to!string(res, 16));
			return cast(bool)(RT.intVal);
		
		};
		

		// extern (Windows) void(bool value)
		setLigatures = cast(typeof(this.setLigatures)) (bool value) 
		{
		 
			EXCEPINFO exception;
			uint argErr = 0;
			auto iidNULL = IID_NULL;
			auto RT = new SafeVariantPtr();
			VARIANT[1] paramVars;
			DISPPARAMS params = {rgvarg: paramVars.ptr, cArgs: 1, cNamedArgs: 0};
			auto ID = COMInterface[`Ligatures`].ID;
			paramVars[0].vt = 11;
			paramVars[0].intVal = value;
			scope(exit) VariantClear(&paramVars[0]);
			auto res = cTextItem.iDispatch.Invoke(cast(int)ID, &iidNULL, 0, DISPATCH_PROPERTYPUT, &params, cast(VARIANT*)RT, &exception, &argErr);
			assert(res == S_OK, `Could not invoke COM Function cTextItem.setLigatures. Error `~to!string(res, 16));
		
		};
		

		// extern (Windows) bool()
		getAlternateLigatures = cast(typeof(this.getAlternateLigatures)) () 
		{
		 
			EXCEPINFO exception;
			uint argErr = 0;
			auto iidNULL = IID_NULL;
			auto RT = new SafeVariantPtr();
			DISPPARAMS params = {rgvarg: null, cArgs: 0, cNamedArgs: 0};
			auto ID = COMInterface[`AlternateLigatures`].ID;
			auto res = cTextItem.iDispatch.Invoke(cast(int)ID, &iidNULL, 0, DISPATCH_PROPERTYGET, &params, cast(VARIANT*)RT, &exception, &argErr);
			assert(res == S_OK, `Could not invoke COM Function cTextItem.getAlternateLigatures. Error `~to!string(res, 16));
			return cast(bool)(RT.intVal);
		
		};
		

		// extern (Windows) void(bool value)
		setAlternateLigatures = cast(typeof(this.setAlternateLigatures)) (bool value) 
		{
		 
			EXCEPINFO exception;
			uint argErr = 0;
			auto iidNULL = IID_NULL;
			auto RT = new SafeVariantPtr();
			VARIANT[1] paramVars;
			DISPPARAMS params = {rgvarg: paramVars.ptr, cArgs: 1, cNamedArgs: 0};
			auto ID = COMInterface[`AlternateLigatures`].ID;
			paramVars[0].vt = 11;
			paramVars[0].intVal = value;
			scope(exit) VariantClear(&paramVars[0]);
			auto res = cTextItem.iDispatch.Invoke(cast(int)ID, &iidNULL, 0, DISPATCH_PROPERTYPUT, &params, cast(VARIANT*)RT, &exception, &argErr);
			assert(res == S_OK, `Could not invoke COM Function cTextItem.setAlternateLigatures. Error `~to!string(res, 16));
		
		};
		

		// extern (Windows) bool()
		getOldStyle = cast(typeof(this.getOldStyle)) () 
		{
		 
			EXCEPINFO exception;
			uint argErr = 0;
			auto iidNULL = IID_NULL;
			auto RT = new SafeVariantPtr();
			DISPPARAMS params = {rgvarg: null, cArgs: 0, cNamedArgs: 0};
			auto ID = COMInterface[`OldStyle`].ID;
			auto res = cTextItem.iDispatch.Invoke(cast(int)ID, &iidNULL, 0, DISPATCH_PROPERTYGET, &params, cast(VARIANT*)RT, &exception, &argErr);
			assert(res == S_OK, `Could not invoke COM Function cTextItem.getOldStyle. Error `~to!string(res, 16));
			return cast(bool)(RT.intVal);
		
		};
		

		// extern (Windows) void(bool value)
		setOldStyle = cast(typeof(this.setOldStyle)) (bool value) 
		{
		 
			EXCEPINFO exception;
			uint argErr = 0;
			auto iidNULL = IID_NULL;
			auto RT = new SafeVariantPtr();
			VARIANT[1] paramVars;
			DISPPARAMS params = {rgvarg: paramVars.ptr, cArgs: 1, cNamedArgs: 0};
			auto ID = COMInterface[`OldStyle`].ID;
			paramVars[0].vt = 11;
			paramVars[0].intVal = value;
			scope(exit) VariantClear(&paramVars[0]);
			auto res = cTextItem.iDispatch.Invoke(cast(int)ID, &iidNULL, 0, DISPATCH_PROPERTYPUT, &params, cast(VARIANT*)RT, &exception, &argErr);
			assert(res == S_OK, `Could not invoke COM Function cTextItem.setOldStyle. Error `~to!string(res, 16));
		
		};
		

		// extern (Windows) VARIANT()
		getPosition = cast(typeof(this.getPosition)) () 
		{
		 
			EXCEPINFO exception;
			uint argErr = 0;
			auto iidNULL = IID_NULL;
			auto RT = new SafeVariantPtr();
			DISPPARAMS params = {rgvarg: null, cArgs: 0, cNamedArgs: 0};
			auto ID = COMInterface[`Position`].ID;
			auto res = cTextItem.iDispatch.Invoke(cast(int)ID, &iidNULL, 0, DISPATCH_PROPERTYGET, &params, cast(VARIANT*)RT, &exception, &argErr);
			assert(res == S_OK, `Could not invoke COM Function cTextItem.getPosition. Error `~to!string(res, 16));
			return RT;
		
		};
		

		// extern (Windows) void(VARIANT value)
		setPosition = cast(typeof(this.setPosition)) (VARIANT value) 
		{
		 
			EXCEPINFO exception;
			uint argErr = 0;
			auto iidNULL = IID_NULL;
			auto RT = new SafeVariantPtr();
			VARIANT[1] paramVars;
			DISPPARAMS params = {rgvarg: paramVars.ptr, cArgs: 1, cNamedArgs: 0};
			auto ID = COMInterface[`Position`].ID;
			paramVars[0] = value;
			auto res = cTextItem.iDispatch.Invoke(cast(int)ID, &iidNULL, 0, DISPATCH_PROPERTYPUT, &params, cast(VARIANT*)RT, &exception, &argErr);
			assert(res == S_OK, `Could not invoke COM Function cTextItem.setPosition. Error `~to!string(res, 16));
		
		};
		

		// extern (Windows) PsDirection()
		getDirection = cast(typeof(this.getDirection)) () 
		{
		 
			EXCEPINFO exception;
			uint argErr = 0;
			auto iidNULL = IID_NULL;
			auto RT = new SafeVariantPtr();
			DISPPARAMS params = {rgvarg: null, cArgs: 0, cNamedArgs: 0};
			auto ID = COMInterface[`Direction`].ID;
			auto res = cTextItem.iDispatch.Invoke(cast(int)ID, &iidNULL, 0, DISPATCH_PROPERTYGET, &params, cast(VARIANT*)RT, &exception, &argErr);
			assert(res == S_OK, `Could not invoke COM Function cTextItem.getDirection. Error `~to!string(res, 16));
			return cast(PsDirection)(RT.lVal);
		
		};
		

		// extern (Windows) void(PsDirection value)
		setDirection = cast(typeof(this.setDirection)) (PsDirection value) 
		{
		 
			EXCEPINFO exception;
			uint argErr = 0;
			auto iidNULL = IID_NULL;
			auto RT = new SafeVariantPtr();
			VARIANT[1] paramVars;
			DISPPARAMS params = {rgvarg: paramVars.ptr, cArgs: 1, cNamedArgs: 0};
			auto ID = COMInterface[`Direction`].ID;
			paramVars[0].vt = 22;
			paramVars[0].intVal = value;
			scope(exit) VariantClear(&paramVars[0]);
			auto res = cTextItem.iDispatch.Invoke(cast(int)ID, &iidNULL, 0, DISPATCH_PROPERTYPUT, &params, cast(VARIANT*)RT, &exception, &argErr);
			assert(res == S_OK, `Could not invoke COM Function cTextItem.setDirection. Error `~to!string(res, 16));
		
		};
		

		// extern (Windows) double()
		getSize = cast(typeof(this.getSize)) () 
		{
		 
			EXCEPINFO exception;
			uint argErr = 0;
			auto iidNULL = IID_NULL;
			auto RT = new SafeVariantPtr();
			DISPPARAMS params = {rgvarg: null, cArgs: 0, cNamedArgs: 0};
			auto ID = COMInterface[`Size`].ID;
			auto res = cTextItem.iDispatch.Invoke(cast(int)ID, &iidNULL, 0, DISPATCH_PROPERTYGET, &params, cast(VARIANT*)RT, &exception, &argErr);
			assert(res == S_OK, `Could not invoke COM Function cTextItem.getSize. Error `~to!string(res, 16));
			return cast(double)(RT.dblVal);
		
		};
		

		// extern (Windows) void(double value)
		setSize = cast(typeof(this.setSize)) (double value) 
		{
		 
			EXCEPINFO exception;
			uint argErr = 0;
			auto iidNULL = IID_NULL;
			auto RT = new SafeVariantPtr();
			VARIANT[1] paramVars;
			DISPPARAMS params = {rgvarg: paramVars.ptr, cArgs: 1, cNamedArgs: 0};
			auto ID = COMInterface[`Size`].ID;
			paramVars[0].vt = 5;
			paramVars[0].dblVal = value;
			scope(exit) VariantClear(&paramVars[0]);
			auto res = cTextItem.iDispatch.Invoke(cast(int)ID, &iidNULL, 0, DISPATCH_PROPERTYPUT, &params, cast(VARIANT*)RT, &exception, &argErr);
			assert(res == S_OK, `Could not invoke COM Function cTextItem.setSize. Error `~to!string(res, 16));
		
		};
		

		// extern (Windows) bool()
		getFauxBold = cast(typeof(this.getFauxBold)) () 
		{
		 
			EXCEPINFO exception;
			uint argErr = 0;
			auto iidNULL = IID_NULL;
			auto RT = new SafeVariantPtr();
			DISPPARAMS params = {rgvarg: null, cArgs: 0, cNamedArgs: 0};
			auto ID = COMInterface[`FauxBold`].ID;
			auto res = cTextItem.iDispatch.Invoke(cast(int)ID, &iidNULL, 0, DISPATCH_PROPERTYGET, &params, cast(VARIANT*)RT, &exception, &argErr);
			assert(res == S_OK, `Could not invoke COM Function cTextItem.getFauxBold. Error `~to!string(res, 16));
			return cast(bool)(RT.intVal);
		
		};
		

		// extern (Windows) void(bool value)
		setFauxBold = cast(typeof(this.setFauxBold)) (bool value) 
		{
		 
			EXCEPINFO exception;
			uint argErr = 0;
			auto iidNULL = IID_NULL;
			auto RT = new SafeVariantPtr();
			VARIANT[1] paramVars;
			DISPPARAMS params = {rgvarg: paramVars.ptr, cArgs: 1, cNamedArgs: 0};
			auto ID = COMInterface[`FauxBold`].ID;
			paramVars[0].vt = 11;
			paramVars[0].intVal = value;
			scope(exit) VariantClear(&paramVars[0]);
			auto res = cTextItem.iDispatch.Invoke(cast(int)ID, &iidNULL, 0, DISPATCH_PROPERTYPUT, &params, cast(VARIANT*)RT, &exception, &argErr);
			assert(res == S_OK, `Could not invoke COM Function cTextItem.setFauxBold. Error `~to!string(res, 16));
		
		};
		

		// extern (Windows) bool()
		getFauxItalic = cast(typeof(this.getFauxItalic)) () 
		{
		 
			EXCEPINFO exception;
			uint argErr = 0;
			auto iidNULL = IID_NULL;
			auto RT = new SafeVariantPtr();
			DISPPARAMS params = {rgvarg: null, cArgs: 0, cNamedArgs: 0};
			auto ID = COMInterface[`FauxItalic`].ID;
			auto res = cTextItem.iDispatch.Invoke(cast(int)ID, &iidNULL, 0, DISPATCH_PROPERTYGET, &params, cast(VARIANT*)RT, &exception, &argErr);
			assert(res == S_OK, `Could not invoke COM Function cTextItem.getFauxItalic. Error `~to!string(res, 16));
			return cast(bool)(RT.intVal);
		
		};
		

		// extern (Windows) void(bool value)
		setFauxItalic = cast(typeof(this.setFauxItalic)) (bool value) 
		{
		 
			EXCEPINFO exception;
			uint argErr = 0;
			auto iidNULL = IID_NULL;
			auto RT = new SafeVariantPtr();
			VARIANT[1] paramVars;
			DISPPARAMS params = {rgvarg: paramVars.ptr, cArgs: 1, cNamedArgs: 0};
			auto ID = COMInterface[`FauxItalic`].ID;
			paramVars[0].vt = 11;
			paramVars[0].intVal = value;
			scope(exit) VariantClear(&paramVars[0]);
			auto res = cTextItem.iDispatch.Invoke(cast(int)ID, &iidNULL, 0, DISPATCH_PROPERTYPUT, &params, cast(VARIANT*)RT, &exception, &argErr);
			assert(res == S_OK, `Could not invoke COM Function cTextItem.setFauxItalic. Error `~to!string(res, 16));
		
		};
		

		// extern (Windows) PsCase()
		getCapitalization = cast(typeof(this.getCapitalization)) () 
		{
		 
			EXCEPINFO exception;
			uint argErr = 0;
			auto iidNULL = IID_NULL;
			auto RT = new SafeVariantPtr();
			DISPPARAMS params = {rgvarg: null, cArgs: 0, cNamedArgs: 0};
			auto ID = COMInterface[`Capitalization`].ID;
			auto res = cTextItem.iDispatch.Invoke(cast(int)ID, &iidNULL, 0, DISPATCH_PROPERTYGET, &params, cast(VARIANT*)RT, &exception, &argErr);
			assert(res == S_OK, `Could not invoke COM Function cTextItem.getCapitalization. Error `~to!string(res, 16));
			return cast(PsCase)(RT.lVal);
		
		};
		

		// extern (Windows) void(PsCase value)
		setCapitalization = cast(typeof(this.setCapitalization)) (PsCase value) 
		{
		 
			EXCEPINFO exception;
			uint argErr = 0;
			auto iidNULL = IID_NULL;
			auto RT = new SafeVariantPtr();
			VARIANT[1] paramVars;
			DISPPARAMS params = {rgvarg: paramVars.ptr, cArgs: 1, cNamedArgs: 0};
			auto ID = COMInterface[`Capitalization`].ID;
			paramVars[0].vt = 22;
			paramVars[0].intVal = value;
			scope(exit) VariantClear(&paramVars[0]);
			auto res = cTextItem.iDispatch.Invoke(cast(int)ID, &iidNULL, 0, DISPATCH_PROPERTYPUT, &params, cast(VARIANT*)RT, &exception, &argErr);
			assert(res == S_OK, `Could not invoke COM Function cTextItem.setCapitalization. Error `~to!string(res, 16));
		
		};
		

		// extern (Windows) PsStrikeThruType()
		getStrikeThru = cast(typeof(this.getStrikeThru)) () 
		{
		 
			EXCEPINFO exception;
			uint argErr = 0;
			auto iidNULL = IID_NULL;
			auto RT = new SafeVariantPtr();
			DISPPARAMS params = {rgvarg: null, cArgs: 0, cNamedArgs: 0};
			auto ID = COMInterface[`StrikeThru`].ID;
			auto res = cTextItem.iDispatch.Invoke(cast(int)ID, &iidNULL, 0, DISPATCH_PROPERTYGET, &params, cast(VARIANT*)RT, &exception, &argErr);
			assert(res == S_OK, `Could not invoke COM Function cTextItem.getStrikeThru. Error `~to!string(res, 16));
			return cast(PsStrikeThruType)(RT.lVal);
		
		};
		

		// extern (Windows) void(PsStrikeThruType value)
		setStrikeThru = cast(typeof(this.setStrikeThru)) (PsStrikeThruType value) 
		{
		 
			EXCEPINFO exception;
			uint argErr = 0;
			auto iidNULL = IID_NULL;
			auto RT = new SafeVariantPtr();
			VARIANT[1] paramVars;
			DISPPARAMS params = {rgvarg: paramVars.ptr, cArgs: 1, cNamedArgs: 0};
			auto ID = COMInterface[`StrikeThru`].ID;
			paramVars[0].vt = 22;
			paramVars[0].intVal = value;
			scope(exit) VariantClear(&paramVars[0]);
			auto res = cTextItem.iDispatch.Invoke(cast(int)ID, &iidNULL, 0, DISPATCH_PROPERTYPUT, &params, cast(VARIANT*)RT, &exception, &argErr);
			assert(res == S_OK, `Could not invoke COM Function cTextItem.setStrikeThru. Error `~to!string(res, 16));
		
		};
		

		// extern (Windows) PsUnderlineType()
		getUnderline = cast(typeof(this.getUnderline)) () 
		{
		 
			EXCEPINFO exception;
			uint argErr = 0;
			auto iidNULL = IID_NULL;
			auto RT = new SafeVariantPtr();
			DISPPARAMS params = {rgvarg: null, cArgs: 0, cNamedArgs: 0};
			auto ID = COMInterface[`Underline`].ID;
			auto res = cTextItem.iDispatch.Invoke(cast(int)ID, &iidNULL, 0, DISPATCH_PROPERTYGET, &params, cast(VARIANT*)RT, &exception, &argErr);
			assert(res == S_OK, `Could not invoke COM Function cTextItem.getUnderline. Error `~to!string(res, 16));
			return cast(PsUnderlineType)(RT.lVal);
		
		};
		

		// extern (Windows) void(PsUnderlineType value)
		setUnderline = cast(typeof(this.setUnderline)) (PsUnderlineType value) 
		{
		 
			EXCEPINFO exception;
			uint argErr = 0;
			auto iidNULL = IID_NULL;
			auto RT = new SafeVariantPtr();
			VARIANT[1] paramVars;
			DISPPARAMS params = {rgvarg: paramVars.ptr, cArgs: 1, cNamedArgs: 0};
			auto ID = COMInterface[`Underline`].ID;
			paramVars[0].vt = 22;
			paramVars[0].intVal = value;
			scope(exit) VariantClear(&paramVars[0]);
			auto res = cTextItem.iDispatch.Invoke(cast(int)ID, &iidNULL, 0, DISPATCH_PROPERTYPUT, &params, cast(VARIANT*)RT, &exception, &argErr);
			assert(res == S_OK, `Could not invoke COM Function cTextItem.setUnderline. Error `~to!string(res, 16));
		
		};
		

		// extern (Windows) PsLanguage()
		getLanguage = cast(typeof(this.getLanguage)) () 
		{
		 
			EXCEPINFO exception;
			uint argErr = 0;
			auto iidNULL = IID_NULL;
			auto RT = new SafeVariantPtr();
			DISPPARAMS params = {rgvarg: null, cArgs: 0, cNamedArgs: 0};
			auto ID = COMInterface[`Language`].ID;
			auto res = cTextItem.iDispatch.Invoke(cast(int)ID, &iidNULL, 0, DISPATCH_PROPERTYGET, &params, cast(VARIANT*)RT, &exception, &argErr);
			assert(res == S_OK, `Could not invoke COM Function cTextItem.getLanguage. Error `~to!string(res, 16));
			return cast(PsLanguage)(RT.lVal);
		
		};
		

		// extern (Windows) void(PsLanguage value)
		setLanguage = cast(typeof(this.setLanguage)) (PsLanguage value) 
		{
		 
			EXCEPINFO exception;
			uint argErr = 0;
			auto iidNULL = IID_NULL;
			auto RT = new SafeVariantPtr();
			VARIANT[1] paramVars;
			DISPPARAMS params = {rgvarg: paramVars.ptr, cArgs: 1, cNamedArgs: 0};
			auto ID = COMInterface[`Language`].ID;
			paramVars[0].vt = 22;
			paramVars[0].intVal = value;
			scope(exit) VariantClear(&paramVars[0]);
			auto res = cTextItem.iDispatch.Invoke(cast(int)ID, &iidNULL, 0, DISPATCH_PROPERTYPUT, &params, cast(VARIANT*)RT, &exception, &argErr);
			assert(res == S_OK, `Could not invoke COM Function cTextItem.setLanguage. Error `~to!string(res, 16));
		
		};
		

		// extern (Windows) bool()
		getNoBreak = cast(typeof(this.getNoBreak)) () 
		{
		 
			EXCEPINFO exception;
			uint argErr = 0;
			auto iidNULL = IID_NULL;
			auto RT = new SafeVariantPtr();
			DISPPARAMS params = {rgvarg: null, cArgs: 0, cNamedArgs: 0};
			auto ID = COMInterface[`NoBreak`].ID;
			auto res = cTextItem.iDispatch.Invoke(cast(int)ID, &iidNULL, 0, DISPATCH_PROPERTYGET, &params, cast(VARIANT*)RT, &exception, &argErr);
			assert(res == S_OK, `Could not invoke COM Function cTextItem.getNoBreak. Error `~to!string(res, 16));
			return cast(bool)(RT.intVal);
		
		};
		

		// extern (Windows) void(bool value)
		setNoBreak = cast(typeof(this.setNoBreak)) (bool value) 
		{
		 
			EXCEPINFO exception;
			uint argErr = 0;
			auto iidNULL = IID_NULL;
			auto RT = new SafeVariantPtr();
			VARIANT[1] paramVars;
			DISPPARAMS params = {rgvarg: paramVars.ptr, cArgs: 1, cNamedArgs: 0};
			auto ID = COMInterface[`NoBreak`].ID;
			paramVars[0].vt = 11;
			paramVars[0].intVal = value;
			scope(exit) VariantClear(&paramVars[0]);
			auto res = cTextItem.iDispatch.Invoke(cast(int)ID, &iidNULL, 0, DISPATCH_PROPERTYPUT, &params, cast(VARIANT*)RT, &exception, &argErr);
			assert(res == S_OK, `Could not invoke COM Function cTextItem.setNoBreak. Error `~to!string(res, 16));
		
		};
		

		// extern (Windows) PsTextType()
		getKind = cast(typeof(this.getKind)) () 
		{
		 
			EXCEPINFO exception;
			uint argErr = 0;
			auto iidNULL = IID_NULL;
			auto RT = new SafeVariantPtr();
			DISPPARAMS params = {rgvarg: null, cArgs: 0, cNamedArgs: 0};
			auto ID = COMInterface[`Kind`].ID;
			auto res = cTextItem.iDispatch.Invoke(cast(int)ID, &iidNULL, 0, DISPATCH_PROPERTYGET, &params, cast(VARIANT*)RT, &exception, &argErr);
			assert(res == S_OK, `Could not invoke COM Function cTextItem.getKind. Error `~to!string(res, 16));
			return cast(PsTextType)(RT.lVal);
		
		};
		

		// extern (Windows) void(PsTextType value)
		setKind = cast(typeof(this.setKind)) (PsTextType value) 
		{
		 
			EXCEPINFO exception;
			uint argErr = 0;
			auto iidNULL = IID_NULL;
			auto RT = new SafeVariantPtr();
			VARIANT[1] paramVars;
			DISPPARAMS params = {rgvarg: paramVars.ptr, cArgs: 1, cNamedArgs: 0};
			auto ID = COMInterface[`Kind`].ID;
			paramVars[0].vt = 22;
			paramVars[0].intVal = value;
			scope(exit) VariantClear(&paramVars[0]);
			auto res = cTextItem.iDispatch.Invoke(cast(int)ID, &iidNULL, 0, DISPATCH_PROPERTYPUT, &params, cast(VARIANT*)RT, &exception, &argErr);
			assert(res == S_OK, `Could not invoke COM Function cTextItem.setKind. Error `~to!string(res, 16));
		
		};
		

		// extern (Windows) PsJustification()
		getJustification = cast(typeof(this.getJustification)) () 
		{
		 
			EXCEPINFO exception;
			uint argErr = 0;
			auto iidNULL = IID_NULL;
			auto RT = new SafeVariantPtr();
			DISPPARAMS params = {rgvarg: null, cArgs: 0, cNamedArgs: 0};
			auto ID = COMInterface[`Justification`].ID;
			auto res = cTextItem.iDispatch.Invoke(cast(int)ID, &iidNULL, 0, DISPATCH_PROPERTYGET, &params, cast(VARIANT*)RT, &exception, &argErr);
			assert(res == S_OK, `Could not invoke COM Function cTextItem.getJustification. Error `~to!string(res, 16));
			return cast(PsJustification)(RT.lVal);
		
		};
		

		// extern (Windows) void(PsJustification value)
		setJustification = cast(typeof(this.setJustification)) (PsJustification value) 
		{
		 
			EXCEPINFO exception;
			uint argErr = 0;
			auto iidNULL = IID_NULL;
			auto RT = new SafeVariantPtr();
			VARIANT[1] paramVars;
			DISPPARAMS params = {rgvarg: paramVars.ptr, cArgs: 1, cNamedArgs: 0};
			auto ID = COMInterface[`Justification`].ID;
			paramVars[0].vt = 22;
			paramVars[0].intVal = value;
			scope(exit) VariantClear(&paramVars[0]);
			auto res = cTextItem.iDispatch.Invoke(cast(int)ID, &iidNULL, 0, DISPATCH_PROPERTYPUT, &params, cast(VARIANT*)RT, &exception, &argErr);
			assert(res == S_OK, `Could not invoke COM Function cTextItem.setJustification. Error `~to!string(res, 16));
		
		};
		

		// extern (Windows) double()
		getLeftIndent = cast(typeof(this.getLeftIndent)) () 
		{
		 
			EXCEPINFO exception;
			uint argErr = 0;
			auto iidNULL = IID_NULL;
			auto RT = new SafeVariantPtr();
			DISPPARAMS params = {rgvarg: null, cArgs: 0, cNamedArgs: 0};
			auto ID = COMInterface[`LeftIndent`].ID;
			auto res = cTextItem.iDispatch.Invoke(cast(int)ID, &iidNULL, 0, DISPATCH_PROPERTYGET, &params, cast(VARIANT*)RT, &exception, &argErr);
			assert(res == S_OK, `Could not invoke COM Function cTextItem.getLeftIndent. Error `~to!string(res, 16));
			return cast(double)(RT.dblVal);
		
		};
		

		// extern (Windows) void(double value)
		setLeftIndent = cast(typeof(this.setLeftIndent)) (double value) 
		{
		 
			EXCEPINFO exception;
			uint argErr = 0;
			auto iidNULL = IID_NULL;
			auto RT = new SafeVariantPtr();
			VARIANT[1] paramVars;
			DISPPARAMS params = {rgvarg: paramVars.ptr, cArgs: 1, cNamedArgs: 0};
			auto ID = COMInterface[`LeftIndent`].ID;
			paramVars[0].vt = 5;
			paramVars[0].dblVal = value;
			scope(exit) VariantClear(&paramVars[0]);
			auto res = cTextItem.iDispatch.Invoke(cast(int)ID, &iidNULL, 0, DISPATCH_PROPERTYPUT, &params, cast(VARIANT*)RT, &exception, &argErr);
			assert(res == S_OK, `Could not invoke COM Function cTextItem.setLeftIndent. Error `~to!string(res, 16));
		
		};
		

		// extern (Windows) double()
		getFirstLineIndent = cast(typeof(this.getFirstLineIndent)) () 
		{
		 
			EXCEPINFO exception;
			uint argErr = 0;
			auto iidNULL = IID_NULL;
			auto RT = new SafeVariantPtr();
			DISPPARAMS params = {rgvarg: null, cArgs: 0, cNamedArgs: 0};
			auto ID = COMInterface[`FirstLineIndent`].ID;
			auto res = cTextItem.iDispatch.Invoke(cast(int)ID, &iidNULL, 0, DISPATCH_PROPERTYGET, &params, cast(VARIANT*)RT, &exception, &argErr);
			assert(res == S_OK, `Could not invoke COM Function cTextItem.getFirstLineIndent. Error `~to!string(res, 16));
			return cast(double)(RT.dblVal);
		
		};
		

		// extern (Windows) void(double value)
		setFirstLineIndent = cast(typeof(this.setFirstLineIndent)) (double value) 
		{
		 
			EXCEPINFO exception;
			uint argErr = 0;
			auto iidNULL = IID_NULL;
			auto RT = new SafeVariantPtr();
			VARIANT[1] paramVars;
			DISPPARAMS params = {rgvarg: paramVars.ptr, cArgs: 1, cNamedArgs: 0};
			auto ID = COMInterface[`FirstLineIndent`].ID;
			paramVars[0].vt = 5;
			paramVars[0].dblVal = value;
			scope(exit) VariantClear(&paramVars[0]);
			auto res = cTextItem.iDispatch.Invoke(cast(int)ID, &iidNULL, 0, DISPATCH_PROPERTYPUT, &params, cast(VARIANT*)RT, &exception, &argErr);
			assert(res == S_OK, `Could not invoke COM Function cTextItem.setFirstLineIndent. Error `~to!string(res, 16));
		
		};
		

		// extern (Windows) double()
		getRightIndent = cast(typeof(this.getRightIndent)) () 
		{
		 
			EXCEPINFO exception;
			uint argErr = 0;
			auto iidNULL = IID_NULL;
			auto RT = new SafeVariantPtr();
			DISPPARAMS params = {rgvarg: null, cArgs: 0, cNamedArgs: 0};
			auto ID = COMInterface[`RightIndent`].ID;
			auto res = cTextItem.iDispatch.Invoke(cast(int)ID, &iidNULL, 0, DISPATCH_PROPERTYGET, &params, cast(VARIANT*)RT, &exception, &argErr);
			assert(res == S_OK, `Could not invoke COM Function cTextItem.getRightIndent. Error `~to!string(res, 16));
			return cast(double)(RT.dblVal);
		
		};
		

		// extern (Windows) void(double value)
		setRightIndent = cast(typeof(this.setRightIndent)) (double value) 
		{
		 
			EXCEPINFO exception;
			uint argErr = 0;
			auto iidNULL = IID_NULL;
			auto RT = new SafeVariantPtr();
			VARIANT[1] paramVars;
			DISPPARAMS params = {rgvarg: paramVars.ptr, cArgs: 1, cNamedArgs: 0};
			auto ID = COMInterface[`RightIndent`].ID;
			paramVars[0].vt = 5;
			paramVars[0].dblVal = value;
			scope(exit) VariantClear(&paramVars[0]);
			auto res = cTextItem.iDispatch.Invoke(cast(int)ID, &iidNULL, 0, DISPATCH_PROPERTYPUT, &params, cast(VARIANT*)RT, &exception, &argErr);
			assert(res == S_OK, `Could not invoke COM Function cTextItem.setRightIndent. Error `~to!string(res, 16));
		
		};
		

		// extern (Windows) double()
		getSpaceBefore = cast(typeof(this.getSpaceBefore)) () 
		{
		 
			EXCEPINFO exception;
			uint argErr = 0;
			auto iidNULL = IID_NULL;
			auto RT = new SafeVariantPtr();
			DISPPARAMS params = {rgvarg: null, cArgs: 0, cNamedArgs: 0};
			auto ID = COMInterface[`SpaceBefore`].ID;
			auto res = cTextItem.iDispatch.Invoke(cast(int)ID, &iidNULL, 0, DISPATCH_PROPERTYGET, &params, cast(VARIANT*)RT, &exception, &argErr);
			assert(res == S_OK, `Could not invoke COM Function cTextItem.getSpaceBefore. Error `~to!string(res, 16));
			return cast(double)(RT.dblVal);
		
		};
		

		// extern (Windows) void(double value)
		setSpaceBefore = cast(typeof(this.setSpaceBefore)) (double value) 
		{
		 
			EXCEPINFO exception;
			uint argErr = 0;
			auto iidNULL = IID_NULL;
			auto RT = new SafeVariantPtr();
			VARIANT[1] paramVars;
			DISPPARAMS params = {rgvarg: paramVars.ptr, cArgs: 1, cNamedArgs: 0};
			auto ID = COMInterface[`SpaceBefore`].ID;
			paramVars[0].vt = 5;
			paramVars[0].dblVal = value;
			scope(exit) VariantClear(&paramVars[0]);
			auto res = cTextItem.iDispatch.Invoke(cast(int)ID, &iidNULL, 0, DISPATCH_PROPERTYPUT, &params, cast(VARIANT*)RT, &exception, &argErr);
			assert(res == S_OK, `Could not invoke COM Function cTextItem.setSpaceBefore. Error `~to!string(res, 16));
		
		};
		

		// extern (Windows) double()
		getSpaceAfter = cast(typeof(this.getSpaceAfter)) () 
		{
		 
			EXCEPINFO exception;
			uint argErr = 0;
			auto iidNULL = IID_NULL;
			auto RT = new SafeVariantPtr();
			DISPPARAMS params = {rgvarg: null, cArgs: 0, cNamedArgs: 0};
			auto ID = COMInterface[`SpaceAfter`].ID;
			auto res = cTextItem.iDispatch.Invoke(cast(int)ID, &iidNULL, 0, DISPATCH_PROPERTYGET, &params, cast(VARIANT*)RT, &exception, &argErr);
			assert(res == S_OK, `Could not invoke COM Function cTextItem.getSpaceAfter. Error `~to!string(res, 16));
			return cast(double)(RT.dblVal);
		
		};
		

		// extern (Windows) void(double value)
		setSpaceAfter = cast(typeof(this.setSpaceAfter)) (double value) 
		{
		 
			EXCEPINFO exception;
			uint argErr = 0;
			auto iidNULL = IID_NULL;
			auto RT = new SafeVariantPtr();
			VARIANT[1] paramVars;
			DISPPARAMS params = {rgvarg: paramVars.ptr, cArgs: 1, cNamedArgs: 0};
			auto ID = COMInterface[`SpaceAfter`].ID;
			paramVars[0].vt = 5;
			paramVars[0].dblVal = value;
			scope(exit) VariantClear(&paramVars[0]);
			auto res = cTextItem.iDispatch.Invoke(cast(int)ID, &iidNULL, 0, DISPATCH_PROPERTYPUT, &params, cast(VARIANT*)RT, &exception, &argErr);
			assert(res == S_OK, `Could not invoke COM Function cTextItem.setSpaceAfter. Error `~to!string(res, 16));
		
		};
		

		// extern (Windows) bool()
		getHangingPuntuation = cast(typeof(this.getHangingPuntuation)) () 
		{
		 
			EXCEPINFO exception;
			uint argErr = 0;
			auto iidNULL = IID_NULL;
			auto RT = new SafeVariantPtr();
			DISPPARAMS params = {rgvarg: null, cArgs: 0, cNamedArgs: 0};
			auto ID = COMInterface[`HangingPuntuation`].ID;
			auto res = cTextItem.iDispatch.Invoke(cast(int)ID, &iidNULL, 0, DISPATCH_PROPERTYGET, &params, cast(VARIANT*)RT, &exception, &argErr);
			assert(res == S_OK, `Could not invoke COM Function cTextItem.getHangingPuntuation. Error `~to!string(res, 16));
			return cast(bool)(RT.intVal);
		
		};
		

		// extern (Windows) void(bool value)
		setHangingPuntuation = cast(typeof(this.setHangingPuntuation)) (bool value) 
		{
		 
			EXCEPINFO exception;
			uint argErr = 0;
			auto iidNULL = IID_NULL;
			auto RT = new SafeVariantPtr();
			VARIANT[1] paramVars;
			DISPPARAMS params = {rgvarg: paramVars.ptr, cArgs: 1, cNamedArgs: 0};
			auto ID = COMInterface[`HangingPuntuation`].ID;
			paramVars[0].vt = 11;
			paramVars[0].intVal = value;
			scope(exit) VariantClear(&paramVars[0]);
			auto res = cTextItem.iDispatch.Invoke(cast(int)ID, &iidNULL, 0, DISPATCH_PROPERTYPUT, &params, cast(VARIANT*)RT, &exception, &argErr);
			assert(res == S_OK, `Could not invoke COM Function cTextItem.setHangingPuntuation. Error `~to!string(res, 16));
		
		};
		

		// extern (Windows) PsTextComposer()
		getTextComposer = cast(typeof(this.getTextComposer)) () 
		{
		 
			EXCEPINFO exception;
			uint argErr = 0;
			auto iidNULL = IID_NULL;
			auto RT = new SafeVariantPtr();
			DISPPARAMS params = {rgvarg: null, cArgs: 0, cNamedArgs: 0};
			auto ID = COMInterface[`TextComposer`].ID;
			auto res = cTextItem.iDispatch.Invoke(cast(int)ID, &iidNULL, 0, DISPATCH_PROPERTYGET, &params, cast(VARIANT*)RT, &exception, &argErr);
			assert(res == S_OK, `Could not invoke COM Function cTextItem.getTextComposer. Error `~to!string(res, 16));
			return cast(PsTextComposer)(RT.lVal);
		
		};
		

		// extern (Windows) void(PsTextComposer value)
		setTextComposer = cast(typeof(this.setTextComposer)) (PsTextComposer value) 
		{
		 
			EXCEPINFO exception;
			uint argErr = 0;
			auto iidNULL = IID_NULL;
			auto RT = new SafeVariantPtr();
			VARIANT[1] paramVars;
			DISPPARAMS params = {rgvarg: paramVars.ptr, cArgs: 1, cNamedArgs: 0};
			auto ID = COMInterface[`TextComposer`].ID;
			paramVars[0].vt = 22;
			paramVars[0].intVal = value;
			scope(exit) VariantClear(&paramVars[0]);
			auto res = cTextItem.iDispatch.Invoke(cast(int)ID, &iidNULL, 0, DISPATCH_PROPERTYPUT, &params, cast(VARIANT*)RT, &exception, &argErr);
			assert(res == S_OK, `Could not invoke COM Function cTextItem.setTextComposer. Error `~to!string(res, 16));
		
		};
		

		// extern (Windows) bool()
		getHyphenation = cast(typeof(this.getHyphenation)) () 
		{
		 
			EXCEPINFO exception;
			uint argErr = 0;
			auto iidNULL = IID_NULL;
			auto RT = new SafeVariantPtr();
			DISPPARAMS params = {rgvarg: null, cArgs: 0, cNamedArgs: 0};
			auto ID = COMInterface[`Hyphenation`].ID;
			auto res = cTextItem.iDispatch.Invoke(cast(int)ID, &iidNULL, 0, DISPATCH_PROPERTYGET, &params, cast(VARIANT*)RT, &exception, &argErr);
			assert(res == S_OK, `Could not invoke COM Function cTextItem.getHyphenation. Error `~to!string(res, 16));
			return cast(bool)(RT.intVal);
		
		};
		

		// extern (Windows) void(bool value)
		setHyphenation = cast(typeof(this.setHyphenation)) (bool value) 
		{
		 
			EXCEPINFO exception;
			uint argErr = 0;
			auto iidNULL = IID_NULL;
			auto RT = new SafeVariantPtr();
			VARIANT[1] paramVars;
			DISPPARAMS params = {rgvarg: paramVars.ptr, cArgs: 1, cNamedArgs: 0};
			auto ID = COMInterface[`Hyphenation`].ID;
			paramVars[0].vt = 11;
			paramVars[0].intVal = value;
			scope(exit) VariantClear(&paramVars[0]);
			auto res = cTextItem.iDispatch.Invoke(cast(int)ID, &iidNULL, 0, DISPATCH_PROPERTYPUT, &params, cast(VARIANT*)RT, &exception, &argErr);
			assert(res == S_OK, `Could not invoke COM Function cTextItem.setHyphenation. Error `~to!string(res, 16));
		
		};
		

		// extern (Windows) double()
		getMinimumGlyphScaling = cast(typeof(this.getMinimumGlyphScaling)) () 
		{
		 
			EXCEPINFO exception;
			uint argErr = 0;
			auto iidNULL = IID_NULL;
			auto RT = new SafeVariantPtr();
			DISPPARAMS params = {rgvarg: null, cArgs: 0, cNamedArgs: 0};
			auto ID = COMInterface[`MinimumGlyphScaling`].ID;
			auto res = cTextItem.iDispatch.Invoke(cast(int)ID, &iidNULL, 0, DISPATCH_PROPERTYGET, &params, cast(VARIANT*)RT, &exception, &argErr);
			assert(res == S_OK, `Could not invoke COM Function cTextItem.getMinimumGlyphScaling. Error `~to!string(res, 16));
			return cast(double)(RT.dblVal);
		
		};
		

		// extern (Windows) void(double value)
		setMinimumGlyphScaling = cast(typeof(this.setMinimumGlyphScaling)) (double value) 
		{
		 
			EXCEPINFO exception;
			uint argErr = 0;
			auto iidNULL = IID_NULL;
			auto RT = new SafeVariantPtr();
			VARIANT[1] paramVars;
			DISPPARAMS params = {rgvarg: paramVars.ptr, cArgs: 1, cNamedArgs: 0};
			auto ID = COMInterface[`MinimumGlyphScaling`].ID;
			paramVars[0].vt = 5;
			paramVars[0].dblVal = value;
			scope(exit) VariantClear(&paramVars[0]);
			auto res = cTextItem.iDispatch.Invoke(cast(int)ID, &iidNULL, 0, DISPATCH_PROPERTYPUT, &params, cast(VARIANT*)RT, &exception, &argErr);
			assert(res == S_OK, `Could not invoke COM Function cTextItem.setMinimumGlyphScaling. Error `~to!string(res, 16));
		
		};
		

		// extern (Windows) double()
		getDesiredGlyphScaling = cast(typeof(this.getDesiredGlyphScaling)) () 
		{
		 
			EXCEPINFO exception;
			uint argErr = 0;
			auto iidNULL = IID_NULL;
			auto RT = new SafeVariantPtr();
			DISPPARAMS params = {rgvarg: null, cArgs: 0, cNamedArgs: 0};
			auto ID = COMInterface[`DesiredGlyphScaling`].ID;
			auto res = cTextItem.iDispatch.Invoke(cast(int)ID, &iidNULL, 0, DISPATCH_PROPERTYGET, &params, cast(VARIANT*)RT, &exception, &argErr);
			assert(res == S_OK, `Could not invoke COM Function cTextItem.getDesiredGlyphScaling. Error `~to!string(res, 16));
			return cast(double)(RT.dblVal);
		
		};
		

		// extern (Windows) void(double value)
		setDesiredGlyphScaling = cast(typeof(this.setDesiredGlyphScaling)) (double value) 
		{
		 
			EXCEPINFO exception;
			uint argErr = 0;
			auto iidNULL = IID_NULL;
			auto RT = new SafeVariantPtr();
			VARIANT[1] paramVars;
			DISPPARAMS params = {rgvarg: paramVars.ptr, cArgs: 1, cNamedArgs: 0};
			auto ID = COMInterface[`DesiredGlyphScaling`].ID;
			paramVars[0].vt = 5;
			paramVars[0].dblVal = value;
			scope(exit) VariantClear(&paramVars[0]);
			auto res = cTextItem.iDispatch.Invoke(cast(int)ID, &iidNULL, 0, DISPATCH_PROPERTYPUT, &params, cast(VARIANT*)RT, &exception, &argErr);
			assert(res == S_OK, `Could not invoke COM Function cTextItem.setDesiredGlyphScaling. Error `~to!string(res, 16));
		
		};
		

		// extern (Windows) double()
		getMaximumGlyphScaling = cast(typeof(this.getMaximumGlyphScaling)) () 
		{
		 
			EXCEPINFO exception;
			uint argErr = 0;
			auto iidNULL = IID_NULL;
			auto RT = new SafeVariantPtr();
			DISPPARAMS params = {rgvarg: null, cArgs: 0, cNamedArgs: 0};
			auto ID = COMInterface[`MaximumGlyphScaling`].ID;
			auto res = cTextItem.iDispatch.Invoke(cast(int)ID, &iidNULL, 0, DISPATCH_PROPERTYGET, &params, cast(VARIANT*)RT, &exception, &argErr);
			assert(res == S_OK, `Could not invoke COM Function cTextItem.getMaximumGlyphScaling. Error `~to!string(res, 16));
			return cast(double)(RT.dblVal);
		
		};
		

		// extern (Windows) void(double value)
		setMaximumGlyphScaling = cast(typeof(this.setMaximumGlyphScaling)) (double value) 
		{
		 
			EXCEPINFO exception;
			uint argErr = 0;
			auto iidNULL = IID_NULL;
			auto RT = new SafeVariantPtr();
			VARIANT[1] paramVars;
			DISPPARAMS params = {rgvarg: paramVars.ptr, cArgs: 1, cNamedArgs: 0};
			auto ID = COMInterface[`MaximumGlyphScaling`].ID;
			paramVars[0].vt = 5;
			paramVars[0].dblVal = value;
			scope(exit) VariantClear(&paramVars[0]);
			auto res = cTextItem.iDispatch.Invoke(cast(int)ID, &iidNULL, 0, DISPATCH_PROPERTYPUT, &params, cast(VARIANT*)RT, &exception, &argErr);
			assert(res == S_OK, `Could not invoke COM Function cTextItem.setMaximumGlyphScaling. Error `~to!string(res, 16));
		
		};
		

		// extern (Windows) double()
		getMinimumLetterScaling = cast(typeof(this.getMinimumLetterScaling)) () 
		{
		 
			EXCEPINFO exception;
			uint argErr = 0;
			auto iidNULL = IID_NULL;
			auto RT = new SafeVariantPtr();
			DISPPARAMS params = {rgvarg: null, cArgs: 0, cNamedArgs: 0};
			auto ID = COMInterface[`MinimumLetterScaling`].ID;
			auto res = cTextItem.iDispatch.Invoke(cast(int)ID, &iidNULL, 0, DISPATCH_PROPERTYGET, &params, cast(VARIANT*)RT, &exception, &argErr);
			assert(res == S_OK, `Could not invoke COM Function cTextItem.getMinimumLetterScaling. Error `~to!string(res, 16));
			return cast(double)(RT.dblVal);
		
		};
		

		// extern (Windows) void(double value)
		setMinimumLetterScaling = cast(typeof(this.setMinimumLetterScaling)) (double value) 
		{
		 
			EXCEPINFO exception;
			uint argErr = 0;
			auto iidNULL = IID_NULL;
			auto RT = new SafeVariantPtr();
			VARIANT[1] paramVars;
			DISPPARAMS params = {rgvarg: paramVars.ptr, cArgs: 1, cNamedArgs: 0};
			auto ID = COMInterface[`MinimumLetterScaling`].ID;
			paramVars[0].vt = 5;
			paramVars[0].dblVal = value;
			scope(exit) VariantClear(&paramVars[0]);
			auto res = cTextItem.iDispatch.Invoke(cast(int)ID, &iidNULL, 0, DISPATCH_PROPERTYPUT, &params, cast(VARIANT*)RT, &exception, &argErr);
			assert(res == S_OK, `Could not invoke COM Function cTextItem.setMinimumLetterScaling. Error `~to!string(res, 16));
		
		};
		

		// extern (Windows) double()
		getDesiredLetterScaling = cast(typeof(this.getDesiredLetterScaling)) () 
		{
		 
			EXCEPINFO exception;
			uint argErr = 0;
			auto iidNULL = IID_NULL;
			auto RT = new SafeVariantPtr();
			DISPPARAMS params = {rgvarg: null, cArgs: 0, cNamedArgs: 0};
			auto ID = COMInterface[`DesiredLetterScaling`].ID;
			auto res = cTextItem.iDispatch.Invoke(cast(int)ID, &iidNULL, 0, DISPATCH_PROPERTYGET, &params, cast(VARIANT*)RT, &exception, &argErr);
			assert(res == S_OK, `Could not invoke COM Function cTextItem.getDesiredLetterScaling. Error `~to!string(res, 16));
			return cast(double)(RT.dblVal);
		
		};
		

		// extern (Windows) void(double value)
		setDesiredLetterScaling = cast(typeof(this.setDesiredLetterScaling)) (double value) 
		{
		 
			EXCEPINFO exception;
			uint argErr = 0;
			auto iidNULL = IID_NULL;
			auto RT = new SafeVariantPtr();
			VARIANT[1] paramVars;
			DISPPARAMS params = {rgvarg: paramVars.ptr, cArgs: 1, cNamedArgs: 0};
			auto ID = COMInterface[`DesiredLetterScaling`].ID;
			paramVars[0].vt = 5;
			paramVars[0].dblVal = value;
			scope(exit) VariantClear(&paramVars[0]);
			auto res = cTextItem.iDispatch.Invoke(cast(int)ID, &iidNULL, 0, DISPATCH_PROPERTYPUT, &params, cast(VARIANT*)RT, &exception, &argErr);
			assert(res == S_OK, `Could not invoke COM Function cTextItem.setDesiredLetterScaling. Error `~to!string(res, 16));
		
		};
		

		// extern (Windows) double()
		getMaximumLetterScaling = cast(typeof(this.getMaximumLetterScaling)) () 
		{
		 
			EXCEPINFO exception;
			uint argErr = 0;
			auto iidNULL = IID_NULL;
			auto RT = new SafeVariantPtr();
			DISPPARAMS params = {rgvarg: null, cArgs: 0, cNamedArgs: 0};
			auto ID = COMInterface[`MaximumLetterScaling`].ID;
			auto res = cTextItem.iDispatch.Invoke(cast(int)ID, &iidNULL, 0, DISPATCH_PROPERTYGET, &params, cast(VARIANT*)RT, &exception, &argErr);
			assert(res == S_OK, `Could not invoke COM Function cTextItem.getMaximumLetterScaling. Error `~to!string(res, 16));
			return cast(double)(RT.dblVal);
		
		};
		

		// extern (Windows) void(double value)
		setMaximumLetterScaling = cast(typeof(this.setMaximumLetterScaling)) (double value) 
		{
		 
			EXCEPINFO exception;
			uint argErr = 0;
			auto iidNULL = IID_NULL;
			auto RT = new SafeVariantPtr();
			VARIANT[1] paramVars;
			DISPPARAMS params = {rgvarg: paramVars.ptr, cArgs: 1, cNamedArgs: 0};
			auto ID = COMInterface[`MaximumLetterScaling`].ID;
			paramVars[0].vt = 5;
			paramVars[0].dblVal = value;
			scope(exit) VariantClear(&paramVars[0]);
			auto res = cTextItem.iDispatch.Invoke(cast(int)ID, &iidNULL, 0, DISPATCH_PROPERTYPUT, &params, cast(VARIANT*)RT, &exception, &argErr);
			assert(res == S_OK, `Could not invoke COM Function cTextItem.setMaximumLetterScaling. Error `~to!string(res, 16));
		
		};
		

		// extern (Windows) double()
		getMinimumWordScaling = cast(typeof(this.getMinimumWordScaling)) () 
		{
		 
			EXCEPINFO exception;
			uint argErr = 0;
			auto iidNULL = IID_NULL;
			auto RT = new SafeVariantPtr();
			DISPPARAMS params = {rgvarg: null, cArgs: 0, cNamedArgs: 0};
			auto ID = COMInterface[`MinimumWordScaling`].ID;
			auto res = cTextItem.iDispatch.Invoke(cast(int)ID, &iidNULL, 0, DISPATCH_PROPERTYGET, &params, cast(VARIANT*)RT, &exception, &argErr);
			assert(res == S_OK, `Could not invoke COM Function cTextItem.getMinimumWordScaling. Error `~to!string(res, 16));
			return cast(double)(RT.dblVal);
		
		};
		

		// extern (Windows) void(double value)
		setMinimumWordScaling = cast(typeof(this.setMinimumWordScaling)) (double value) 
		{
		 
			EXCEPINFO exception;
			uint argErr = 0;
			auto iidNULL = IID_NULL;
			auto RT = new SafeVariantPtr();
			VARIANT[1] paramVars;
			DISPPARAMS params = {rgvarg: paramVars.ptr, cArgs: 1, cNamedArgs: 0};
			auto ID = COMInterface[`MinimumWordScaling`].ID;
			paramVars[0].vt = 5;
			paramVars[0].dblVal = value;
			scope(exit) VariantClear(&paramVars[0]);
			auto res = cTextItem.iDispatch.Invoke(cast(int)ID, &iidNULL, 0, DISPATCH_PROPERTYPUT, &params, cast(VARIANT*)RT, &exception, &argErr);
			assert(res == S_OK, `Could not invoke COM Function cTextItem.setMinimumWordScaling. Error `~to!string(res, 16));
		
		};
		

		// extern (Windows) double()
		getDesiredWordScaling = cast(typeof(this.getDesiredWordScaling)) () 
		{
		 
			EXCEPINFO exception;
			uint argErr = 0;
			auto iidNULL = IID_NULL;
			auto RT = new SafeVariantPtr();
			DISPPARAMS params = {rgvarg: null, cArgs: 0, cNamedArgs: 0};
			auto ID = COMInterface[`DesiredWordScaling`].ID;
			auto res = cTextItem.iDispatch.Invoke(cast(int)ID, &iidNULL, 0, DISPATCH_PROPERTYGET, &params, cast(VARIANT*)RT, &exception, &argErr);
			assert(res == S_OK, `Could not invoke COM Function cTextItem.getDesiredWordScaling. Error `~to!string(res, 16));
			return cast(double)(RT.dblVal);
		
		};
		

		// extern (Windows) void(double value)
		setDesiredWordScaling = cast(typeof(this.setDesiredWordScaling)) (double value) 
		{
		 
			EXCEPINFO exception;
			uint argErr = 0;
			auto iidNULL = IID_NULL;
			auto RT = new SafeVariantPtr();
			VARIANT[1] paramVars;
			DISPPARAMS params = {rgvarg: paramVars.ptr, cArgs: 1, cNamedArgs: 0};
			auto ID = COMInterface[`DesiredWordScaling`].ID;
			paramVars[0].vt = 5;
			paramVars[0].dblVal = value;
			scope(exit) VariantClear(&paramVars[0]);
			auto res = cTextItem.iDispatch.Invoke(cast(int)ID, &iidNULL, 0, DISPATCH_PROPERTYPUT, &params, cast(VARIANT*)RT, &exception, &argErr);
			assert(res == S_OK, `Could not invoke COM Function cTextItem.setDesiredWordScaling. Error `~to!string(res, 16));
		
		};
		

		// extern (Windows) double()
		getMaximumWordScaling = cast(typeof(this.getMaximumWordScaling)) () 
		{
		 
			EXCEPINFO exception;
			uint argErr = 0;
			auto iidNULL = IID_NULL;
			auto RT = new SafeVariantPtr();
			DISPPARAMS params = {rgvarg: null, cArgs: 0, cNamedArgs: 0};
			auto ID = COMInterface[`MaximumWordScaling`].ID;
			auto res = cTextItem.iDispatch.Invoke(cast(int)ID, &iidNULL, 0, DISPATCH_PROPERTYGET, &params, cast(VARIANT*)RT, &exception, &argErr);
			assert(res == S_OK, `Could not invoke COM Function cTextItem.getMaximumWordScaling. Error `~to!string(res, 16));
			return cast(double)(RT.dblVal);
		
		};
		

		// extern (Windows) void(double value)
		setMaximumWordScaling = cast(typeof(this.setMaximumWordScaling)) (double value) 
		{
		 
			EXCEPINFO exception;
			uint argErr = 0;
			auto iidNULL = IID_NULL;
			auto RT = new SafeVariantPtr();
			VARIANT[1] paramVars;
			DISPPARAMS params = {rgvarg: paramVars.ptr, cArgs: 1, cNamedArgs: 0};
			auto ID = COMInterface[`MaximumWordScaling`].ID;
			paramVars[0].vt = 5;
			paramVars[0].dblVal = value;
			scope(exit) VariantClear(&paramVars[0]);
			auto res = cTextItem.iDispatch.Invoke(cast(int)ID, &iidNULL, 0, DISPATCH_PROPERTYPUT, &params, cast(VARIANT*)RT, &exception, &argErr);
			assert(res == S_OK, `Could not invoke COM Function cTextItem.setMaximumWordScaling. Error `~to!string(res, 16));
		
		};
		

		// extern (Windows) double()
		getAutoLeadingAmount = cast(typeof(this.getAutoLeadingAmount)) () 
		{
		 
			EXCEPINFO exception;
			uint argErr = 0;
			auto iidNULL = IID_NULL;
			auto RT = new SafeVariantPtr();
			DISPPARAMS params = {rgvarg: null, cArgs: 0, cNamedArgs: 0};
			auto ID = COMInterface[`AutoLeadingAmount`].ID;
			auto res = cTextItem.iDispatch.Invoke(cast(int)ID, &iidNULL, 0, DISPATCH_PROPERTYGET, &params, cast(VARIANT*)RT, &exception, &argErr);
			assert(res == S_OK, `Could not invoke COM Function cTextItem.getAutoLeadingAmount. Error `~to!string(res, 16));
			return cast(double)(RT.dblVal);
		
		};
		

		// extern (Windows) void(double value)
		setAutoLeadingAmount = cast(typeof(this.setAutoLeadingAmount)) (double value) 
		{
		 
			EXCEPINFO exception;
			uint argErr = 0;
			auto iidNULL = IID_NULL;
			auto RT = new SafeVariantPtr();
			VARIANT[1] paramVars;
			DISPPARAMS params = {rgvarg: paramVars.ptr, cArgs: 1, cNamedArgs: 0};
			auto ID = COMInterface[`AutoLeadingAmount`].ID;
			paramVars[0].vt = 5;
			paramVars[0].dblVal = value;
			scope(exit) VariantClear(&paramVars[0]);
			auto res = cTextItem.iDispatch.Invoke(cast(int)ID, &iidNULL, 0, DISPATCH_PROPERTYPUT, &params, cast(VARIANT*)RT, &exception, &argErr);
			assert(res == S_OK, `Could not invoke COM Function cTextItem.setAutoLeadingAmount. Error `~to!string(res, 16));
		
		};
		

		// extern (Windows) int()
		getHyphenateWordsLongerThan = cast(typeof(this.getHyphenateWordsLongerThan)) () 
		{
		 
			EXCEPINFO exception;
			uint argErr = 0;
			auto iidNULL = IID_NULL;
			auto RT = new SafeVariantPtr();
			DISPPARAMS params = {rgvarg: null, cArgs: 0, cNamedArgs: 0};
			auto ID = COMInterface[`HyphenateWordsLongerThan`].ID;
			auto res = cTextItem.iDispatch.Invoke(cast(int)ID, &iidNULL, 0, DISPATCH_PROPERTYGET, &params, cast(VARIANT*)RT, &exception, &argErr);
			assert(res == S_OK, `Could not invoke COM Function cTextItem.getHyphenateWordsLongerThan. Error `~to!string(res, 16));
			return cast(int)(RT.lVal);
		
		};
		

		// extern (Windows) void(int value)
		setHyphenateWordsLongerThan = cast(typeof(this.setHyphenateWordsLongerThan)) (int value) 
		{
		 
			EXCEPINFO exception;
			uint argErr = 0;
			auto iidNULL = IID_NULL;
			auto RT = new SafeVariantPtr();
			VARIANT[1] paramVars;
			DISPPARAMS params = {rgvarg: paramVars.ptr, cArgs: 1, cNamedArgs: 0};
			auto ID = COMInterface[`HyphenateWordsLongerThan`].ID;
			paramVars[0].vt = 3;
			paramVars[0].lVal = value;
			scope(exit) VariantClear(&paramVars[0]);
			auto res = cTextItem.iDispatch.Invoke(cast(int)ID, &iidNULL, 0, DISPATCH_PROPERTYPUT, &params, cast(VARIANT*)RT, &exception, &argErr);
			assert(res == S_OK, `Could not invoke COM Function cTextItem.setHyphenateWordsLongerThan. Error `~to!string(res, 16));
		
		};
		

		// extern (Windows) int()
		getHyphenateAfterFirst = cast(typeof(this.getHyphenateAfterFirst)) () 
		{
		 
			EXCEPINFO exception;
			uint argErr = 0;
			auto iidNULL = IID_NULL;
			auto RT = new SafeVariantPtr();
			DISPPARAMS params = {rgvarg: null, cArgs: 0, cNamedArgs: 0};
			auto ID = COMInterface[`HyphenateAfterFirst`].ID;
			auto res = cTextItem.iDispatch.Invoke(cast(int)ID, &iidNULL, 0, DISPATCH_PROPERTYGET, &params, cast(VARIANT*)RT, &exception, &argErr);
			assert(res == S_OK, `Could not invoke COM Function cTextItem.getHyphenateAfterFirst. Error `~to!string(res, 16));
			return cast(int)(RT.lVal);
		
		};
		

		// extern (Windows) void(int value)
		setHyphenateAfterFirst = cast(typeof(this.setHyphenateAfterFirst)) (int value) 
		{
		 
			EXCEPINFO exception;
			uint argErr = 0;
			auto iidNULL = IID_NULL;
			auto RT = new SafeVariantPtr();
			VARIANT[1] paramVars;
			DISPPARAMS params = {rgvarg: paramVars.ptr, cArgs: 1, cNamedArgs: 0};
			auto ID = COMInterface[`HyphenateAfterFirst`].ID;
			paramVars[0].vt = 3;
			paramVars[0].lVal = value;
			scope(exit) VariantClear(&paramVars[0]);
			auto res = cTextItem.iDispatch.Invoke(cast(int)ID, &iidNULL, 0, DISPATCH_PROPERTYPUT, &params, cast(VARIANT*)RT, &exception, &argErr);
			assert(res == S_OK, `Could not invoke COM Function cTextItem.setHyphenateAfterFirst. Error `~to!string(res, 16));
		
		};
		

		// extern (Windows) int()
		getHyphenateBeforeLast = cast(typeof(this.getHyphenateBeforeLast)) () 
		{
		 
			EXCEPINFO exception;
			uint argErr = 0;
			auto iidNULL = IID_NULL;
			auto RT = new SafeVariantPtr();
			DISPPARAMS params = {rgvarg: null, cArgs: 0, cNamedArgs: 0};
			auto ID = COMInterface[`HyphenateBeforeLast`].ID;
			auto res = cTextItem.iDispatch.Invoke(cast(int)ID, &iidNULL, 0, DISPATCH_PROPERTYGET, &params, cast(VARIANT*)RT, &exception, &argErr);
			assert(res == S_OK, `Could not invoke COM Function cTextItem.getHyphenateBeforeLast. Error `~to!string(res, 16));
			return cast(int)(RT.lVal);
		
		};
		

		// extern (Windows) void(int value)
		setHyphenateBeforeLast = cast(typeof(this.setHyphenateBeforeLast)) (int value) 
		{
		 
			EXCEPINFO exception;
			uint argErr = 0;
			auto iidNULL = IID_NULL;
			auto RT = new SafeVariantPtr();
			VARIANT[1] paramVars;
			DISPPARAMS params = {rgvarg: paramVars.ptr, cArgs: 1, cNamedArgs: 0};
			auto ID = COMInterface[`HyphenateBeforeLast`].ID;
			paramVars[0].vt = 3;
			paramVars[0].lVal = value;
			scope(exit) VariantClear(&paramVars[0]);
			auto res = cTextItem.iDispatch.Invoke(cast(int)ID, &iidNULL, 0, DISPATCH_PROPERTYPUT, &params, cast(VARIANT*)RT, &exception, &argErr);
			assert(res == S_OK, `Could not invoke COM Function cTextItem.setHyphenateBeforeLast. Error `~to!string(res, 16));
		
		};
		

		// extern (Windows) int()
		getHyphenLimit = cast(typeof(this.getHyphenLimit)) () 
		{
		 
			EXCEPINFO exception;
			uint argErr = 0;
			auto iidNULL = IID_NULL;
			auto RT = new SafeVariantPtr();
			DISPPARAMS params = {rgvarg: null, cArgs: 0, cNamedArgs: 0};
			auto ID = COMInterface[`HyphenLimit`].ID;
			auto res = cTextItem.iDispatch.Invoke(cast(int)ID, &iidNULL, 0, DISPATCH_PROPERTYGET, &params, cast(VARIANT*)RT, &exception, &argErr);
			assert(res == S_OK, `Could not invoke COM Function cTextItem.getHyphenLimit. Error `~to!string(res, 16));
			return cast(int)(RT.lVal);
		
		};
		

		// extern (Windows) void(int value)
		setHyphenLimit = cast(typeof(this.setHyphenLimit)) (int value) 
		{
		 
			EXCEPINFO exception;
			uint argErr = 0;
			auto iidNULL = IID_NULL;
			auto RT = new SafeVariantPtr();
			VARIANT[1] paramVars;
			DISPPARAMS params = {rgvarg: paramVars.ptr, cArgs: 1, cNamedArgs: 0};
			auto ID = COMInterface[`HyphenLimit`].ID;
			paramVars[0].vt = 3;
			paramVars[0].lVal = value;
			scope(exit) VariantClear(&paramVars[0]);
			auto res = cTextItem.iDispatch.Invoke(cast(int)ID, &iidNULL, 0, DISPATCH_PROPERTYPUT, &params, cast(VARIANT*)RT, &exception, &argErr);
			assert(res == S_OK, `Could not invoke COM Function cTextItem.setHyphenLimit. Error `~to!string(res, 16));
		
		};
		

		// extern (Windows) double()
		getHyphenationZone = cast(typeof(this.getHyphenationZone)) () 
		{
		 
			EXCEPINFO exception;
			uint argErr = 0;
			auto iidNULL = IID_NULL;
			auto RT = new SafeVariantPtr();
			DISPPARAMS params = {rgvarg: null, cArgs: 0, cNamedArgs: 0};
			auto ID = COMInterface[`HyphenationZone`].ID;
			auto res = cTextItem.iDispatch.Invoke(cast(int)ID, &iidNULL, 0, DISPATCH_PROPERTYGET, &params, cast(VARIANT*)RT, &exception, &argErr);
			assert(res == S_OK, `Could not invoke COM Function cTextItem.getHyphenationZone. Error `~to!string(res, 16));
			return cast(double)(RT.dblVal);
		
		};
		

		// extern (Windows) void(double value)
		setHyphenationZone = cast(typeof(this.setHyphenationZone)) (double value) 
		{
		 
			EXCEPINFO exception;
			uint argErr = 0;
			auto iidNULL = IID_NULL;
			auto RT = new SafeVariantPtr();
			VARIANT[1] paramVars;
			DISPPARAMS params = {rgvarg: paramVars.ptr, cArgs: 1, cNamedArgs: 0};
			auto ID = COMInterface[`HyphenationZone`].ID;
			paramVars[0].vt = 5;
			paramVars[0].dblVal = value;
			scope(exit) VariantClear(&paramVars[0]);
			auto res = cTextItem.iDispatch.Invoke(cast(int)ID, &iidNULL, 0, DISPATCH_PROPERTYPUT, &params, cast(VARIANT*)RT, &exception, &argErr);
			assert(res == S_OK, `Could not invoke COM Function cTextItem.setHyphenationZone. Error `~to!string(res, 16));
		
		};
		

		// extern (Windows) bool()
		getHyphenateCapitalWords = cast(typeof(this.getHyphenateCapitalWords)) () 
		{
		 
			EXCEPINFO exception;
			uint argErr = 0;
			auto iidNULL = IID_NULL;
			auto RT = new SafeVariantPtr();
			DISPPARAMS params = {rgvarg: null, cArgs: 0, cNamedArgs: 0};
			auto ID = COMInterface[`HyphenateCapitalWords`].ID;
			auto res = cTextItem.iDispatch.Invoke(cast(int)ID, &iidNULL, 0, DISPATCH_PROPERTYGET, &params, cast(VARIANT*)RT, &exception, &argErr);
			assert(res == S_OK, `Could not invoke COM Function cTextItem.getHyphenateCapitalWords. Error `~to!string(res, 16));
			return cast(bool)(RT.intVal);
		
		};
		

		// extern (Windows) void(bool value)
		setHyphenateCapitalWords = cast(typeof(this.setHyphenateCapitalWords)) (bool value) 
		{
		 
			EXCEPINFO exception;
			uint argErr = 0;
			auto iidNULL = IID_NULL;
			auto RT = new SafeVariantPtr();
			VARIANT[1] paramVars;
			DISPPARAMS params = {rgvarg: paramVars.ptr, cArgs: 1, cNamedArgs: 0};
			auto ID = COMInterface[`HyphenateCapitalWords`].ID;
			paramVars[0].vt = 11;
			paramVars[0].intVal = value;
			scope(exit) VariantClear(&paramVars[0]);
			auto res = cTextItem.iDispatch.Invoke(cast(int)ID, &iidNULL, 0, DISPATCH_PROPERTYPUT, &params, cast(VARIANT*)RT, &exception, &argErr);
			assert(res == S_OK, `Could not invoke COM Function cTextItem.setHyphenateCapitalWords. Error `~to!string(res, 16));
		
		};
		

		// extern (Windows) double()
		getWidth = cast(typeof(this.getWidth)) () 
		{
		 
			EXCEPINFO exception;
			uint argErr = 0;
			auto iidNULL = IID_NULL;
			auto RT = new SafeVariantPtr();
			DISPPARAMS params = {rgvarg: null, cArgs: 0, cNamedArgs: 0};
			auto ID = COMInterface[`Width`].ID;
			auto res = cTextItem.iDispatch.Invoke(cast(int)ID, &iidNULL, 0, DISPATCH_PROPERTYGET, &params, cast(VARIANT*)RT, &exception, &argErr);
			assert(res == S_OK, `Could not invoke COM Function cTextItem.getWidth. Error `~to!string(res, 16));
			return cast(double)(RT.dblVal);
		
		};
		

		// extern (Windows) void(double value)
		setWidth = cast(typeof(this.setWidth)) (double value) 
		{
		 
			EXCEPINFO exception;
			uint argErr = 0;
			auto iidNULL = IID_NULL;
			auto RT = new SafeVariantPtr();
			VARIANT[1] paramVars;
			DISPPARAMS params = {rgvarg: paramVars.ptr, cArgs: 1, cNamedArgs: 0};
			auto ID = COMInterface[`Width`].ID;
			paramVars[0].vt = 5;
			paramVars[0].dblVal = value;
			scope(exit) VariantClear(&paramVars[0]);
			auto res = cTextItem.iDispatch.Invoke(cast(int)ID, &iidNULL, 0, DISPATCH_PROPERTYPUT, &params, cast(VARIANT*)RT, &exception, &argErr);
			assert(res == S_OK, `Could not invoke COM Function cTextItem.setWidth. Error `~to!string(res, 16));
		
		};
		

		// extern (Windows) double()
		getHeight = cast(typeof(this.getHeight)) () 
		{
		 
			EXCEPINFO exception;
			uint argErr = 0;
			auto iidNULL = IID_NULL;
			auto RT = new SafeVariantPtr();
			DISPPARAMS params = {rgvarg: null, cArgs: 0, cNamedArgs: 0};
			auto ID = COMInterface[`Height`].ID;
			auto res = cTextItem.iDispatch.Invoke(cast(int)ID, &iidNULL, 0, DISPATCH_PROPERTYGET, &params, cast(VARIANT*)RT, &exception, &argErr);
			assert(res == S_OK, `Could not invoke COM Function cTextItem.getHeight. Error `~to!string(res, 16));
			return cast(double)(RT.dblVal);
		
		};
		

		// extern (Windows) void(double value)
		setHeight = cast(typeof(this.setHeight)) (double value) 
		{
		 
			EXCEPINFO exception;
			uint argErr = 0;
			auto iidNULL = IID_NULL;
			auto RT = new SafeVariantPtr();
			VARIANT[1] paramVars;
			DISPPARAMS params = {rgvarg: paramVars.ptr, cArgs: 1, cNamedArgs: 0};
			auto ID = COMInterface[`Height`].ID;
			paramVars[0].vt = 5;
			paramVars[0].dblVal = value;
			scope(exit) VariantClear(&paramVars[0]);
			auto res = cTextItem.iDispatch.Invoke(cast(int)ID, &iidNULL, 0, DISPATCH_PROPERTYPUT, &params, cast(VARIANT*)RT, &exception, &argErr);
			assert(res == S_OK, `Could not invoke COM Function cTextItem.setHeight. Error `~to!string(res, 16));
		
		};
		

		// extern (Windows) PsWarpStyle()
		getWarpStyle = cast(typeof(this.getWarpStyle)) () 
		{
		 
			EXCEPINFO exception;
			uint argErr = 0;
			auto iidNULL = IID_NULL;
			auto RT = new SafeVariantPtr();
			DISPPARAMS params = {rgvarg: null, cArgs: 0, cNamedArgs: 0};
			auto ID = COMInterface[`WarpStyle`].ID;
			auto res = cTextItem.iDispatch.Invoke(cast(int)ID, &iidNULL, 0, DISPATCH_PROPERTYGET, &params, cast(VARIANT*)RT, &exception, &argErr);
			assert(res == S_OK, `Could not invoke COM Function cTextItem.getWarpStyle. Error `~to!string(res, 16));
			return cast(PsWarpStyle)(RT.lVal);
		
		};
		

		// extern (Windows) void(PsWarpStyle value)
		setWarpStyle = cast(typeof(this.setWarpStyle)) (PsWarpStyle value) 
		{
		 
			EXCEPINFO exception;
			uint argErr = 0;
			auto iidNULL = IID_NULL;
			auto RT = new SafeVariantPtr();
			VARIANT[1] paramVars;
			DISPPARAMS params = {rgvarg: paramVars.ptr, cArgs: 1, cNamedArgs: 0};
			auto ID = COMInterface[`WarpStyle`].ID;
			paramVars[0].vt = 22;
			paramVars[0].intVal = value;
			scope(exit) VariantClear(&paramVars[0]);
			auto res = cTextItem.iDispatch.Invoke(cast(int)ID, &iidNULL, 0, DISPATCH_PROPERTYPUT, &params, cast(VARIANT*)RT, &exception, &argErr);
			assert(res == S_OK, `Could not invoke COM Function cTextItem.setWarpStyle. Error `~to!string(res, 16));
		
		};
		

		// extern (Windows) PsDirection()
		getWarpDirection = cast(typeof(this.getWarpDirection)) () 
		{
		 
			EXCEPINFO exception;
			uint argErr = 0;
			auto iidNULL = IID_NULL;
			auto RT = new SafeVariantPtr();
			DISPPARAMS params = {rgvarg: null, cArgs: 0, cNamedArgs: 0};
			auto ID = COMInterface[`WarpDirection`].ID;
			auto res = cTextItem.iDispatch.Invoke(cast(int)ID, &iidNULL, 0, DISPATCH_PROPERTYGET, &params, cast(VARIANT*)RT, &exception, &argErr);
			assert(res == S_OK, `Could not invoke COM Function cTextItem.getWarpDirection. Error `~to!string(res, 16));
			return cast(PsDirection)(RT.lVal);
		
		};
		

		// extern (Windows) void(PsDirection value)
		setWarpDirection = cast(typeof(this.setWarpDirection)) (PsDirection value) 
		{
		 
			EXCEPINFO exception;
			uint argErr = 0;
			auto iidNULL = IID_NULL;
			auto RT = new SafeVariantPtr();
			VARIANT[1] paramVars;
			DISPPARAMS params = {rgvarg: paramVars.ptr, cArgs: 1, cNamedArgs: 0};
			auto ID = COMInterface[`WarpDirection`].ID;
			paramVars[0].vt = 22;
			paramVars[0].intVal = value;
			scope(exit) VariantClear(&paramVars[0]);
			auto res = cTextItem.iDispatch.Invoke(cast(int)ID, &iidNULL, 0, DISPATCH_PROPERTYPUT, &params, cast(VARIANT*)RT, &exception, &argErr);
			assert(res == S_OK, `Could not invoke COM Function cTextItem.setWarpDirection. Error `~to!string(res, 16));
		
		};
		

		// extern (Windows) double()
		getWarpBend = cast(typeof(this.getWarpBend)) () 
		{
		 
			EXCEPINFO exception;
			uint argErr = 0;
			auto iidNULL = IID_NULL;
			auto RT = new SafeVariantPtr();
			DISPPARAMS params = {rgvarg: null, cArgs: 0, cNamedArgs: 0};
			auto ID = COMInterface[`WarpBend`].ID;
			auto res = cTextItem.iDispatch.Invoke(cast(int)ID, &iidNULL, 0, DISPATCH_PROPERTYGET, &params, cast(VARIANT*)RT, &exception, &argErr);
			assert(res == S_OK, `Could not invoke COM Function cTextItem.getWarpBend. Error `~to!string(res, 16));
			return cast(double)(RT.dblVal);
		
		};
		

		// extern (Windows) void(double value)
		setWarpBend = cast(typeof(this.setWarpBend)) (double value) 
		{
		 
			EXCEPINFO exception;
			uint argErr = 0;
			auto iidNULL = IID_NULL;
			auto RT = new SafeVariantPtr();
			VARIANT[1] paramVars;
			DISPPARAMS params = {rgvarg: paramVars.ptr, cArgs: 1, cNamedArgs: 0};
			auto ID = COMInterface[`WarpBend`].ID;
			paramVars[0].vt = 5;
			paramVars[0].dblVal = value;
			scope(exit) VariantClear(&paramVars[0]);
			auto res = cTextItem.iDispatch.Invoke(cast(int)ID, &iidNULL, 0, DISPATCH_PROPERTYPUT, &params, cast(VARIANT*)RT, &exception, &argErr);
			assert(res == S_OK, `Could not invoke COM Function cTextItem.setWarpBend. Error `~to!string(res, 16));
		
		};
		

		// extern (Windows) double()
		getWarpHorizontalDistortion = cast(typeof(this.getWarpHorizontalDistortion)) () 
		{
		 
			EXCEPINFO exception;
			uint argErr = 0;
			auto iidNULL = IID_NULL;
			auto RT = new SafeVariantPtr();
			DISPPARAMS params = {rgvarg: null, cArgs: 0, cNamedArgs: 0};
			auto ID = COMInterface[`WarpHorizontalDistortion`].ID;
			auto res = cTextItem.iDispatch.Invoke(cast(int)ID, &iidNULL, 0, DISPATCH_PROPERTYGET, &params, cast(VARIANT*)RT, &exception, &argErr);
			assert(res == S_OK, `Could not invoke COM Function cTextItem.getWarpHorizontalDistortion. Error `~to!string(res, 16));
			return cast(double)(RT.dblVal);
		
		};
		

		// extern (Windows) void(double value)
		setWarpHorizontalDistortion = cast(typeof(this.setWarpHorizontalDistortion)) (double value) 
		{
		 
			EXCEPINFO exception;
			uint argErr = 0;
			auto iidNULL = IID_NULL;
			auto RT = new SafeVariantPtr();
			VARIANT[1] paramVars;
			DISPPARAMS params = {rgvarg: paramVars.ptr, cArgs: 1, cNamedArgs: 0};
			auto ID = COMInterface[`WarpHorizontalDistortion`].ID;
			paramVars[0].vt = 5;
			paramVars[0].dblVal = value;
			scope(exit) VariantClear(&paramVars[0]);
			auto res = cTextItem.iDispatch.Invoke(cast(int)ID, &iidNULL, 0, DISPATCH_PROPERTYPUT, &params, cast(VARIANT*)RT, &exception, &argErr);
			assert(res == S_OK, `Could not invoke COM Function cTextItem.setWarpHorizontalDistortion. Error `~to!string(res, 16));
		
		};
		

		// extern (Windows) double()
		getWarpVerticalDistortion = cast(typeof(this.getWarpVerticalDistortion)) () 
		{
		 
			EXCEPINFO exception;
			uint argErr = 0;
			auto iidNULL = IID_NULL;
			auto RT = new SafeVariantPtr();
			DISPPARAMS params = {rgvarg: null, cArgs: 0, cNamedArgs: 0};
			auto ID = COMInterface[`WarpVerticalDistortion`].ID;
			auto res = cTextItem.iDispatch.Invoke(cast(int)ID, &iidNULL, 0, DISPATCH_PROPERTYGET, &params, cast(VARIANT*)RT, &exception, &argErr);
			assert(res == S_OK, `Could not invoke COM Function cTextItem.getWarpVerticalDistortion. Error `~to!string(res, 16));
			return cast(double)(RT.dblVal);
		
		};
		

		// extern (Windows) void(double value)
		setWarpVerticalDistortion = cast(typeof(this.setWarpVerticalDistortion)) (double value) 
		{
		 
			EXCEPINFO exception;
			uint argErr = 0;
			auto iidNULL = IID_NULL;
			auto RT = new SafeVariantPtr();
			VARIANT[1] paramVars;
			DISPPARAMS params = {rgvarg: paramVars.ptr, cArgs: 1, cNamedArgs: 0};
			auto ID = COMInterface[`WarpVerticalDistortion`].ID;
			paramVars[0].vt = 5;
			paramVars[0].dblVal = value;
			scope(exit) VariantClear(&paramVars[0]);
			auto res = cTextItem.iDispatch.Invoke(cast(int)ID, &iidNULL, 0, DISPATCH_PROPERTYPUT, &params, cast(VARIANT*)RT, &exception, &argErr);
			assert(res == S_OK, `Could not invoke COM Function cTextItem.setWarpVerticalDistortion. Error `~to!string(res, 16));
		
		};
		

		// extern (Windows) iApplication()
		Application = cast(typeof(this.Application)) () 
		{
		 	auto key = `TextItem.Application`;
			if (auto v = key in cApplication.CachedInterfaces)
			{
				return cast(cApplication)*v;
			}
		
			EXCEPINFO exception;
			uint argErr = 0;
			auto iidNULL = IID_NULL;
			auto RT = new SafeVariantPtr();
			DISPPARAMS params = {rgvarg: null, cArgs: 0, cNamedArgs: 0};
			auto ID = COMInterface[`Application`].ID;
			auto res = cTextItem.iDispatch.Invoke(cast(int)ID, &iidNULL, 0, DISPATCH_PROPERTYGET, &params, cast(VARIANT*)RT, &exception, &argErr);
			assert(res == S_OK, `Could not invoke COM Function cTextItem.Application. Error `~to!string(res, 16));
			if (cApplication.Cache)
			{
				if (auto v = key in cApplication.CachedInterfaces)
				{
					(cast(cApplication)v).iDispatch = cast(IDispatch)RT.punkVal;
					return cast(cApplication)*v;
				}
			}
			auto _class = new cApplication(true, cast(IDispatch)(RT.punkVal), this.iDispatch);
			cApplication.CachedInterfaces[key] = _class;
			return _class;
		
		};
		

		// extern (Windows) IDispatch()
		Parent = cast(typeof(this.Parent)) () 
		{
		 	auto key = `TextItem.Dispatch`;
		
			EXCEPINFO exception;
			uint argErr = 0;
			auto iidNULL = IID_NULL;
			auto RT = new SafeVariantPtr();
			DISPPARAMS params = {rgvarg: null, cArgs: 0, cNamedArgs: 0};
			auto ID = COMInterface[`Parent`].ID;
			auto res = cTextItem.iDispatch.Invoke(cast(int)ID, &iidNULL, 0, DISPATCH_PROPERTYGET, &params, cast(VARIANT*)RT, &exception, &argErr);
			assert(res == S_OK, `Could not invoke COM Function cTextItem.Parent. Error `~to!string(res, 16));
			return cast(IDispatch)(RT.pdispVal);
		
		};
		

		// extern (Windows) void()
		CreatePath = cast(typeof(this.CreatePath)) () 
		{
		 
			EXCEPINFO exception;
			uint argErr = 0;
			auto iidNULL = IID_NULL;
			auto RT = new SafeVariantPtr();
			DISPPARAMS params = {rgvarg: null, cArgs: 0, cNamedArgs: 0};
			auto ID = COMInterface[`CreatePath`].ID;
			auto res = cTextItem.iDispatch.Invoke(cast(int)ID, &iidNULL, 0, DISPATCH_PROPERTYGET, &params, cast(VARIANT*)RT, &exception, &argErr);
			assert(res == S_OK, `Could not invoke COM Function cTextItem.CreatePath. Error `~to!string(res, 16));
		
		};
		

		// extern (Windows) void()
		ConvertToShape = cast(typeof(this.ConvertToShape)) () 
		{
		 
			EXCEPINFO exception;
			uint argErr = 0;
			auto iidNULL = IID_NULL;
			auto RT = new SafeVariantPtr();
			DISPPARAMS params = {rgvarg: null, cArgs: 0, cNamedArgs: 0};
			auto ID = COMInterface[`ConvertToShape`].ID;
			auto res = cTextItem.iDispatch.Invoke(cast(int)ID, &iidNULL, 0, DISPATCH_PROPERTYGET, &params, cast(VARIANT*)RT, &exception, &argErr);
			assert(res == S_OK, `Could not invoke COM Function cTextItem.ConvertToShape. Error `~to!string(res, 16));
		
		};
		
	}
	~this(){ if (iDispatch) iDispatch.Release(); }
}

public class cSolidColor
{
	import mPhotoshopCOM, std.conv, mCOM2D, core.sys.windows.windows, core.sys.windows.com, core.sys.windows.wtypes, core.sys.windows.basetyps, core.sys.windows.unknwn, core.sys.windows.oaidl;
	public IDispatch iDispatch = null;
	public IDispatch iDispatchParent = null;
	public IDispatch iDispatchQuery = null;
	public GUID iID = IID.init;
	public GUID clsID = IID.init;
	public static bool Cache = true;
	public static bool FastCache = true;

	public PsColorModel delegate() getModel;
	PsColorModel Model() { return getModel(); } 
	public void delegate(PsColorModel value) setModel;
	auto Model(PsColorModel value) { setModel(value); }
	public cRGBColor delegate() getRGB;
	cRGBColor RGB() { return getRGB(); } 
	public void delegate(cRGBColor value) setRGB;
	auto RGB(cRGBColor value) { setRGB(value); }
	public cGrayColor delegate() getGray;
	cGrayColor Gray() { return getGray(); } 
	public void delegate(cGrayColor value) setGray;
	auto Gray(cGrayColor value) { setGray(value); }
	public iCMYKColor delegate() getCMYK;
	iCMYKColor CMYK() { return getCMYK(); } 
	public void delegate(iCMYKColor value) setCMYK;
	auto CMYK(iCMYKColor value) { setCMYK(value); }
	public iLabColor delegate() getLab;
	iLabColor Lab() { return getLab(); } 
	public void delegate(iLabColor value) setLab;
	auto Lab(iLabColor value) { setLab(value); }
	public iHSBColor delegate() getHSB;
	iHSBColor HSB() { return getHSB(); } 
	public void delegate(iHSBColor value) setHSB;
	auto HSB(iHSBColor value) { setHSB(value); }
	public cRGBColor delegate() NearestWebColor;
	public cApplication delegate() Application;
	public void delegate(cSolidColor value) ObjectValue;
	public bool delegate(cSolidColor Color) IsEqual;

	// iSolidColor
	public this(bool _query = false, IDispatch _Query = null, IDispatch _Parent = null)
	{

		iDispatchQuery = _Query;
		iDispatchParent = _Parent;
		auto COMInterface = GetDynamicCOMInterface!(mPhotoshopCOM.iSolidColor, void, cSolidColor)(this, null, _query);

		// extern (Windows) PsColorModel()
		getModel = cast(typeof(this.getModel)) () 
		{
		 
			EXCEPINFO exception;
			uint argErr = 0;
			auto iidNULL = IID_NULL;
			auto RT = new SafeVariantPtr();
			DISPPARAMS params = {rgvarg: null, cArgs: 0, cNamedArgs: 0};
			auto ID = COMInterface[`Model`].ID;
			auto res = cSolidColor.iDispatch.Invoke(cast(int)ID, &iidNULL, 0, DISPATCH_PROPERTYGET, &params, cast(VARIANT*)RT, &exception, &argErr);
			assert(res == S_OK, `Could not invoke COM Function cSolidColor.getModel. Error `~to!string(res, 16));
			return cast(PsColorModel)(RT.lVal);
		
		};
		

		// extern (Windows) void(PsColorModel value)
		setModel = cast(typeof(this.setModel)) (PsColorModel value) 
		{
		 
			EXCEPINFO exception;
			uint argErr = 0;
			auto iidNULL = IID_NULL;
			auto RT = new SafeVariantPtr();
			VARIANT[1] paramVars;
			DISPPARAMS params = {rgvarg: paramVars.ptr, cArgs: 1, cNamedArgs: 0};
			auto ID = COMInterface[`Model`].ID;
			paramVars[0].vt = 22;
			paramVars[0].intVal = value;
			scope(exit) VariantClear(&paramVars[0]);
			auto res = cSolidColor.iDispatch.Invoke(cast(int)ID, &iidNULL, 0, DISPATCH_PROPERTYPUT, &params, cast(VARIANT*)RT, &exception, &argErr);
			assert(res == S_OK, `Could not invoke COM Function cSolidColor.setModel. Error `~to!string(res, 16));
		
		};
		

		// extern (Windows) iRGBColor()
		getRGB = cast(typeof(this.getRGB)) () 
		{
		 	auto key = `SolidColor.RGBColor`;
			if (auto v = key in cApplication.CachedInterfaces)
			{
				return cast(cRGBColor)*v;
			}
		
			EXCEPINFO exception;
			uint argErr = 0;
			auto iidNULL = IID_NULL;
			auto RT = new SafeVariantPtr();
			DISPPARAMS params = {rgvarg: null, cArgs: 0, cNamedArgs: 0};
			auto ID = COMInterface[`RGB`].ID;
			auto res = cSolidColor.iDispatch.Invoke(cast(int)ID, &iidNULL, 0, DISPATCH_PROPERTYGET, &params, cast(VARIANT*)RT, &exception, &argErr);
			assert(res == S_OK, `Could not invoke COM Function cSolidColor.getRGB. Error `~to!string(res, 16));
			if (cApplication.Cache)
			{
				if (auto v = key in cApplication.CachedInterfaces)
				{
					(cast(cRGBColor)v).iDispatch = cast(IDispatch)RT.punkVal;
					return cast(cRGBColor)*v;
				}
			}
			auto _class = new cRGBColor(true, cast(IDispatch)(RT.punkVal), this.iDispatch);
			cApplication.CachedInterfaces[key] = _class;
			return _class;
		
		};
		

		// extern (Windows) void(iRGBColor value)
		setRGB = cast(typeof(this.setRGB)) (iRGBColor value) 
		{
		 
			EXCEPINFO exception;
			uint argErr = 0;
			auto iidNULL = IID_NULL;
			auto RT = new SafeVariantPtr();
			VARIANT[1] paramVars;
			DISPPARAMS params = {rgvarg: paramVars.ptr, cArgs: 1, cNamedArgs: 0};
			auto ID = COMInterface[`RGB`].ID;
			paramVars[0].vt = 13;
			paramVars[0].punkVal = value;
			scope(exit) VariantClear(&paramVars[0]);
			auto res = cSolidColor.iDispatch.Invoke(cast(int)ID, &iidNULL, 0, DISPATCH_PROPERTYPUT, &params, cast(VARIANT*)RT, &exception, &argErr);
			assert(res == S_OK, `Could not invoke COM Function cSolidColor.setRGB. Error `~to!string(res, 16));
		
		};
		

		// extern (Windows) iGrayColor()
		getGray = cast(typeof(this.getGray)) () 
		{
		 	auto key = `SolidColor.GrayColor`;
			if (auto v = key in cApplication.CachedInterfaces)
			{
				return cast(cGrayColor)*v;
			}
		
			EXCEPINFO exception;
			uint argErr = 0;
			auto iidNULL = IID_NULL;
			auto RT = new SafeVariantPtr();
			DISPPARAMS params = {rgvarg: null, cArgs: 0, cNamedArgs: 0};
			auto ID = COMInterface[`Gray`].ID;
			auto res = cSolidColor.iDispatch.Invoke(cast(int)ID, &iidNULL, 0, DISPATCH_PROPERTYGET, &params, cast(VARIANT*)RT, &exception, &argErr);
			assert(res == S_OK, `Could not invoke COM Function cSolidColor.getGray. Error `~to!string(res, 16));
			if (cApplication.Cache)
			{
				if (auto v = key in cApplication.CachedInterfaces)
				{
					(cast(cGrayColor)v).iDispatch = cast(IDispatch)RT.punkVal;
					return cast(cGrayColor)*v;
				}
			}
			auto _class = new cGrayColor(true, cast(IDispatch)(RT.punkVal), this.iDispatch);
			cApplication.CachedInterfaces[key] = _class;
			return _class;
		
		};
		

		// extern (Windows) void(iGrayColor value)
		setGray = cast(typeof(this.setGray)) (iGrayColor value) 
		{
		 
			EXCEPINFO exception;
			uint argErr = 0;
			auto iidNULL = IID_NULL;
			auto RT = new SafeVariantPtr();
			VARIANT[1] paramVars;
			DISPPARAMS params = {rgvarg: paramVars.ptr, cArgs: 1, cNamedArgs: 0};
			auto ID = COMInterface[`Gray`].ID;
			paramVars[0].vt = 13;
			paramVars[0].punkVal = value;
			scope(exit) VariantClear(&paramVars[0]);
			auto res = cSolidColor.iDispatch.Invoke(cast(int)ID, &iidNULL, 0, DISPATCH_PROPERTYPUT, &params, cast(VARIANT*)RT, &exception, &argErr);
			assert(res == S_OK, `Could not invoke COM Function cSolidColor.setGray. Error `~to!string(res, 16));
		
		};
		

		// extern (Windows) iCMYKColor()
		getCMYK = cast(typeof(this.getCMYK)) () 
		{
		 	auto key = `SolidColor.CMYKColor`;
		
			EXCEPINFO exception;
			uint argErr = 0;
			auto iidNULL = IID_NULL;
			auto RT = new SafeVariantPtr();
			DISPPARAMS params = {rgvarg: null, cArgs: 0, cNamedArgs: 0};
			auto ID = COMInterface[`CMYK`].ID;
			auto res = cSolidColor.iDispatch.Invoke(cast(int)ID, &iidNULL, 0, DISPATCH_PROPERTYGET, &params, cast(VARIANT*)RT, &exception, &argErr);
			assert(res == S_OK, `Could not invoke COM Function cSolidColor.getCMYK. Error `~to!string(res, 16));
			return cast(iCMYKColor)(RT.punkVal);
		
		};
		

		// extern (Windows) void(iCMYKColor value)
		setCMYK = cast(typeof(this.setCMYK)) (iCMYKColor value) 
		{
		 
			EXCEPINFO exception;
			uint argErr = 0;
			auto iidNULL = IID_NULL;
			auto RT = new SafeVariantPtr();
			VARIANT[1] paramVars;
			DISPPARAMS params = {rgvarg: paramVars.ptr, cArgs: 1, cNamedArgs: 0};
			auto ID = COMInterface[`CMYK`].ID;
			paramVars[0].vt = 13;
			paramVars[0].punkVal = value;
			scope(exit) VariantClear(&paramVars[0]);
			auto res = cSolidColor.iDispatch.Invoke(cast(int)ID, &iidNULL, 0, DISPATCH_PROPERTYPUT, &params, cast(VARIANT*)RT, &exception, &argErr);
			assert(res == S_OK, `Could not invoke COM Function cSolidColor.setCMYK. Error `~to!string(res, 16));
		
		};
		

		// extern (Windows) iLabColor()
		getLab = cast(typeof(this.getLab)) () 
		{
		 	auto key = `SolidColor.LabColor`;
		
			EXCEPINFO exception;
			uint argErr = 0;
			auto iidNULL = IID_NULL;
			auto RT = new SafeVariantPtr();
			DISPPARAMS params = {rgvarg: null, cArgs: 0, cNamedArgs: 0};
			auto ID = COMInterface[`Lab`].ID;
			auto res = cSolidColor.iDispatch.Invoke(cast(int)ID, &iidNULL, 0, DISPATCH_PROPERTYGET, &params, cast(VARIANT*)RT, &exception, &argErr);
			assert(res == S_OK, `Could not invoke COM Function cSolidColor.getLab. Error `~to!string(res, 16));
			return cast(iLabColor)(RT.punkVal);
		
		};
		

		// extern (Windows) void(iLabColor value)
		setLab = cast(typeof(this.setLab)) (iLabColor value) 
		{
		 
			EXCEPINFO exception;
			uint argErr = 0;
			auto iidNULL = IID_NULL;
			auto RT = new SafeVariantPtr();
			VARIANT[1] paramVars;
			DISPPARAMS params = {rgvarg: paramVars.ptr, cArgs: 1, cNamedArgs: 0};
			auto ID = COMInterface[`Lab`].ID;
			paramVars[0].vt = 13;
			paramVars[0].punkVal = value;
			scope(exit) VariantClear(&paramVars[0]);
			auto res = cSolidColor.iDispatch.Invoke(cast(int)ID, &iidNULL, 0, DISPATCH_PROPERTYPUT, &params, cast(VARIANT*)RT, &exception, &argErr);
			assert(res == S_OK, `Could not invoke COM Function cSolidColor.setLab. Error `~to!string(res, 16));
		
		};
		

		// extern (Windows) iHSBColor()
		getHSB = cast(typeof(this.getHSB)) () 
		{
		 	auto key = `SolidColor.HSBColor`;
		
			EXCEPINFO exception;
			uint argErr = 0;
			auto iidNULL = IID_NULL;
			auto RT = new SafeVariantPtr();
			DISPPARAMS params = {rgvarg: null, cArgs: 0, cNamedArgs: 0};
			auto ID = COMInterface[`HSB`].ID;
			auto res = cSolidColor.iDispatch.Invoke(cast(int)ID, &iidNULL, 0, DISPATCH_PROPERTYGET, &params, cast(VARIANT*)RT, &exception, &argErr);
			assert(res == S_OK, `Could not invoke COM Function cSolidColor.getHSB. Error `~to!string(res, 16));
			return cast(iHSBColor)(RT.punkVal);
		
		};
		

		// extern (Windows) void(iHSBColor value)
		setHSB = cast(typeof(this.setHSB)) (iHSBColor value) 
		{
		 
			EXCEPINFO exception;
			uint argErr = 0;
			auto iidNULL = IID_NULL;
			auto RT = new SafeVariantPtr();
			VARIANT[1] paramVars;
			DISPPARAMS params = {rgvarg: paramVars.ptr, cArgs: 1, cNamedArgs: 0};
			auto ID = COMInterface[`HSB`].ID;
			paramVars[0].vt = 13;
			paramVars[0].punkVal = value;
			scope(exit) VariantClear(&paramVars[0]);
			auto res = cSolidColor.iDispatch.Invoke(cast(int)ID, &iidNULL, 0, DISPATCH_PROPERTYPUT, &params, cast(VARIANT*)RT, &exception, &argErr);
			assert(res == S_OK, `Could not invoke COM Function cSolidColor.setHSB. Error `~to!string(res, 16));
		
		};
		

		// extern (Windows) iRGBColor()
		NearestWebColor = cast(typeof(this.NearestWebColor)) () 
		{
		 	auto key = `SolidColor.RGBColor`;
			if (auto v = key in cApplication.CachedInterfaces)
			{
				return cast(cRGBColor)*v;
			}
		
			EXCEPINFO exception;
			uint argErr = 0;
			auto iidNULL = IID_NULL;
			auto RT = new SafeVariantPtr();
			DISPPARAMS params = {rgvarg: null, cArgs: 0, cNamedArgs: 0};
			auto ID = COMInterface[`NearestWebColor`].ID;
			auto res = cSolidColor.iDispatch.Invoke(cast(int)ID, &iidNULL, 0, DISPATCH_PROPERTYGET, &params, cast(VARIANT*)RT, &exception, &argErr);
			assert(res == S_OK, `Could not invoke COM Function cSolidColor.NearestWebColor. Error `~to!string(res, 16));
			if (cApplication.Cache)
			{
				if (auto v = key in cApplication.CachedInterfaces)
				{
					(cast(cRGBColor)v).iDispatch = cast(IDispatch)RT.punkVal;
					return cast(cRGBColor)*v;
				}
			}
			auto _class = new cRGBColor(true, cast(IDispatch)(RT.punkVal), this.iDispatch);
			cApplication.CachedInterfaces[key] = _class;
			return _class;
		
		};
		

		// extern (Windows) iApplication()
		Application = cast(typeof(this.Application)) () 
		{
		 	auto key = `SolidColor.Application`;
			if (auto v = key in cApplication.CachedInterfaces)
			{
				return cast(cApplication)*v;
			}
		
			EXCEPINFO exception;
			uint argErr = 0;
			auto iidNULL = IID_NULL;
			auto RT = new SafeVariantPtr();
			DISPPARAMS params = {rgvarg: null, cArgs: 0, cNamedArgs: 0};
			auto ID = COMInterface[`Application`].ID;
			auto res = cSolidColor.iDispatch.Invoke(cast(int)ID, &iidNULL, 0, DISPATCH_PROPERTYGET, &params, cast(VARIANT*)RT, &exception, &argErr);
			assert(res == S_OK, `Could not invoke COM Function cSolidColor.Application. Error `~to!string(res, 16));
			if (cApplication.Cache)
			{
				if (auto v = key in cApplication.CachedInterfaces)
				{
					(cast(cApplication)v).iDispatch = cast(IDispatch)RT.punkVal;
					return cast(cApplication)*v;
				}
			}
			auto _class = new cApplication(true, cast(IDispatch)(RT.punkVal), this.iDispatch);
			cApplication.CachedInterfaces[key] = _class;
			return _class;
		
		};
		

		// extern (Windows) void(iSolidColor value)
		ObjectValue = cast(typeof(this.ObjectValue)) (iSolidColor value) 
		{
		 
			EXCEPINFO exception;
			uint argErr = 0;
			auto iidNULL = IID_NULL;
			auto RT = new SafeVariantPtr();
			VARIANT[1] paramVars;
			DISPPARAMS params = {rgvarg: paramVars.ptr, cArgs: 1, cNamedArgs: 0};
			auto ID = COMInterface[`ObjectValue`].ID;
			paramVars[0].vt = 13;
			paramVars[0].punkVal = value;
			scope(exit) VariantClear(&paramVars[0]);
			auto res = cSolidColor.iDispatch.Invoke(cast(int)ID, &iidNULL, 0, DISPATCH_METHOD, &params, cast(VARIANT*)RT, &exception, &argErr);
			assert(res == S_OK, `Could not invoke COM Function cSolidColor.ObjectValue. Error `~to!string(res, 16));
		
		};
		

		// extern (Windows) bool(iSolidColor Color)
		IsEqual = cast(typeof(this.IsEqual)) (iSolidColor Color) 
		{
		 
			EXCEPINFO exception;
			uint argErr = 0;
			auto iidNULL = IID_NULL;
			auto RT = new SafeVariantPtr();
			VARIANT[1] paramVars;
			DISPPARAMS params = {rgvarg: paramVars.ptr, cArgs: 1, cNamedArgs: 0};
			auto ID = COMInterface[`IsEqual`].ID;
			paramVars[0].vt = 13;
			paramVars[0].punkVal = Color;
			scope(exit) VariantClear(&paramVars[0]);
			auto res = cSolidColor.iDispatch.Invoke(cast(int)ID, &iidNULL, 0, DISPATCH_METHOD, &params, cast(VARIANT*)RT, &exception, &argErr);
			assert(res == S_OK, `Could not invoke COM Function cSolidColor.IsEqual. Error `~to!string(res, 16));
			return cast(bool)(RT.intVal);
		
		};
		
	}
	~this(){ if (iDispatch) iDispatch.Release(); }
}

public class cRGBColor
{
	import mPhotoshopCOM, std.conv, mCOM2D, core.sys.windows.windows, core.sys.windows.com, core.sys.windows.wtypes, core.sys.windows.basetyps, core.sys.windows.unknwn, core.sys.windows.oaidl;
	public IDispatch iDispatch = null;
	public IDispatch iDispatchParent = null;
	public IDispatch iDispatchQuery = null;
	public GUID iID = IID.init;
	public GUID clsID = IID.init;
	public static bool Cache = true;
	public static bool FastCache = true;

	public double delegate() getRed;
	double Red() { return getRed(); } 
	public void delegate(double value) setRed;
	auto Red(double value) { setRed(value); }
	public double delegate() getGreen;
	double Green() { return getGreen(); } 
	public void delegate(double value) setGreen;
	auto Green(double value) { setGreen(value); }
	public double delegate() getBlue;
	double Blue() { return getBlue(); } 
	public void delegate(double value) setBlue;
	auto Blue(double value) { setBlue(value); }
	public wchar* delegate() getHexValue;
	wchar* HexValue() { return getHexValue(); } 
	public void delegate(wchar* value) setHexValue;
	auto HexValue(wchar* value) { setHexValue(value); }
	public cApplication delegate() Application;
	public void delegate(cRGBColor value) ObjectValue;

	// iRGBColor
	public this(bool _query = false, IDispatch _Query = null, IDispatch _Parent = null)
	{

		iDispatchQuery = _Query;
		iDispatchParent = _Parent;
		auto COMInterface = GetDynamicCOMInterface!(mPhotoshopCOM.iRGBColor, void, cRGBColor)(this, null, _query);

		// extern (Windows) double()
		getRed = cast(typeof(this.getRed)) () 
		{
		 
			EXCEPINFO exception;
			uint argErr = 0;
			auto iidNULL = IID_NULL;
			auto RT = new SafeVariantPtr();
			DISPPARAMS params = {rgvarg: null, cArgs: 0, cNamedArgs: 0};
			auto ID = COMInterface[`Red`].ID;
			auto res = cRGBColor.iDispatch.Invoke(cast(int)ID, &iidNULL, 0, DISPATCH_PROPERTYGET, &params, cast(VARIANT*)RT, &exception, &argErr);
			assert(res == S_OK, `Could not invoke COM Function cRGBColor.getRed. Error `~to!string(res, 16));
			return cast(double)(RT.dblVal);
		
		};
		

		// extern (Windows) void(double value)
		setRed = cast(typeof(this.setRed)) (double value) 
		{
		 
			EXCEPINFO exception;
			uint argErr = 0;
			auto iidNULL = IID_NULL;
			auto RT = new SafeVariantPtr();
			VARIANT[1] paramVars;
			DISPPARAMS params = {rgvarg: paramVars.ptr, cArgs: 1, cNamedArgs: 0};
			auto ID = COMInterface[`Red`].ID;
			paramVars[0].vt = 5;
			paramVars[0].dblVal = value;
			scope(exit) VariantClear(&paramVars[0]);
			auto res = cRGBColor.iDispatch.Invoke(cast(int)ID, &iidNULL, 0, DISPATCH_PROPERTYPUT, &params, cast(VARIANT*)RT, &exception, &argErr);
			assert(res == S_OK, `Could not invoke COM Function cRGBColor.setRed. Error `~to!string(res, 16));
		
		};
		

		// extern (Windows) double()
		getGreen = cast(typeof(this.getGreen)) () 
		{
		 
			EXCEPINFO exception;
			uint argErr = 0;
			auto iidNULL = IID_NULL;
			auto RT = new SafeVariantPtr();
			DISPPARAMS params = {rgvarg: null, cArgs: 0, cNamedArgs: 0};
			auto ID = COMInterface[`Green`].ID;
			auto res = cRGBColor.iDispatch.Invoke(cast(int)ID, &iidNULL, 0, DISPATCH_PROPERTYGET, &params, cast(VARIANT*)RT, &exception, &argErr);
			assert(res == S_OK, `Could not invoke COM Function cRGBColor.getGreen. Error `~to!string(res, 16));
			return cast(double)(RT.dblVal);
		
		};
		

		// extern (Windows) void(double value)
		setGreen = cast(typeof(this.setGreen)) (double value) 
		{
		 
			EXCEPINFO exception;
			uint argErr = 0;
			auto iidNULL = IID_NULL;
			auto RT = new SafeVariantPtr();
			VARIANT[1] paramVars;
			DISPPARAMS params = {rgvarg: paramVars.ptr, cArgs: 1, cNamedArgs: 0};
			auto ID = COMInterface[`Green`].ID;
			paramVars[0].vt = 5;
			paramVars[0].dblVal = value;
			scope(exit) VariantClear(&paramVars[0]);
			auto res = cRGBColor.iDispatch.Invoke(cast(int)ID, &iidNULL, 0, DISPATCH_PROPERTYPUT, &params, cast(VARIANT*)RT, &exception, &argErr);
			assert(res == S_OK, `Could not invoke COM Function cRGBColor.setGreen. Error `~to!string(res, 16));
		
		};
		

		// extern (Windows) double()
		getBlue = cast(typeof(this.getBlue)) () 
		{
		 
			EXCEPINFO exception;
			uint argErr = 0;
			auto iidNULL = IID_NULL;
			auto RT = new SafeVariantPtr();
			DISPPARAMS params = {rgvarg: null, cArgs: 0, cNamedArgs: 0};
			auto ID = COMInterface[`Blue`].ID;
			auto res = cRGBColor.iDispatch.Invoke(cast(int)ID, &iidNULL, 0, DISPATCH_PROPERTYGET, &params, cast(VARIANT*)RT, &exception, &argErr);
			assert(res == S_OK, `Could not invoke COM Function cRGBColor.getBlue. Error `~to!string(res, 16));
			return cast(double)(RT.dblVal);
		
		};
		

		// extern (Windows) void(double value)
		setBlue = cast(typeof(this.setBlue)) (double value) 
		{
		 
			EXCEPINFO exception;
			uint argErr = 0;
			auto iidNULL = IID_NULL;
			auto RT = new SafeVariantPtr();
			VARIANT[1] paramVars;
			DISPPARAMS params = {rgvarg: paramVars.ptr, cArgs: 1, cNamedArgs: 0};
			auto ID = COMInterface[`Blue`].ID;
			paramVars[0].vt = 5;
			paramVars[0].dblVal = value;
			scope(exit) VariantClear(&paramVars[0]);
			auto res = cRGBColor.iDispatch.Invoke(cast(int)ID, &iidNULL, 0, DISPATCH_PROPERTYPUT, &params, cast(VARIANT*)RT, &exception, &argErr);
			assert(res == S_OK, `Could not invoke COM Function cRGBColor.setBlue. Error `~to!string(res, 16));
		
		};
		

		// extern (Windows) wchar*()
		getHexValue = cast(typeof(this.getHexValue)) () 
		{
		 
			EXCEPINFO exception;
			uint argErr = 0;
			auto iidNULL = IID_NULL;
			auto RT = new SafeVariantPtr();
			DISPPARAMS params = {rgvarg: null, cArgs: 0, cNamedArgs: 0};
			auto ID = COMInterface[`HexValue`].ID;
			auto res = cRGBColor.iDispatch.Invoke(cast(int)ID, &iidNULL, 0, DISPATCH_PROPERTYGET, &params, cast(VARIANT*)RT, &exception, &argErr);
			assert(res == S_OK, `Could not invoke COM Function cRGBColor.getHexValue. Error `~to!string(res, 16));
			return cast(wchar*)(RT.bstrVal);
		
		};
		

		// extern (Windows) void(wchar* value)
		setHexValue = cast(typeof(this.setHexValue)) (wchar* value) 
		{
		 
			EXCEPINFO exception;
			uint argErr = 0;
			auto iidNULL = IID_NULL;
			auto RT = new SafeVariantPtr();
			VARIANT[1] paramVars;
			DISPPARAMS params = {rgvarg: paramVars.ptr, cArgs: 1, cNamedArgs: 0};
			auto ID = COMInterface[`HexValue`].ID;
			paramVars[0].vt = 8;
			paramVars[0].bstrVal = value;
			scope(exit) VariantClear(&paramVars[0]);
			auto res = cRGBColor.iDispatch.Invoke(cast(int)ID, &iidNULL, 0, DISPATCH_PROPERTYPUT, &params, cast(VARIANT*)RT, &exception, &argErr);
			assert(res == S_OK, `Could not invoke COM Function cRGBColor.setHexValue. Error `~to!string(res, 16));
		
		};
		

		// extern (Windows) iApplication()
		Application = cast(typeof(this.Application)) () 
		{
		 	auto key = `RGBColor.Application`;
			if (auto v = key in cApplication.CachedInterfaces)
			{
				return cast(cApplication)*v;
			}
		
			EXCEPINFO exception;
			uint argErr = 0;
			auto iidNULL = IID_NULL;
			auto RT = new SafeVariantPtr();
			DISPPARAMS params = {rgvarg: null, cArgs: 0, cNamedArgs: 0};
			auto ID = COMInterface[`Application`].ID;
			auto res = cRGBColor.iDispatch.Invoke(cast(int)ID, &iidNULL, 0, DISPATCH_PROPERTYGET, &params, cast(VARIANT*)RT, &exception, &argErr);
			assert(res == S_OK, `Could not invoke COM Function cRGBColor.Application. Error `~to!string(res, 16));
			if (cApplication.Cache)
			{
				if (auto v = key in cApplication.CachedInterfaces)
				{
					(cast(cApplication)v).iDispatch = cast(IDispatch)RT.punkVal;
					return cast(cApplication)*v;
				}
			}
			auto _class = new cApplication(true, cast(IDispatch)(RT.punkVal), this.iDispatch);
			cApplication.CachedInterfaces[key] = _class;
			return _class;
		
		};
		

		// extern (Windows) void(iRGBColor value)
		ObjectValue = cast(typeof(this.ObjectValue)) (iRGBColor value) 
		{
		 
			EXCEPINFO exception;
			uint argErr = 0;
			auto iidNULL = IID_NULL;
			auto RT = new SafeVariantPtr();
			VARIANT[1] paramVars;
			DISPPARAMS params = {rgvarg: paramVars.ptr, cArgs: 1, cNamedArgs: 0};
			auto ID = COMInterface[`ObjectValue`].ID;
			paramVars[0].vt = 13;
			paramVars[0].punkVal = value;
			scope(exit) VariantClear(&paramVars[0]);
			auto res = cRGBColor.iDispatch.Invoke(cast(int)ID, &iidNULL, 0, DISPATCH_METHOD, &params, cast(VARIANT*)RT, &exception, &argErr);
			assert(res == S_OK, `Could not invoke COM Function cRGBColor.ObjectValue. Error `~to!string(res, 16));
		
		};
		
	}
	~this(){ if (iDispatch) iDispatch.Release(); }
}

public class cGrayColor
{
	import mPhotoshopCOM, std.conv, mCOM2D, core.sys.windows.windows, core.sys.windows.com, core.sys.windows.wtypes, core.sys.windows.basetyps, core.sys.windows.unknwn, core.sys.windows.oaidl;
	public IDispatch iDispatch = null;
	public IDispatch iDispatchParent = null;
	public IDispatch iDispatchQuery = null;
	public GUID iID = IID.init;
	public GUID clsID = IID.init;
	public static bool Cache = true;
	public static bool FastCache = true;

	public double delegate() getGray;
	double Gray() { return getGray(); } 
	public void delegate(double value) setGray;
	auto Gray(double value) { setGray(value); }
	public cApplication delegate() Application;
	public void delegate(cGrayColor value) ObjectValue;

	// iGrayColor
	public this(bool _query = false, IDispatch _Query = null, IDispatch _Parent = null)
	{

		iDispatchQuery = _Query;
		iDispatchParent = _Parent;
		auto COMInterface = GetDynamicCOMInterface!(mPhotoshopCOM.iGrayColor, void, cGrayColor)(this, null, _query);

		// extern (Windows) double()
		getGray = cast(typeof(this.getGray)) () 
		{
		 
			EXCEPINFO exception;
			uint argErr = 0;
			auto iidNULL = IID_NULL;
			auto RT = new SafeVariantPtr();
			DISPPARAMS params = {rgvarg: null, cArgs: 0, cNamedArgs: 0};
			auto ID = COMInterface[`Gray`].ID;
			auto res = cGrayColor.iDispatch.Invoke(cast(int)ID, &iidNULL, 0, DISPATCH_PROPERTYGET, &params, cast(VARIANT*)RT, &exception, &argErr);
			assert(res == S_OK, `Could not invoke COM Function cGrayColor.getGray. Error `~to!string(res, 16));
			return cast(double)(RT.dblVal);
		
		};
		

		// extern (Windows) void(double value)
		setGray = cast(typeof(this.setGray)) (double value) 
		{
		 
			EXCEPINFO exception;
			uint argErr = 0;
			auto iidNULL = IID_NULL;
			auto RT = new SafeVariantPtr();
			VARIANT[1] paramVars;
			DISPPARAMS params = {rgvarg: paramVars.ptr, cArgs: 1, cNamedArgs: 0};
			auto ID = COMInterface[`Gray`].ID;
			paramVars[0].vt = 5;
			paramVars[0].dblVal = value;
			scope(exit) VariantClear(&paramVars[0]);
			auto res = cGrayColor.iDispatch.Invoke(cast(int)ID, &iidNULL, 0, DISPATCH_PROPERTYPUT, &params, cast(VARIANT*)RT, &exception, &argErr);
			assert(res == S_OK, `Could not invoke COM Function cGrayColor.setGray. Error `~to!string(res, 16));
		
		};
		

		// extern (Windows) iApplication()
		Application = cast(typeof(this.Application)) () 
		{
		 	auto key = `GrayColor.Application`;
			if (auto v = key in cApplication.CachedInterfaces)
			{
				return cast(cApplication)*v;
			}
		
			EXCEPINFO exception;
			uint argErr = 0;
			auto iidNULL = IID_NULL;
			auto RT = new SafeVariantPtr();
			DISPPARAMS params = {rgvarg: null, cArgs: 0, cNamedArgs: 0};
			auto ID = COMInterface[`Application`].ID;
			auto res = cGrayColor.iDispatch.Invoke(cast(int)ID, &iidNULL, 0, DISPATCH_PROPERTYGET, &params, cast(VARIANT*)RT, &exception, &argErr);
			assert(res == S_OK, `Could not invoke COM Function cGrayColor.Application. Error `~to!string(res, 16));
			if (cApplication.Cache)
			{
				if (auto v = key in cApplication.CachedInterfaces)
				{
					(cast(cApplication)v).iDispatch = cast(IDispatch)RT.punkVal;
					return cast(cApplication)*v;
				}
			}
			auto _class = new cApplication(true, cast(IDispatch)(RT.punkVal), this.iDispatch);
			cApplication.CachedInterfaces[key] = _class;
			return _class;
		
		};
		

		// extern (Windows) void(iGrayColor value)
		ObjectValue = cast(typeof(this.ObjectValue)) (iGrayColor value) 
		{
		 
			EXCEPINFO exception;
			uint argErr = 0;
			auto iidNULL = IID_NULL;
			auto RT = new SafeVariantPtr();
			VARIANT[1] paramVars;
			DISPPARAMS params = {rgvarg: paramVars.ptr, cArgs: 1, cNamedArgs: 0};
			auto ID = COMInterface[`ObjectValue`].ID;
			paramVars[0].vt = 13;
			paramVars[0].punkVal = value;
			scope(exit) VariantClear(&paramVars[0]);
			auto res = cGrayColor.iDispatch.Invoke(cast(int)ID, &iidNULL, 0, DISPATCH_METHOD, &params, cast(VARIANT*)RT, &exception, &argErr);
			assert(res == S_OK, `Could not invoke COM Function cGrayColor.ObjectValue. Error `~to!string(res, 16));
		
		};
		
	}
	~this(){ if (iDispatch) iDispatch.Release(); }
}

public class cLayerSet
{
	import mPhotoshopCOM, std.conv, mCOM2D, core.sys.windows.windows, core.sys.windows.com, core.sys.windows.wtypes, core.sys.windows.basetyps, core.sys.windows.unknwn, core.sys.windows.oaidl;
	public IDispatch iDispatch = null;
	public IDispatch iDispatchParent = null;
	public IDispatch iDispatchQuery = null;
	public GUID iID = IID.init;
	public GUID clsID = IID.init;
	public static bool Cache = true;
	public static bool FastCache = true;

	public SafeVariantPtr delegate() getEnabledChannels;
	SafeVariantPtr EnabledChannels() { return getEnabledChannels(); } 
	public void delegate(VARIANT value) setEnabledChannels;
	auto EnabledChannels(VARIANT value) { setEnabledChannels(value); }
	public iLayers delegate() Layers;
	public iLayerSets delegate() LayerSets;
	public iArtLayers delegate() ArtLayers;
	public IDispatch delegate() Layer;
	public wchar* delegate() getName;
	wchar* Name() { return getName(); } 
	public void delegate(wchar* value) setName;
	auto Name(wchar* value) { setName(value); }
	public bool delegate() getAllLocked;
	bool AllLocked() { return getAllLocked(); } 
	public void delegate(bool value) setAllLocked;
	auto AllLocked(bool value) { setAllLocked(value); }
	public PsBlendMode delegate() getBlendMode;
	PsBlendMode BlendMode() { return getBlendMode(); } 
	public void delegate(PsBlendMode value) setBlendMode;
	auto BlendMode(PsBlendMode value) { setBlendMode(value); }
	public SafeVariantPtr delegate() LinkedLayers;
	public double delegate() getOpacity;
	double Opacity() { return getOpacity(); } 
	public void delegate(double value) setOpacity;
	auto Opacity(double value) { setOpacity(value); }
	public bool delegate() getVisible;
	bool Visible() { return getVisible(); } 
	public void delegate(bool value) setVisible;
	auto Visible(bool value) { setVisible(value); }
	public int delegate() id;
	public int delegate() ItemIndex;
	public PsLayerType delegate() LayerType;
	public cArtLayer delegate() ArtLayer;
	public cLayerSet delegate() LayerSet;
	public SafeVariantPtr delegate() Bounds;
	public cApplication delegate() Application;
	public IDispatch delegate() Parent;
	public cArtLayer delegate() Merge;
	public void delegate() Unlink;
	public void delegate(IDispatch With) Link;
	public void delegate(VARIANT DeltaX, VARIANT DeltaY) Translate;
	public void delegate(double Angle, VARIANT Anchor) Rotate;
	public void delegate(VARIANT Horizontal, VARIANT Vertical, VARIANT Anchor) Resize;
	public void delegate(IDispatch Container) MoveToBeginning;
	public void delegate(IDispatch Container) MoveToEnd;
	public void delegate(IDispatch RelativeObject) MoveBefore;
	public void delegate(IDispatch RelativeObject) MoveAfter;
	public IDispatch delegate(VARIANT RelativeObject, VARIANT InsertionLocation) Duplicate;
	public void delegate(IDispatch RelativeObject, PsElementPlacement InsertionLocation) Move;
	public void delegate() Delete;

	// iLayerSet
	public this(bool _query = false, IDispatch _Query = null, IDispatch _Parent = null)
	{

		iDispatchQuery = _Query;
		iDispatchParent = _Parent;
		auto COMInterface = GetDynamicCOMInterface!(mPhotoshopCOM.iLayerSet, void, cLayerSet)(this, null, _query);

		// extern (Windows) VARIANT()
		getEnabledChannels = cast(typeof(this.getEnabledChannels)) () 
		{
		 
			EXCEPINFO exception;
			uint argErr = 0;
			auto iidNULL = IID_NULL;
			auto RT = new SafeVariantPtr();
			DISPPARAMS params = {rgvarg: null, cArgs: 0, cNamedArgs: 0};
			auto ID = COMInterface[`EnabledChannels`].ID;
			auto res = cLayerSet.iDispatch.Invoke(cast(int)ID, &iidNULL, 0, DISPATCH_PROPERTYGET, &params, cast(VARIANT*)RT, &exception, &argErr);
			assert(res == S_OK, `Could not invoke COM Function cLayerSet.getEnabledChannels. Error `~to!string(res, 16));
			return RT;
		
		};
		

		// extern (Windows) void(VARIANT value)
		setEnabledChannels = cast(typeof(this.setEnabledChannels)) (VARIANT value) 
		{
		 
			EXCEPINFO exception;
			uint argErr = 0;
			auto iidNULL = IID_NULL;
			auto RT = new SafeVariantPtr();
			VARIANT[1] paramVars;
			DISPPARAMS params = {rgvarg: paramVars.ptr, cArgs: 1, cNamedArgs: 0};
			auto ID = COMInterface[`EnabledChannels`].ID;
			paramVars[0] = value;
			auto res = cLayerSet.iDispatch.Invoke(cast(int)ID, &iidNULL, 0, DISPATCH_PROPERTYPUT, &params, cast(VARIANT*)RT, &exception, &argErr);
			assert(res == S_OK, `Could not invoke COM Function cLayerSet.setEnabledChannels. Error `~to!string(res, 16));
		
		};
		

		// extern (Windows) iLayers()
		Layers = cast(typeof(this.Layers)) () 
		{
		 	auto key = `LayerSet.Layers`;
		
			EXCEPINFO exception;
			uint argErr = 0;
			auto iidNULL = IID_NULL;
			auto RT = new SafeVariantPtr();
			DISPPARAMS params = {rgvarg: null, cArgs: 0, cNamedArgs: 0};
			auto ID = COMInterface[`Layers`].ID;
			auto res = cLayerSet.iDispatch.Invoke(cast(int)ID, &iidNULL, 0, DISPATCH_PROPERTYGET, &params, cast(VARIANT*)RT, &exception, &argErr);
			assert(res == S_OK, `Could not invoke COM Function cLayerSet.Layers. Error `~to!string(res, 16));
			return cast(iLayers)(RT.punkVal);
		
		};
		

		// extern (Windows) iLayerSets()
		LayerSets = cast(typeof(this.LayerSets)) () 
		{
		 	auto key = `LayerSet.LayerSets`;
		
			EXCEPINFO exception;
			uint argErr = 0;
			auto iidNULL = IID_NULL;
			auto RT = new SafeVariantPtr();
			DISPPARAMS params = {rgvarg: null, cArgs: 0, cNamedArgs: 0};
			auto ID = COMInterface[`LayerSets`].ID;
			auto res = cLayerSet.iDispatch.Invoke(cast(int)ID, &iidNULL, 0, DISPATCH_PROPERTYGET, &params, cast(VARIANT*)RT, &exception, &argErr);
			assert(res == S_OK, `Could not invoke COM Function cLayerSet.LayerSets. Error `~to!string(res, 16));
			return cast(iLayerSets)(RT.punkVal);
		
		};
		

		// extern (Windows) iArtLayers()
		ArtLayers = cast(typeof(this.ArtLayers)) () 
		{
		 	auto key = `LayerSet.ArtLayers`;
		
			EXCEPINFO exception;
			uint argErr = 0;
			auto iidNULL = IID_NULL;
			auto RT = new SafeVariantPtr();
			DISPPARAMS params = {rgvarg: null, cArgs: 0, cNamedArgs: 0};
			auto ID = COMInterface[`ArtLayers`].ID;
			auto res = cLayerSet.iDispatch.Invoke(cast(int)ID, &iidNULL, 0, DISPATCH_PROPERTYGET, &params, cast(VARIANT*)RT, &exception, &argErr);
			assert(res == S_OK, `Could not invoke COM Function cLayerSet.ArtLayers. Error `~to!string(res, 16));
			return cast(iArtLayers)(RT.punkVal);
		
		};
		

		// extern (Windows) IDispatch()
		Layer = cast(typeof(this.Layer)) () 
		{
		 	auto key = `LayerSet.Dispatch`;
		
			EXCEPINFO exception;
			uint argErr = 0;
			auto iidNULL = IID_NULL;
			auto RT = new SafeVariantPtr();
			DISPPARAMS params = {rgvarg: null, cArgs: 0, cNamedArgs: 0};
			auto ID = COMInterface[`Layer`].ID;
			auto res = cLayerSet.iDispatch.Invoke(cast(int)ID, &iidNULL, 0, DISPATCH_PROPERTYGET, &params, cast(VARIANT*)RT, &exception, &argErr);
			assert(res == S_OK, `Could not invoke COM Function cLayerSet.Layer. Error `~to!string(res, 16));
			return cast(IDispatch)(RT.pdispVal);
		
		};
		

		// extern (Windows) wchar*()
		getName = cast(typeof(this.getName)) () 
		{
		 
			EXCEPINFO exception;
			uint argErr = 0;
			auto iidNULL = IID_NULL;
			auto RT = new SafeVariantPtr();
			DISPPARAMS params = {rgvarg: null, cArgs: 0, cNamedArgs: 0};
			auto ID = COMInterface[`Name`].ID;
			auto res = cLayerSet.iDispatch.Invoke(cast(int)ID, &iidNULL, 0, DISPATCH_PROPERTYGET, &params, cast(VARIANT*)RT, &exception, &argErr);
			assert(res == S_OK, `Could not invoke COM Function cLayerSet.getName. Error `~to!string(res, 16));
			return cast(wchar*)(RT.bstrVal);
		
		};
		

		// extern (Windows) void(wchar* value)
		setName = cast(typeof(this.setName)) (wchar* value) 
		{
		 
			EXCEPINFO exception;
			uint argErr = 0;
			auto iidNULL = IID_NULL;
			auto RT = new SafeVariantPtr();
			VARIANT[1] paramVars;
			DISPPARAMS params = {rgvarg: paramVars.ptr, cArgs: 1, cNamedArgs: 0};
			auto ID = COMInterface[`Name`].ID;
			paramVars[0].vt = 8;
			paramVars[0].bstrVal = value;
			scope(exit) VariantClear(&paramVars[0]);
			auto res = cLayerSet.iDispatch.Invoke(cast(int)ID, &iidNULL, 0, DISPATCH_PROPERTYPUT, &params, cast(VARIANT*)RT, &exception, &argErr);
			assert(res == S_OK, `Could not invoke COM Function cLayerSet.setName. Error `~to!string(res, 16));
		
		};
		

		// extern (Windows) bool()
		getAllLocked = cast(typeof(this.getAllLocked)) () 
		{
		 
			EXCEPINFO exception;
			uint argErr = 0;
			auto iidNULL = IID_NULL;
			auto RT = new SafeVariantPtr();
			DISPPARAMS params = {rgvarg: null, cArgs: 0, cNamedArgs: 0};
			auto ID = COMInterface[`AllLocked`].ID;
			auto res = cLayerSet.iDispatch.Invoke(cast(int)ID, &iidNULL, 0, DISPATCH_PROPERTYGET, &params, cast(VARIANT*)RT, &exception, &argErr);
			assert(res == S_OK, `Could not invoke COM Function cLayerSet.getAllLocked. Error `~to!string(res, 16));
			return cast(bool)(RT.intVal);
		
		};
		

		// extern (Windows) void(bool value)
		setAllLocked = cast(typeof(this.setAllLocked)) (bool value) 
		{
		 
			EXCEPINFO exception;
			uint argErr = 0;
			auto iidNULL = IID_NULL;
			auto RT = new SafeVariantPtr();
			VARIANT[1] paramVars;
			DISPPARAMS params = {rgvarg: paramVars.ptr, cArgs: 1, cNamedArgs: 0};
			auto ID = COMInterface[`AllLocked`].ID;
			paramVars[0].vt = 11;
			paramVars[0].intVal = value;
			scope(exit) VariantClear(&paramVars[0]);
			auto res = cLayerSet.iDispatch.Invoke(cast(int)ID, &iidNULL, 0, DISPATCH_PROPERTYPUT, &params, cast(VARIANT*)RT, &exception, &argErr);
			assert(res == S_OK, `Could not invoke COM Function cLayerSet.setAllLocked. Error `~to!string(res, 16));
		
		};
		

		// extern (Windows) PsBlendMode()
		getBlendMode = cast(typeof(this.getBlendMode)) () 
		{
		 
			EXCEPINFO exception;
			uint argErr = 0;
			auto iidNULL = IID_NULL;
			auto RT = new SafeVariantPtr();
			DISPPARAMS params = {rgvarg: null, cArgs: 0, cNamedArgs: 0};
			auto ID = COMInterface[`BlendMode`].ID;
			auto res = cLayerSet.iDispatch.Invoke(cast(int)ID, &iidNULL, 0, DISPATCH_PROPERTYGET, &params, cast(VARIANT*)RT, &exception, &argErr);
			assert(res == S_OK, `Could not invoke COM Function cLayerSet.getBlendMode. Error `~to!string(res, 16));
			return cast(PsBlendMode)(RT.lVal);
		
		};
		

		// extern (Windows) void(PsBlendMode value)
		setBlendMode = cast(typeof(this.setBlendMode)) (PsBlendMode value) 
		{
		 
			EXCEPINFO exception;
			uint argErr = 0;
			auto iidNULL = IID_NULL;
			auto RT = new SafeVariantPtr();
			VARIANT[1] paramVars;
			DISPPARAMS params = {rgvarg: paramVars.ptr, cArgs: 1, cNamedArgs: 0};
			auto ID = COMInterface[`BlendMode`].ID;
			paramVars[0].vt = 22;
			paramVars[0].intVal = value;
			scope(exit) VariantClear(&paramVars[0]);
			auto res = cLayerSet.iDispatch.Invoke(cast(int)ID, &iidNULL, 0, DISPATCH_PROPERTYPUT, &params, cast(VARIANT*)RT, &exception, &argErr);
			assert(res == S_OK, `Could not invoke COM Function cLayerSet.setBlendMode. Error `~to!string(res, 16));
		
		};
		

		// extern (Windows) VARIANT()
		LinkedLayers = cast(typeof(this.LinkedLayers)) () 
		{
		 
			EXCEPINFO exception;
			uint argErr = 0;
			auto iidNULL = IID_NULL;
			auto RT = new SafeVariantPtr();
			DISPPARAMS params = {rgvarg: null, cArgs: 0, cNamedArgs: 0};
			auto ID = COMInterface[`LinkedLayers`].ID;
			auto res = cLayerSet.iDispatch.Invoke(cast(int)ID, &iidNULL, 0, DISPATCH_PROPERTYGET, &params, cast(VARIANT*)RT, &exception, &argErr);
			assert(res == S_OK, `Could not invoke COM Function cLayerSet.LinkedLayers. Error `~to!string(res, 16));
			return RT;
		
		};
		

		// extern (Windows) double()
		getOpacity = cast(typeof(this.getOpacity)) () 
		{
		 
			EXCEPINFO exception;
			uint argErr = 0;
			auto iidNULL = IID_NULL;
			auto RT = new SafeVariantPtr();
			DISPPARAMS params = {rgvarg: null, cArgs: 0, cNamedArgs: 0};
			auto ID = COMInterface[`Opacity`].ID;
			auto res = cLayerSet.iDispatch.Invoke(cast(int)ID, &iidNULL, 0, DISPATCH_PROPERTYGET, &params, cast(VARIANT*)RT, &exception, &argErr);
			assert(res == S_OK, `Could not invoke COM Function cLayerSet.getOpacity. Error `~to!string(res, 16));
			return cast(double)(RT.dblVal);
		
		};
		

		// extern (Windows) void(double value)
		setOpacity = cast(typeof(this.setOpacity)) (double value) 
		{
		 
			EXCEPINFO exception;
			uint argErr = 0;
			auto iidNULL = IID_NULL;
			auto RT = new SafeVariantPtr();
			VARIANT[1] paramVars;
			DISPPARAMS params = {rgvarg: paramVars.ptr, cArgs: 1, cNamedArgs: 0};
			auto ID = COMInterface[`Opacity`].ID;
			paramVars[0].vt = 5;
			paramVars[0].dblVal = value;
			scope(exit) VariantClear(&paramVars[0]);
			auto res = cLayerSet.iDispatch.Invoke(cast(int)ID, &iidNULL, 0, DISPATCH_PROPERTYPUT, &params, cast(VARIANT*)RT, &exception, &argErr);
			assert(res == S_OK, `Could not invoke COM Function cLayerSet.setOpacity. Error `~to!string(res, 16));
		
		};
		

		// extern (Windows) bool()
		getVisible = cast(typeof(this.getVisible)) () 
		{
		 
			EXCEPINFO exception;
			uint argErr = 0;
			auto iidNULL = IID_NULL;
			auto RT = new SafeVariantPtr();
			DISPPARAMS params = {rgvarg: null, cArgs: 0, cNamedArgs: 0};
			auto ID = COMInterface[`Visible`].ID;
			auto res = cLayerSet.iDispatch.Invoke(cast(int)ID, &iidNULL, 0, DISPATCH_PROPERTYGET, &params, cast(VARIANT*)RT, &exception, &argErr);
			assert(res == S_OK, `Could not invoke COM Function cLayerSet.getVisible. Error `~to!string(res, 16));
			return cast(bool)(RT.intVal);
		
		};
		

		// extern (Windows) void(bool value)
		setVisible = cast(typeof(this.setVisible)) (bool value) 
		{
		 
			EXCEPINFO exception;
			uint argErr = 0;
			auto iidNULL = IID_NULL;
			auto RT = new SafeVariantPtr();
			VARIANT[1] paramVars;
			DISPPARAMS params = {rgvarg: paramVars.ptr, cArgs: 1, cNamedArgs: 0};
			auto ID = COMInterface[`Visible`].ID;
			paramVars[0].vt = 11;
			paramVars[0].intVal = value;
			scope(exit) VariantClear(&paramVars[0]);
			auto res = cLayerSet.iDispatch.Invoke(cast(int)ID, &iidNULL, 0, DISPATCH_PROPERTYPUT, &params, cast(VARIANT*)RT, &exception, &argErr);
			assert(res == S_OK, `Could not invoke COM Function cLayerSet.setVisible. Error `~to!string(res, 16));
		
		};
		

		// extern (Windows) int()
		id = cast(typeof(this.id)) () 
		{
		 
			EXCEPINFO exception;
			uint argErr = 0;
			auto iidNULL = IID_NULL;
			auto RT = new SafeVariantPtr();
			DISPPARAMS params = {rgvarg: null, cArgs: 0, cNamedArgs: 0};
			auto ID = COMInterface[`id`].ID;
			auto res = cLayerSet.iDispatch.Invoke(cast(int)ID, &iidNULL, 0, DISPATCH_PROPERTYGET, &params, cast(VARIANT*)RT, &exception, &argErr);
			assert(res == S_OK, `Could not invoke COM Function cLayerSet.id. Error `~to!string(res, 16));
			return cast(int)(RT.lVal);
		
		};
		

		// extern (Windows) int()
		ItemIndex = cast(typeof(this.ItemIndex)) () 
		{
		 
			EXCEPINFO exception;
			uint argErr = 0;
			auto iidNULL = IID_NULL;
			auto RT = new SafeVariantPtr();
			DISPPARAMS params = {rgvarg: null, cArgs: 0, cNamedArgs: 0};
			auto ID = COMInterface[`ItemIndex`].ID;
			auto res = cLayerSet.iDispatch.Invoke(cast(int)ID, &iidNULL, 0, DISPATCH_PROPERTYGET, &params, cast(VARIANT*)RT, &exception, &argErr);
			assert(res == S_OK, `Could not invoke COM Function cLayerSet.ItemIndex. Error `~to!string(res, 16));
			return cast(int)(RT.lVal);
		
		};
		

		// extern (Windows) PsLayerType()
		LayerType = cast(typeof(this.LayerType)) () 
		{
		 
			EXCEPINFO exception;
			uint argErr = 0;
			auto iidNULL = IID_NULL;
			auto RT = new SafeVariantPtr();
			DISPPARAMS params = {rgvarg: null, cArgs: 0, cNamedArgs: 0};
			auto ID = COMInterface[`LayerType`].ID;
			auto res = cLayerSet.iDispatch.Invoke(cast(int)ID, &iidNULL, 0, DISPATCH_PROPERTYGET, &params, cast(VARIANT*)RT, &exception, &argErr);
			assert(res == S_OK, `Could not invoke COM Function cLayerSet.LayerType. Error `~to!string(res, 16));
			return cast(PsLayerType)(RT.lVal);
		
		};
		

		// extern (Windows) iArtLayer()
		ArtLayer = cast(typeof(this.ArtLayer)) () 
		{
		 	auto key = `LayerSet.ArtLayer`;
			if (auto v = key in cApplication.CachedInterfaces)
			{
				return cast(cArtLayer)*v;
			}
		
			EXCEPINFO exception;
			uint argErr = 0;
			auto iidNULL = IID_NULL;
			auto RT = new SafeVariantPtr();
			DISPPARAMS params = {rgvarg: null, cArgs: 0, cNamedArgs: 0};
			auto ID = COMInterface[`ArtLayer`].ID;
			auto res = cLayerSet.iDispatch.Invoke(cast(int)ID, &iidNULL, 0, DISPATCH_PROPERTYGET, &params, cast(VARIANT*)RT, &exception, &argErr);
			assert(res == S_OK, `Could not invoke COM Function cLayerSet.ArtLayer. Error `~to!string(res, 16));
			if (cApplication.Cache)
			{
				if (auto v = key in cApplication.CachedInterfaces)
				{
					(cast(cArtLayer)v).iDispatch = cast(IDispatch)RT.punkVal;
					return cast(cArtLayer)*v;
				}
			}
			auto _class = new cArtLayer(true, cast(IDispatch)(RT.punkVal), this.iDispatch);
			cApplication.CachedInterfaces[key] = _class;
			return _class;
		
		};
		

		// extern (Windows) iLayerSet()
		LayerSet = cast(typeof(this.LayerSet)) () 
		{
		 	auto key = `LayerSet.LayerSet`;
			if (auto v = key in cApplication.CachedInterfaces)
			{
				return cast(cLayerSet)*v;
			}
		
			EXCEPINFO exception;
			uint argErr = 0;
			auto iidNULL = IID_NULL;
			auto RT = new SafeVariantPtr();
			DISPPARAMS params = {rgvarg: null, cArgs: 0, cNamedArgs: 0};
			auto ID = COMInterface[`LayerSet`].ID;
			auto res = cLayerSet.iDispatch.Invoke(cast(int)ID, &iidNULL, 0, DISPATCH_PROPERTYGET, &params, cast(VARIANT*)RT, &exception, &argErr);
			assert(res == S_OK, `Could not invoke COM Function cLayerSet.LayerSet. Error `~to!string(res, 16));
			if (cApplication.Cache)
			{
				if (auto v = key in cApplication.CachedInterfaces)
				{
					(cast(cLayerSet)v).iDispatch = cast(IDispatch)RT.punkVal;
					return cast(cLayerSet)*v;
				}
			}
			auto _class = new cLayerSet(true, cast(IDispatch)(RT.punkVal), this.iDispatch);
			cApplication.CachedInterfaces[key] = _class;
			return _class;
		
		};
		

		// extern (Windows) VARIANT()
		Bounds = cast(typeof(this.Bounds)) () 
		{
		 
			EXCEPINFO exception;
			uint argErr = 0;
			auto iidNULL = IID_NULL;
			auto RT = new SafeVariantPtr();
			DISPPARAMS params = {rgvarg: null, cArgs: 0, cNamedArgs: 0};
			auto ID = COMInterface[`Bounds`].ID;
			auto res = cLayerSet.iDispatch.Invoke(cast(int)ID, &iidNULL, 0, DISPATCH_PROPERTYGET, &params, cast(VARIANT*)RT, &exception, &argErr);
			assert(res == S_OK, `Could not invoke COM Function cLayerSet.Bounds. Error `~to!string(res, 16));
			return RT;
		
		};
		

		// extern (Windows) iApplication()
		Application = cast(typeof(this.Application)) () 
		{
		 	auto key = `LayerSet.Application`;
			if (auto v = key in cApplication.CachedInterfaces)
			{
				return cast(cApplication)*v;
			}
		
			EXCEPINFO exception;
			uint argErr = 0;
			auto iidNULL = IID_NULL;
			auto RT = new SafeVariantPtr();
			DISPPARAMS params = {rgvarg: null, cArgs: 0, cNamedArgs: 0};
			auto ID = COMInterface[`Application`].ID;
			auto res = cLayerSet.iDispatch.Invoke(cast(int)ID, &iidNULL, 0, DISPATCH_PROPERTYGET, &params, cast(VARIANT*)RT, &exception, &argErr);
			assert(res == S_OK, `Could not invoke COM Function cLayerSet.Application. Error `~to!string(res, 16));
			if (cApplication.Cache)
			{
				if (auto v = key in cApplication.CachedInterfaces)
				{
					(cast(cApplication)v).iDispatch = cast(IDispatch)RT.punkVal;
					return cast(cApplication)*v;
				}
			}
			auto _class = new cApplication(true, cast(IDispatch)(RT.punkVal), this.iDispatch);
			cApplication.CachedInterfaces[key] = _class;
			return _class;
		
		};
		

		// extern (Windows) IDispatch()
		Parent = cast(typeof(this.Parent)) () 
		{
		 	auto key = `LayerSet.Dispatch`;
		
			EXCEPINFO exception;
			uint argErr = 0;
			auto iidNULL = IID_NULL;
			auto RT = new SafeVariantPtr();
			DISPPARAMS params = {rgvarg: null, cArgs: 0, cNamedArgs: 0};
			auto ID = COMInterface[`Parent`].ID;
			auto res = cLayerSet.iDispatch.Invoke(cast(int)ID, &iidNULL, 0, DISPATCH_PROPERTYGET, &params, cast(VARIANT*)RT, &exception, &argErr);
			assert(res == S_OK, `Could not invoke COM Function cLayerSet.Parent. Error `~to!string(res, 16));
			return cast(IDispatch)(RT.pdispVal);
		
		};
		

		// extern (Windows) iArtLayer()
		Merge = cast(typeof(this.Merge)) () 
		{
		 	auto key = `LayerSet.ArtLayer`;
			if (auto v = key in cApplication.CachedInterfaces)
			{
				return cast(cArtLayer)*v;
			}
		
			EXCEPINFO exception;
			uint argErr = 0;
			auto iidNULL = IID_NULL;
			auto RT = new SafeVariantPtr();
			DISPPARAMS params = {rgvarg: null, cArgs: 0, cNamedArgs: 0};
			auto ID = COMInterface[`Merge`].ID;
			auto res = cLayerSet.iDispatch.Invoke(cast(int)ID, &iidNULL, 0, DISPATCH_PROPERTYGET, &params, cast(VARIANT*)RT, &exception, &argErr);
			assert(res == S_OK, `Could not invoke COM Function cLayerSet.Merge. Error `~to!string(res, 16));
			if (cApplication.Cache)
			{
				if (auto v = key in cApplication.CachedInterfaces)
				{
					(cast(cArtLayer)v).iDispatch = cast(IDispatch)RT.punkVal;
					return cast(cArtLayer)*v;
				}
			}
			auto _class = new cArtLayer(true, cast(IDispatch)(RT.punkVal), this.iDispatch);
			cApplication.CachedInterfaces[key] = _class;
			return _class;
		
		};
		

		// extern (Windows) void()
		Unlink = cast(typeof(this.Unlink)) () 
		{
		 
			EXCEPINFO exception;
			uint argErr = 0;
			auto iidNULL = IID_NULL;
			auto RT = new SafeVariantPtr();
			DISPPARAMS params = {rgvarg: null, cArgs: 0, cNamedArgs: 0};
			auto ID = COMInterface[`Unlink`].ID;
			auto res = cLayerSet.iDispatch.Invoke(cast(int)ID, &iidNULL, 0, DISPATCH_PROPERTYGET, &params, cast(VARIANT*)RT, &exception, &argErr);
			assert(res == S_OK, `Could not invoke COM Function cLayerSet.Unlink. Error `~to!string(res, 16));
		
		};
		

		// extern (Windows) void(IDispatch With)
		Link = cast(typeof(this.Link)) (IDispatch With) 
		{
		 
			EXCEPINFO exception;
			uint argErr = 0;
			auto iidNULL = IID_NULL;
			auto RT = new SafeVariantPtr();
			VARIANT[1] paramVars;
			DISPPARAMS params = {rgvarg: paramVars.ptr, cArgs: 1, cNamedArgs: 0};
			auto ID = COMInterface[`Link`].ID;
			paramVars[0].vt = 13;
			paramVars[0].punkVal = With;
			scope(exit) VariantClear(&paramVars[0]);
			auto res = cLayerSet.iDispatch.Invoke(cast(int)ID, &iidNULL, 0, DISPATCH_METHOD, &params, cast(VARIANT*)RT, &exception, &argErr);
			assert(res == S_OK, `Could not invoke COM Function cLayerSet.Link. Error `~to!string(res, 16));
		
		};
		

		// extern (Windows) void(VARIANT DeltaX, VARIANT DeltaY)
		Translate = cast(typeof(this.Translate)) (VARIANT DeltaX, VARIANT DeltaY) 
		{
		 
			EXCEPINFO exception;
			uint argErr = 0;
			auto iidNULL = IID_NULL;
			auto RT = new SafeVariantPtr();
			VARIANT[2] paramVars;
			DISPPARAMS params = {rgvarg: paramVars.ptr, cArgs: 2, cNamedArgs: 0};
			auto ID = COMInterface[`Translate`].ID;
			paramVars[1] = DeltaX;
			paramVars[0] = DeltaY;
			auto res = cLayerSet.iDispatch.Invoke(cast(int)ID, &iidNULL, 0, DISPATCH_METHOD, &params, cast(VARIANT*)RT, &exception, &argErr);
			assert(res == S_OK, `Could not invoke COM Function cLayerSet.Translate. Error `~to!string(res, 16));
		
		};
		

		// extern (Windows) void(double Angle, VARIANT Anchor)
		Rotate = cast(typeof(this.Rotate)) (double Angle, VARIANT Anchor) 
		{
		 
			EXCEPINFO exception;
			uint argErr = 0;
			auto iidNULL = IID_NULL;
			auto RT = new SafeVariantPtr();
			VARIANT[2] paramVars;
			DISPPARAMS params = {rgvarg: paramVars.ptr, cArgs: 2, cNamedArgs: 0};
			auto ID = COMInterface[`Rotate`].ID;
			paramVars[1].vt = 5;
			paramVars[1].dblVal = Angle;
			scope(exit) VariantClear(&paramVars[1]);
			paramVars[0] = Anchor;
			auto res = cLayerSet.iDispatch.Invoke(cast(int)ID, &iidNULL, 0, DISPATCH_METHOD, &params, cast(VARIANT*)RT, &exception, &argErr);
			assert(res == S_OK, `Could not invoke COM Function cLayerSet.Rotate. Error `~to!string(res, 16));
		
		};
		

		// extern (Windows) void(VARIANT Horizontal, VARIANT Vertical, VARIANT Anchor)
		Resize = cast(typeof(this.Resize)) (VARIANT Horizontal, VARIANT Vertical, VARIANT Anchor) 
		{
		 
			EXCEPINFO exception;
			uint argErr = 0;
			auto iidNULL = IID_NULL;
			auto RT = new SafeVariantPtr();
			VARIANT[3] paramVars;
			DISPPARAMS params = {rgvarg: paramVars.ptr, cArgs: 3, cNamedArgs: 0};
			auto ID = COMInterface[`Resize`].ID;
			paramVars[2] = Horizontal;
			paramVars[1] = Vertical;
			paramVars[0] = Anchor;
			auto res = cLayerSet.iDispatch.Invoke(cast(int)ID, &iidNULL, 0, DISPATCH_METHOD, &params, cast(VARIANT*)RT, &exception, &argErr);
			assert(res == S_OK, `Could not invoke COM Function cLayerSet.Resize. Error `~to!string(res, 16));
		
		};
		

		// extern (Windows) void(IDispatch Container)
		MoveToBeginning = cast(typeof(this.MoveToBeginning)) (IDispatch Container) 
		{
		 
			EXCEPINFO exception;
			uint argErr = 0;
			auto iidNULL = IID_NULL;
			auto RT = new SafeVariantPtr();
			VARIANT[1] paramVars;
			DISPPARAMS params = {rgvarg: paramVars.ptr, cArgs: 1, cNamedArgs: 0};
			auto ID = COMInterface[`MoveToBeginning`].ID;
			paramVars[0].vt = 13;
			paramVars[0].punkVal = Container;
			scope(exit) VariantClear(&paramVars[0]);
			auto res = cLayerSet.iDispatch.Invoke(cast(int)ID, &iidNULL, 0, DISPATCH_METHOD, &params, cast(VARIANT*)RT, &exception, &argErr);
			assert(res == S_OK, `Could not invoke COM Function cLayerSet.MoveToBeginning. Error `~to!string(res, 16));
		
		};
		

		// extern (Windows) void(IDispatch Container)
		MoveToEnd = cast(typeof(this.MoveToEnd)) (IDispatch Container) 
		{
		 
			EXCEPINFO exception;
			uint argErr = 0;
			auto iidNULL = IID_NULL;
			auto RT = new SafeVariantPtr();
			VARIANT[1] paramVars;
			DISPPARAMS params = {rgvarg: paramVars.ptr, cArgs: 1, cNamedArgs: 0};
			auto ID = COMInterface[`MoveToEnd`].ID;
			paramVars[0].vt = 13;
			paramVars[0].punkVal = Container;
			scope(exit) VariantClear(&paramVars[0]);
			auto res = cLayerSet.iDispatch.Invoke(cast(int)ID, &iidNULL, 0, DISPATCH_METHOD, &params, cast(VARIANT*)RT, &exception, &argErr);
			assert(res == S_OK, `Could not invoke COM Function cLayerSet.MoveToEnd. Error `~to!string(res, 16));
		
		};
		

		// extern (Windows) void(IDispatch RelativeObject)
		MoveBefore = cast(typeof(this.MoveBefore)) (IDispatch RelativeObject) 
		{
		 
			EXCEPINFO exception;
			uint argErr = 0;
			auto iidNULL = IID_NULL;
			auto RT = new SafeVariantPtr();
			VARIANT[1] paramVars;
			DISPPARAMS params = {rgvarg: paramVars.ptr, cArgs: 1, cNamedArgs: 0};
			auto ID = COMInterface[`MoveBefore`].ID;
			paramVars[0].vt = 13;
			paramVars[0].punkVal = RelativeObject;
			scope(exit) VariantClear(&paramVars[0]);
			auto res = cLayerSet.iDispatch.Invoke(cast(int)ID, &iidNULL, 0, DISPATCH_METHOD, &params, cast(VARIANT*)RT, &exception, &argErr);
			assert(res == S_OK, `Could not invoke COM Function cLayerSet.MoveBefore. Error `~to!string(res, 16));
		
		};
		

		// extern (Windows) void(IDispatch RelativeObject)
		MoveAfter = cast(typeof(this.MoveAfter)) (IDispatch RelativeObject) 
		{
		 
			EXCEPINFO exception;
			uint argErr = 0;
			auto iidNULL = IID_NULL;
			auto RT = new SafeVariantPtr();
			VARIANT[1] paramVars;
			DISPPARAMS params = {rgvarg: paramVars.ptr, cArgs: 1, cNamedArgs: 0};
			auto ID = COMInterface[`MoveAfter`].ID;
			paramVars[0].vt = 13;
			paramVars[0].punkVal = RelativeObject;
			scope(exit) VariantClear(&paramVars[0]);
			auto res = cLayerSet.iDispatch.Invoke(cast(int)ID, &iidNULL, 0, DISPATCH_METHOD, &params, cast(VARIANT*)RT, &exception, &argErr);
			assert(res == S_OK, `Could not invoke COM Function cLayerSet.MoveAfter. Error `~to!string(res, 16));
		
		};
		

		// extern (Windows) IDispatch(VARIANT RelativeObject, VARIANT InsertionLocation)
		Duplicate = cast(typeof(this.Duplicate)) (VARIANT RelativeObject, VARIANT InsertionLocation) 
		{
		 	auto key = `LayerSet.Dispatch`;
		
			EXCEPINFO exception;
			uint argErr = 0;
			auto iidNULL = IID_NULL;
			auto RT = new SafeVariantPtr();
			VARIANT[2] paramVars;
			DISPPARAMS params = {rgvarg: paramVars.ptr, cArgs: 2, cNamedArgs: 0};
			auto ID = COMInterface[`Duplicate`].ID;
			paramVars[1] = RelativeObject;
			paramVars[0] = InsertionLocation;
			auto res = cLayerSet.iDispatch.Invoke(cast(int)ID, &iidNULL, 0, DISPATCH_METHOD, &params, cast(VARIANT*)RT, &exception, &argErr);
			assert(res == S_OK, `Could not invoke COM Function cLayerSet.Duplicate. Error `~to!string(res, 16));
			return cast(IDispatch)(RT.pdispVal);
		
		};
		

		// extern (Windows) void(IDispatch RelativeObject, PsElementPlacement InsertionLocation)
		Move = cast(typeof(this.Move)) (IDispatch RelativeObject, PsElementPlacement InsertionLocation) 
		{
		 
			EXCEPINFO exception;
			uint argErr = 0;
			auto iidNULL = IID_NULL;
			auto RT = new SafeVariantPtr();
			VARIANT[2] paramVars;
			DISPPARAMS params = {rgvarg: paramVars.ptr, cArgs: 2, cNamedArgs: 0};
			auto ID = COMInterface[`Move`].ID;
			paramVars[1].vt = 13;
			paramVars[1].punkVal = RelativeObject;
			scope(exit) VariantClear(&paramVars[1]);
			paramVars[0].vt = 22;
			paramVars[0].intVal = InsertionLocation;
			scope(exit) VariantClear(&paramVars[0]);
			auto res = cLayerSet.iDispatch.Invoke(cast(int)ID, &iidNULL, 0, DISPATCH_METHOD, &params, cast(VARIANT*)RT, &exception, &argErr);
			assert(res == S_OK, `Could not invoke COM Function cLayerSet.Move. Error `~to!string(res, 16));
		
		};
		

		// extern (Windows) void()
		Delete = cast(typeof(this.Delete)) () 
		{
		 
			EXCEPINFO exception;
			uint argErr = 0;
			auto iidNULL = IID_NULL;
			auto RT = new SafeVariantPtr();
			DISPPARAMS params = {rgvarg: null, cArgs: 0, cNamedArgs: 0};
			auto ID = COMInterface[`Delete`].ID;
			auto res = cLayerSet.iDispatch.Invoke(cast(int)ID, &iidNULL, 0, DISPATCH_PROPERTYGET, &params, cast(VARIANT*)RT, &exception, &argErr);
			assert(res == S_OK, `Could not invoke COM Function cLayerSet.Delete. Error `~to!string(res, 16));
		
		};
		
	}
	~this(){ if (iDispatch) iDispatch.Release(); }
}

