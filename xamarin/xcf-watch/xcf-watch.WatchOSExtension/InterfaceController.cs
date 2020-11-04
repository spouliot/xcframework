using System;
using System.Runtime.InteropServices;

using Foundation;
using WatchKit;

namespace xcf_watch.WatchOSExtension {
	public partial class InterfaceController : WKInterfaceController {
		protected InterfaceController (IntPtr handle) : base (handle)
		{
			// Note: this .ctor should not contain any initialization logic.
		}

		[DllImport ("__Internal")]
		public static extern int theUltimateAnswer ();

		public override void Awake (NSObject context)
		{
			base.Awake (context);

			// project won't build until https://github.com/xamarin/xamarin-macios/issues/9949 is fixed
			Console.WriteLine ("{0} awake with context {1}", this, theUltimateAnswer ());
		}

		public override void WillActivate ()
		{
			// This method is called when the watch view controller is about to be visible to the user.
			Console.WriteLine ("{0} will activate", this);
		}

		public override void DidDeactivate ()
		{
			// This method is called when the watch view controller is no longer visible to the user.
			Console.WriteLine ("{0} did deactivate", this);
		}
	}
}

